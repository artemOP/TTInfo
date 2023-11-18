from __future__ import annotations

from typing import TYPE_CHECKING, Literal, Optional

import discord
from discord import app_commands
from discord.ext import commands, tasks

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
        server: Server,
        private_key: Optional[str] = None,
        public_key: Optional[str] = None,
    ):
        """Add your keys to the bot

        Args:
            interaction (Interaction): Internal
            private_key (Optional[str]): Your private API key
            public_key (Optional[str]): Your public API key
            server (Optional[Server]): The server the keys are tied to
        """
        vrp_id = await self.bot.tycoon_client.fetch_vrp(
            interaction.user.id,
            server,
            key=private_key or await self.bot.tycoon_client.get_donated_key(server),
        )
        await self.bot.pool.execute(
            "INSERT INTO keys(vrp_id, server, private, public) VALUES($1, $2, $3, $4) ON CONFLICT(vrp_id, server) DO UPDATE SET public=coalesce(excluded.public, keys.public), private=coalesce(excluded.private, keys.private)",
            vrp_id.user_id,
            server.name,
            private_key,
            public_key,
        )
        return await interaction.followup.send(f"Keys updated", ephemeral=True)

    @app_commands.command(name="remove")
    async def remove_key(
        self,
        interaction: Interaction,
        server: Server,
        key: Literal["private", "public"],
    ):
        """Add your keys to the bot

        Args:
            interaction (Interaction): Internal
            key (str): The key to remove
            server (Optional[Server]): The server the keys are tied to
        """
        vrp_id = await self.bot.tycoon_client.fetch_vrp(interaction.user.id, server)
        await self.bot.pool.execute(f"UPDATE keys SET {key}=Null WHERE vrp_id=$1", vrp_id.user_id)
        await self.bot.tycoon_client.get_keys(vrp_id.user_id, server, True)
        return await interaction.followup.send(f"{key} key removed", ephemeral=True)

    @app_commands.command(name="charges")
    async def charges(self, interaction: Interaction, server: Server):
        """Fetch the number of remaining BYOK charges

        Args:
            interaction (Interaction): Internal
            server (Server, optional): The server the keys are tied to
        """
        key = await self.bot.tycoon_client.get_keys_with_snowflake(interaction.user.id, server)
        charges = await self.bot.tycoon_client.fetch_charges(key["private"], server, force=True)
        await interaction.followup.send(
            embed=discord.Embed(title="Charges remaining", description=f"{charges:,}"), ephemeral=True
        )

    @app_commands.command(name="donate")
    async def donate(self, interaction: Interaction, server: Server, amount: int, reccuring: bool = False):
        """Donate charges to be used for bot upkeep

        Args:
            interaction (Interaction): _description_
            server (Server): The server your BYOK is linked to
            amount (int): The number of charges you wish to donate
            reccuring (bool): Receive a reminder when your donation has been consumed
        """
        key = await self.bot.tycoon_client.get_keys_with_snowflake(interaction.user.id, server)
        if not key.get("private"):
            return await interaction.followup.send(
                "Please set up a BYOK for this server before trying to donate keys", ephemeral=True
            )
        charges = await self.bot.tycoon_client.fetch_charges(key["private"], server, force=True)
        if charges < amount:
            amount = charges
        vrp_id = await self.bot.tycoon_client.fetch_vrp(interaction.user.id, server, key=key["private"])
        await self.bot.pool.execute(
            "INSERT INTO donations(vrp_id, server, quantity, reccuring) VALUES($1,$2,$3,$4) ON CONFLICT(vrp_id, server) SET quantity=quantity+EXCLUDED.quantity",
            vrp_id,
            server.name,
            amount,
            reccuring,
        )


async def setup(bot):
    await bot.add_cog(Byok(bot))
