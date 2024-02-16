from __future__ import annotations

from datetime import time, timezone
from typing import TYPE_CHECKING
from discord import Game
from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException


if TYPE_CHECKING:
    from ttinfo.core.bot import Bot

    from ...http import models


class SOTD(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")
        self.task.add_exception_type(TTInfoException)
        self.task.start()

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")
        if self.task.is_running():
            self.task.cancel()

    @tasks.loop(time=time(hour=1, tzinfo=timezone.utc))
    async def task(self):
        key = await self.bot.tycoon_client.get_donated_key(Server.main)
        request = await self.bot.tycoon_client.fetch_sotd(Server.main, key)
        self.bot.dispatch("sotd_change", request)

    @commands.Cog.listener("on_sotd_change")
    async def insert_sotd(self, payload: models.SOTD) -> None:
        await self.bot.pool.execute(
            "INSERT INTO sotd(date, aptitude, bonus) VALUES(now()::date, $1, $2)",
            payload.aptitude,
            payload.bonus,
        )

    @commands.Cog.listener("on_sotd_change")
    async def update_status(self, payload: models.SOTD) -> None:
        await self.bot.change_presence(activity=Game(name=f"SOTD: {payload.short} - {payload.bonus}%"))

    @task.before_loop
    async def wait_for_ready(self):
        return await self.bot.wait_until_ready()


async def setup(bot):
    await bot.add_cog(SOTD(bot))
