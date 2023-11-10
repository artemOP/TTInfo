# create task that loops and stores the results of fetch_players and fetch_positions
# subscribe to specific users to track and plot on demand

from __future__ import annotations

from typing import TYPE_CHECKING

from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException


if TYPE_CHECKING:
    from datetime import timedelta
    from typing import Literal, Optional
    from ttinfo.core.bot import Bot

    from ...http.models import Player


class Players(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")
        self.task.add_exception_type(TTInfoException)

        self.players: dict[Server, list[Player]] = {server: [] for server in Server}

        self.task.start()

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")
        if self.task.is_running():
            self.task.cancel()

    @tasks.loop(seconds=60)
    async def task(self):
        for server in Server:
            request = await self.bot.tycoon_client.fetch_players(server, force=True)
            for player in request.players:
                if player not in self.players[server]:
                    self.bot.dispatch("player_login", player)
                    self.players[server].append(player)

                await self.increment_playtime(server, player)

            for player in self.players[server]:
                if player not in request.players:
                    self.bot.dispatch("player_logout", player)
                    self.players[server].remove(player)

    async def increment_playtime(self, server: Server, player: Player) -> Optional[timedelta]:
        playtime: Optional[timedelta] = await self.bot.pool.execute(
            "INSERT INTO playtime(vrp_id, server, playtime, job, date_seen) VALUES($1, $2, '1 minute'::INTERVAL, $3, now()::DATE) ON CONFLICT(vrp_id, server, job, date_seen) DO UPDATE SET playtime = playtime.playtime + '1 minute'::INTERVAL RETURNING playtime.playtime",
            player.vrp_id,
            server.name,
            player.job,
        )
        return playtime

    async def update_aliases(self, player: Player) -> None:
        if not player.name:
            return
        await self.bot.pool.execute(
            "INSERT INTO aliases(vrp_id, name, last_seen) VALUES($1, $2, now()::DATE) ON CONFLICT(vrp_id, name) DO UPDATE SET last_seen = now()::DATE",
            player.vrp_id,
            player.name,
        )

    async def update_avatar(self, player: Player) -> None:
        await self.bot.pool.execute(
            "INSERT INTO avatars(vrp_id, url) VALUES($1, $2) ON CONFLICT(vrp_id) DO UPDATE SET url=EXCLUDED.url",
            player.vrp_id,
            player.avatar_url,
        )

    @commands.Cog.listener("on_player_login")
    async def on_player_login(self, player: Player) -> None:
        self.logger.debug(f"login: {player}")
        await self.update_aliases(player)
        await self.update_avatar(player)

    @commands.Cog.listener("on_player_logout")
    async def on_player_logout(self, player: Player) -> None:
        self.logger.debug(f"logout: {player}")

    @task.before_loop
    async def wait_for_ready(self):
        return await self.bot.wait_until_ready()


async def setup(bot):
    await bot.add_cog(Players(bot))
