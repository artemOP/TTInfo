# create task that loops and stores the results of fetch_players and fetch_positions
# subscribe to specific users to track and plot on demand

from __future__ import annotations

import logging
from typing import TYPE_CHECKING

from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from ...http.models import Coords


class Tasks(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.getChild(self.qualified_name)
        self.logger.setLevel(logging.DEBUG)
        self.positions: dict[int, Coords] = {}

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")
        self.task.add_exception_type(TTInfoException)
        self.task.start()

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")
        if self.task.is_running():
            self.task.cancel()

    @tasks.loop(seconds=5)
    async def task(self):
        for server in Server:
            key = await self.bot.tycoon_client.get_donated_key(server)
            request = await self.bot.tycoon_client.fetch_positions(server, key)
            for position in request:
                if self.positions.get(position.player.vrp_id, None) == position.position:
                    continue
                self.positions[position.player.vrp_id] = position.position
                await self.bot.pool.execute(
                    "INSERT INTO positions(vrp_id, server, position) VALUES($1, $2, $3)",
                    position.player.vrp_id,
                    server.name,
                    (position.position.x, position.position.y, position.position.z, position.position.h),
                )
                self.logger.debug(f"{position.player.name}: {position.position}")

    @task.before_loop
    async def wait_for_ready(self):
        return await self.bot.wait_until_ready()


async def setup(bot):
    await bot.add_cog(Tasks(bot))
