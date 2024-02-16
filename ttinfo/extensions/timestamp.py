from __future__ import annotations

from datetime import datetime
from typing import TYPE_CHECKING, List
import zoneinfo

from discord import app_commands, utils
from discord.app_commands import Range, Choice, Transform, Transformer
from discord.ext import commands
from discord.interactions import Interaction

if TYPE_CHECKING:
    from discord import Interaction
    from ttinfo.core.bot import Bot


class Timezone(Transformer):

    async def autocomplete(
        self, interaction: Interaction[Bot], current: str | None = None
    ) -> List[Choice[str | int | float]]:
        if not current:
            return [Choice(name="Start typing to view options", value="FILLER")]
        return [
            Choice(name=value, value=value)
            for value in zoneinfo.available_timezones()
            if current.lower() in value.lower()
        ]

    async def transform(self, interaction: Interaction[Bot], value: str) -> zoneinfo.ZoneInfo:
        if value == "FILLER":
            return zoneinfo.ZoneInfo("GMT")
        return zoneinfo.ZoneInfo(value)


@app_commands.default_permissions()
@app_commands.guild_only()
class Timestamp(commands.Cog, name="template"):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    @app_commands.command(name="")
    @app_commands.choices(
        format=[
            Choice(name="Short Time (09:01)", value="t"),
            Choice(name="Long Time (09:01:00)", value="T"),
            Choice(name="Short Date (28/11/2018)", value="d"),
            Choice(name="Long Date (28 November 2018)", value="D"),
            Choice(name="Short Date/Time (28 November 2018 09:01)    DEFAULT", value="f"),
            Choice(name="Long Date/Time (Wednesday, 28 November 2018 09:01)", value="F"),
            Choice(name="Realteive Time (3 years ago)", value="R"),
        ]
    )
    async def to_timestamp(
        self,
        interaction: Interaction[Bot],
        year: Range[int, 1970, 2100] | None = None,
        month: Range[int, 1, 12] | None = None,
        day: Range[int, 1, 31] | None = None,
        hour: Range[int, 0, 23] | None = None,
        minute: Range[int, 0, 59] = 0,
        second: Range[int, 0, 59] = 0,
        timezone: Transform[zoneinfo.ZoneInfo, Timezone] | None = None,
        timestamp: int | None = None,
        format: Choice[str] | None = None,
    ):
        """Generate a discord timestamp for a given time

        Args:
            interaction (Interaction[Bot]): _description_
            year (Range[int, 1970, 2100] | None, optional): The year
            month (Range[int, 1, 12] | None, optional): The month
            day (Range[int, 1, 31] | None, optional): The day
            hour (Range[int, 0, 23] | None, optional): The hour
            minute (Range[int, 0, 59] | None, optional): The mintue
            second (Range[int, 0, 59] | None, optional): The second
            timezone (str | None, optional): The timezone
            timestamp (zoneinfo.ZoneInfo | None, optional): A unix timestamp
            format (Choice[int] | None, optional): The format to return the discord timestamp in
        """
        try:
            now = utils.utcnow()
            dt = datetime(
                year=year or now.year,
                month=month or now.month,
                day=day or now.day,
                hour=hour or now.hour,
                minute=minute,
                second=second,
                tzinfo=timezone,
            )
        except:
            await interaction.followup.send("Invalid parameters passed, please try again", ephemeral=True)

        unwrapped_format = None if not format else format.value
        stamp = utils.format_dt(dt, style=unwrapped_format)  # type: ignore
        await interaction.followup.send(stamp, ephemeral=True)


async def setup(bot):
    await bot.add_cog(Timestamp(bot))
