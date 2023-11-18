from __future__ import annotations

from typing import TYPE_CHECKING

from discord import app_commands, User, Member
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
        return await interaction.followup.send(f"{server} - {vrp_id}")

    @app_commands.command(name="discord")
    async def whois_discord(self, interaction: Interaction, server: Server, user: User | Member | None = None):
        """Display various information about a user by their discord id

        Args:
            interaction (Interaction): _description_
            server (Server): The server to perform the lookup on
            user (User | Member | None, optional): The user to lookup. Defaults to you.
        """
        if not user:
            user = interaction.user
        keys = await self.bot.tycoon_client.get_keys_with_snowflake(interaction.user.id, server)
        vrp = await self.bot.tycoon_client.fetch_vrp(user.id, server, key=keys["private"])
        await self.whois(interaction, server, vrp.user_id)

    @app_commands.command(name="vrp_id")
    async def whois_vrp(self, interaction: Interaction, server: Server, vrp_id: Range[int, 1, 1_000_000] | None = None):
        """Display various information about a user by their in game id

        Args:
            interaction (Interaction): _description_
            server (Server): The server to perform the lookup on
            vrp_id (Range[int, 1, 1_000_000] | None, optional): The in game ID. Defaults to your ID.
        """
        if not vrp_id:
            return await self.whois_discord.callback(self, interaction, server, interaction.user)
        await self.whois(interaction, server, vrp_id)

    @app_commands.command(name="username")
    async def whois_name(self, interaction: Interaction, server: Server, name: Range[str, 1, 100] | None = None):
        """Display various information about a user by their in game name

        Args:
            interaction (Interaction): _description_
            server (Server): The server to perform the lookup on
            name (Range[str, 1, 100] | None, optional): The name to search for. Defaults to your name.

        Returns:
            _type_: _description_
        """
        if not name:
            return await self.whois_discord.callback(self, interaction, server, interaction.user)
        vrp_id = await self.bot.pool.fetchval(
            "SELECT vrp_id FROM aliases WHERE name LIKE $1 ORDER BY last_seen DESC LIMIT 1",
            name,
        )
        if not vrp_id:
            return await interaction.followup.send("User Not found")
        await self.whois(interaction, server, vrp_id)


async def setup(bot):
    await bot.add_cog(Whois(bot))
