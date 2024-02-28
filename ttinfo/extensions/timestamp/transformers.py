from __future__ import annotations

from datetime import datetime
from typing import TYPE_CHECKING
import zoneinfo

from discord import utils
from discord.app_commands import Choice, Transformer
from discord import Interaction

if TYPE_CHECKING:
    from typing import Literal

    from discord import Interaction

    from ... import Bot


class Timezone(Transformer):

    async def autocomplete(self, interaction: Interaction[Bot], current: str | None = None) -> list[Choice[str]]:
        if not current:
            return [Choice(name="Start typing to view options", value="FILLER")]
        return [
            Choice(name=value, value=value)
            for value in zoneinfo.available_timezones()
            if current.lower() in value.lower()
        ][:25]

    async def transform(self, interaction: Interaction[Bot], value: str) -> zoneinfo.ZoneInfo:
        if value == "FILLER":
            return zoneinfo.ZoneInfo("GMT")
        return zoneinfo.ZoneInfo(value)


class Format(Transformer):
    TimestampStyle = ("f", "F", "d", "D", "t", "T", "R")

    async def get_dt(self, interaction: Interaction[Bot]) -> datetime | str:
        try:
            now = utils.utcnow()
            return datetime(
                year=getattr(interaction.namespace, "year", now.year),
                month=getattr(interaction.namespace, "month", now.month),
                day=getattr(interaction.namespace, "day", now.day),
                hour=getattr(interaction.namespace, "hour", now.hour),
                minute=getattr(interaction.namespace, "minute", now.minute),
                tzinfo=zoneinfo.ZoneInfo(getattr(interaction.namespace, "timezone", "GMT") or "GMT"),
            )
        except Exception as e:
            return str(e)

    async def autocomplete(self, interaction: Interaction[Bot], current: str) -> list[Choice[str]]:
        dt = await self.get_dt(interaction)
        if isinstance(dt, str):
            return [Choice(name=dt, value="FILLER")]
        return [
            Choice(name=f"Short Time ({dt.strftime('%H:%M')})", value="t"),
            Choice(name=f"Long Time ({dt.strftime('%H:%M:%S')})", value="T"),
            Choice(name=f"Short Date ({dt.strftime('%d/%m/%Y')})", value="d"),
            Choice(name=f"Long Date ({dt.strftime('%d %B %Y')})", value="D"),
            Choice(name=f"Short Date/Time ({dt.strftime('%d %B %Y %H:%M')})", value="f"),
            Choice(name=f"Long Date/Time ({dt.strftime('%A, %d %B %Y %H:%M')})", value="F"),
            Choice(name=f"Relative Time (3 years ago)", value="R"),
        ]

    async def transform(
        self,
        interaction: Interaction[Bot],
        value: Literal["f", "F", "d", "D", "t", "T", "R"] = "f",
    ) -> str:
        dt = await self.get_dt(interaction)
        if isinstance(dt, str):
            dt = utils.utcnow()

        if value not in self.TimestampStyle:
            return utils.format_dt(dt, style="f")
        else:
            return utils.format_dt(dt, style=value)
