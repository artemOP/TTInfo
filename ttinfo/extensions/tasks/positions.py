from __future__ import annotations

import asyncio
from typing import TYPE_CHECKING

from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from ...http.models import Coords, Position, Player


class Tasks(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)
        self.positions: dict[int, Coords] = {}

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")
        self.task.add_exception_type(TTInfoException)
        self.task.start()

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")
        if self.task.is_running():
            self.task.cancel()

    @tasks.loop(seconds=15)
    async def task(self):
        for server in Server:
            key = await self.bot.tycoon_client.get_donated_key(server)
            request = await self.bot.tycoon_client.fetch_positions(server, key)

            for position in request:
                await asyncio.sleep(0)
                last_known_position = self.positions.get(position.player.vrp_id, None)

                if last_known_position == position.position:
                    continue

                if not last_known_position:
                    await self.insert_position(server, position.player, position.position)
                    self.positions[position.player.vrp_id] = position.position
                    continue

                for historical_position in position.history:
                    if (
                        historical_position.index <= self.positions[position.player.vrp_id].index
                        or abs(historical_position.index - last_known_position.index) > 100
                    ):
                        continue
                    await self.insert_position(server, position.player, historical_position)

                self.positions[position.player.vrp_id] = position.history[-1] if position.history else position.position

    async def insert_position(self, server: Server, player: Player, coords: Coords):
        await self.bot.pool.execute(
            "INSERT INTO positions(vrp_id, server, position) VALUES($1, $2, $3)",
            player.vrp_id,
            server.name,
            (coords.x, coords.y, coords.z, coords.h),
        )
        self.logger.info(f"{player.name}: {coords}")

    @task.before_loop
    async def wait_for_ready(self):
        return await self.bot.wait_until_ready()


async def setup(bot):
    await bot.add_cog(Tasks(bot))
