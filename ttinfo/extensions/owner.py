from __future__ import annotations

from logging import DEBUG, INFO
from typing import TYPE_CHECKING, Optional

import discord
from discord import app_commands
from discord.ext import commands

from ..core.utils import ButtonPaginatedEmbeds, to_codeblock

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from discord import Interaction


@app_commands.default_permissions()
@app_commands.guild_only()
class Owner(commands.GroupCog, name="owner"):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    @app_commands.command(name="debug")
    async def debug(self, interaction: Interaction, mode: Optional[bool] = None):
        """Toggles debug file logging and asyncio debug mode

        Args:
            interaction (Interaction): _description_
            mode (Optional[bool], optional): Optionally force setting. Toggles by default
        """
        current = self.bot.loop.get_debug()
        self.bot.loop.set_debug(mode if mode else not current)
        if current or mode is False:
            self.bot.log_handler.log.setLevel(INFO)
        else:
            self.bot.log_handler.log.setLevel(DEBUG)

        await interaction.followup.send(f"Debug mode has been set to: {not current}")

    @app_commands.command(name="dump")
    async def dump(self, interaction: Interaction, raw: Optional[bool] = False):
        """View log dump, either as a file dump or paginated

        Args:
            interaction (Interaction): _description_
            raw (Optional[bool], optional): Dump as file?. Defaults to False.
        """
        if raw:
            return await interaction.followup.send(file=discord.File(fp="ttinfo/logs/ttinfo.log"))

        descriptions = [""]
        with open("ttinfo/logs/ttinfo.log", "r") as f:
            for line in f.readlines():
                if len(descriptions[-1]) + len(line) > 3800:
                    descriptions.append("")

                descriptions[-1] = line + descriptions[-1]
            descriptions.reverse()

        embeds = [
            discord.Embed(
                title="Log dump",
                colour=discord.Colour.random(),
                description=to_codeblock(description, language="log"),
            )
            for description in descriptions
        ]
        view = ButtonPaginatedEmbeds(embeds)
        await interaction.followup.send(view=view, embed=embeds[0])
        view.response = await interaction.original_response()


async def setup(bot: Bot):
    guild = bot.env_values["discord_guild"]
    await bot.add_cog(Owner(bot), guild=discord.Object(id=guild))
