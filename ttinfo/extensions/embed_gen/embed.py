from __future__ import annotations

from typing import TYPE_CHECKING

from discord import app_commands, Embed
from discord.ext import commands

from . import Builder

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from discord import Interaction, Member


@app_commands.guild_only()
class EmbedBuilder(commands.GroupCog, name="embed"):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)
        self.embeds: dict[Member, Embed] = {}

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    @app_commands.command(name="builder")
    @app_commands.checks.cooldown(3, 60 * 60, key=lambda interaction: (interaction.guild_id, interaction.user.id))
    async def Start_Gen(self, interaction: Interaction):
        """Create your own embed

        Args:
            interaction (Interaction): _description_
        """
        embed = Embed(title="Build your embed here")
        view = Builder(embed)
        await interaction.followup.send(view=view, embed=embed, ephemeral=True)
        view.response = await interaction.original_response()


async def setup(bot):
    await bot.add_cog(EmbedBuilder(bot))
