from __future__ import annotations

from datetime import datetime
from typing import TYPE_CHECKING, Literal
from zoneinfo import ZoneInfo

from discord import app_commands, utils
from discord.app_commands import Range, Choice, Transform
from discord.ext import commands
from discord.interactions import Interaction

from .transformers import Timezone, Format

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
    ):
        """Generate a discord timestamp for a given time

        Args:
            interaction (Interaction[Bot]): _description_
            year (Range[int, 1970, 2100] | None, optional): The year
            month (Range[int, 1, 12] | None, optional): The month
            day (Range[int, 1, 31] | None, optional): The day
            hour (Range[int, 0, 23] | None, optional): The hour
            minute (Range[int, 0, 59] | None, optional): The mintue
            timezone (str | None, optional): The timezone
            format (TimestampStyle | None): The format to return the discord timestamp in
        """
        await interaction.followup.send(format, ephemeral=True)


async def setup(bot):
    await bot.add_cog(Timestamp(bot))
