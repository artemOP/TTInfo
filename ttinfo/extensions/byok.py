from __future__ import annotations

from typing import TYPE_CHECKING, Literal, Optional

import discord
from discord import app_commands
from discord.ext import commands

from ..http.enums import Server

if TYPE_CHECKING:
    from discord import Interaction

    from ttinfo.core.bot import Bot


@app_commands.default_permissions()
@app_commands.guild_only()
class Byok(commands.GroupCog, name="byok"):
    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")

    @app_commands.command(name="add")
    async def add_keys(
        self,
        interaction: Interaction,
        private_key: Optional[str] = None,
        public_key: Optional[str] = None,
        server: Server = Server.main,
    ):
        """Add your keys to the bot

        Args:
            interaction (Interaction): Internal
            private_key (Optional[str]): Your private API key
            public_key (Optional[str]): Your public API key
            server (Optional[Server]): The server the keys are tied to
        """
        vrp_id = await self.bot.client.fetch_vrp(
            interaction.user.id,
            server,
            key=private_key or self.bot.client.fallback_key,
        )
        await self.bot.pool.execute(
            "INSERT INTO keys(vrp_id, server, private, public) VALUES($1, $2, $3, $4) ON CONFLICT(vrp_id, server) DO UPDATE SET public=coalesce(excluded.public, keys.public), private=coalesce(excluded.private, keys.private)",
            vrp_id.user_id,
            server.name,
            private_key,
            public_key,
        )
        return await interaction.response.send_message(f"Keys updated", ephemeral=True)

    @app_commands.command(name="remove")
    async def remove_key(
        self,
        interaction: Interaction,
        key: Literal["private", "public"],
        server: Server = Server.main,
    ):
        """Add your keys to the bot

        Args:
            interaction (Interaction): Internal
            key (str): The key to remove
            server (Optional[Server]): The server the keys are tied to
        """
        vrp_id = await self.bot.client.fetch_vrp(interaction.user.id, server)
        await self.bot.pool.execute(f"UPDATE keys SET {key}=Null WHERE vrp_id=$1", vrp_id.user_id)
        await self.bot.client.get_keys(vrp_id.user_id, server, True)
        return await interaction.response.send_message(f"{key} key removed", ephemeral=True)

    @app_commands.command(name="charges")
    async def charges(self, interaction: Interaction, server: Server = Server.main):
        """Fetch the number of remaining BYOK charges

        Args:
            interaction (Interaction): Internal
            server (Server, optional): The server the keys are tied to
        """
        await interaction.response.defer(ephemeral=True)
        key = await self.bot.pool.fetchrow(
            "SELECT K.private FROM keys K LEFT JOIN snowflake2user S ON S.vrp_id=K.vrp_id WHERE S.snowflake=$1 AND K.server=$2",
            interaction.user.id,
            server.name,
        )
        if not key:
            return await interaction.followup.send(
                "You have not added a private key yet", ephemeral=True
            )  # todo: Command mention
        charges = await self.bot.client.fetch_charges(key["private"], server, force=True)
        await interaction.followup.send(
            embed=discord.Embed(title="Charges remaining", description=f"{charges:,}"), ephemeral=True
        )


async def setup(bot):
    await bot.add_cog(Byok(bot))
