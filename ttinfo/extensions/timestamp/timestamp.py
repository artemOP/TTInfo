from __future__ import annotations

from datetime import datetime
from typing import TYPE_CHECKING, Literal
from zoneinfo import ZoneInfo

from discord import app_commands, TextChannel
from discord.app_commands import Range, Transform
from discord.ext import commands
from discord.interactions import Interaction

from .transformers import Timezone, Format
from ...core.utils import to_codeblock

TimestampStyle = Literal["f", "F", "d", "D", "t", "T", "R"]
if TYPE_CHECKING:
    from discord import Interaction
    from ttinfo.core.bot import Bot


@app_commands.guild_only()
class Timestamp(commands.Cog):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    async def send(self, interaction: Interaction, message: str, ephemeral: bool = True) -> None:
        if ephemeral:
            return await interaction.followup.send(message)
        else:
            await interaction.followup.send("Message sent")
            assert isinstance(interaction.channel, TextChannel)
            await interaction.channel.send(message)

    @app_commands.command(name="timestamp")
    async def to_timestamp(
        self,
        interaction: Interaction[Bot],
        format: Transform[str, Format],
        year: Range[int, 1970, 2100] | None = None,
        month: Range[int, 1, 12] | None = None,
        day: Range[int, 1, 31] | None = None,
        hour: Range[int, 0, 23] | None = None,
        minute: Range[int, 0, 59] = 0,
        timezone: Transform[ZoneInfo, Timezone] | None = None,
        ephemeral: bool = True,
        raw: bool = False,
    ):
        """Generate a discord timestamp for a given time

        Args:
            interaction (Interaction[Bot]): ...
            year (Range[int, 1970, 2100] | None): The year
            month (Range[int, 1, 12] | None): The month
            day (Range[int, 1, 31] | None): The day
            hour (Range[int, 0, 23] | None): The hour
            minute (Range[int, 0, 59] | None): The mintue
            timezone (str | None): The timezone
            format (TimestampStyle | None): The format to return the discord timestamp in
            ephemeral (bool): Set False to make visible to all
            raw (bool): Set True to return as a copyable code block
        """
        if raw:
            await self.send(interaction, to_codeblock(format, language="MD", escape_md=False), ephemeral=ephemeral)
        else:
            await self.send(interaction, format, ephemeral=ephemeral)


async def setup(bot):
    await bot.add_cog(Timestamp(bot))
