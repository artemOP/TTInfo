# create task that loops and stores the results of fetch_players and fetch_positions
# subscribe to specific users to track and plot on demand

from __future__ import annotations

from typing import TYPE_CHECKING

from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot


class Tasks(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.getChild(self.qualified_name)

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
            request = await self.bot.tycoon_client.fetch_positions(server, self.bot.tycoon_client.fallback_key)
            print(request[0].player.name, request[0].position)

    @task.before_loop
    async def wait_for_ready(self):
        return await self.bot.wait_until_ready()


async def setup(bot):
    await bot.add_cog(Tasks(bot))
