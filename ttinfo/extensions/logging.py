from __future__ import annotations

from datetime import datetime
import textwrap
from typing import TYPE_CHECKING

import discord
from discord.ext import commands, tasks
from discord.utils import format_dt, MISSING

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from discord import User


class Logging(commands.Cog):
    attributes: dict[str, str] = {"INFO": "\U00002139\U0000fe0f", "WARNING": "\U000026a0\U0000fe0f"}

    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

        self.user: User | None = MISSING

        if url := self.bot.env_values.get("discord_webhook"):
            self.webhook = discord.Webhook.from_url(url, session=bot.session, client=bot)
        else:
            bot.log_handler.warning("Not enabling webhook logging due to missing webhook URL")
            self.webhook = None

    async def cog_load(self) -> None:
        if self.webhook:
            self.logging_loop.start()
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        if self.webhook:
            self.logging_loop.cancel
        self.logger.info(f"{self.qualified_name} cog unloaded")

    @tasks.loop(seconds=0)
    async def logging_loop(self) -> None:
        assert self.webhook

        to_log = await self.bot.logging_queue.get()
        if "rate limited" in to_log.message:
            return
        emoji = self.attributes.get(to_log.levelname, "\N{CROSS MARK}")
        dt = datetime.utcfromtimestamp(to_log.created)

        message = textwrap.shorten(f"{emoji} {format_dt(dt)}\n{to_log.message}", width=1990)
        embed = to_log.__dict__.get("embed") or MISSING

        if self.bot.user:
            avatar_url = self.bot.user.display_avatar.url
        else:
            avatar_url = MISSING
        await self.webhook.send(message, username="TT Info Logging", avatar_url=avatar_url, embed=embed)


async def setup(bot: Bot):
    await bot.add_cog(Logging(bot))
