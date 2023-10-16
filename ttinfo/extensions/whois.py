from __future__ import annotations

from typing import TYPE_CHECKING

from discord import app_commands, User
from discord.app_commands import Range
from discord.ext import commands

from ..http.enums import Server

if TYPE_CHECKING:
    from ttinfo.core.bot import Bot
    from discord import Interaction


@app_commands.guild_only()
class Whois(commands.GroupCog, name="whois"):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    async def whois(self, interaction: Interaction, server: Server, vrp_id: int) -> None:
        print(server, vrp_id)

    @app_commands.command(name="discord")
    async def whois_discord(self, interaction: Interaction, server: Server, user: User):
        await interaction.response.defer(ephemeral=True)
        keys = await self.bot.tycoon_client.get_keys_with_snowflake(interaction.user.id, server)
        vrp = await self.bot.tycoon_client.fetch_vrp(user.id, server, key=keys["private"])
        await self.whois(interaction, server, vrp.user_id)

    @app_commands.command(name="vrp_id")
    async def whois_vrp(self, interaction: Interaction, server: Server, vrp_id: Range[int, 1, 1_000_000]):
        await interaction.response.defer(ephemeral=True)
        await self.whois(interaction, server, vrp_id)

    @app_commands.command(name="username")
    async def whois_name(self, interaction: Interaction, server: Server, name: Range[str, 1, 100]):
        await interaction.response.defer(ephemeral=True)
        vrp_id = await self.bot.pool.fetchval(
            "SELECT vrp_id FROM aliases WHERE server=$1 AND name LIKE $2 ORDER BY last_seen DESC LIMIT 1",
            server.name,
            name,
        )
        if not vrp_id:
            return await interaction.followup.send("User Not found")
        await self.whois(interaction, server, vrp_id)


async def setup(bot):
    await bot.add_cog(Whois(bot))
