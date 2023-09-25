from __future__ import annotations

from typing import TYPE_CHECKING

from discord import app_commands
from discord.ext import commands

from ..http.enums import Server

if TYPE_CHECKING:
    from typing import Literal, Optional

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
    @app_commands.rename(private="Private Key", public="Public Key")
    async def add_keys(
        self,
        interaction: Interaction,
        private: Optional[str] = None,
        public: Optional[str] = None,
        server: Server = Server.main,
    ):
        """Add your keys to the bot

        Args:
            interaction (Interaction): Internal
            private (Optional[str]): Your private API key
            public (Optional[str]): Your public API key
            server (Optional[Server]): The server the keys are tied to
        """
        vrp_id = await self.bot.client.fetch_vrp(
            interaction.user.id,
            server,
            key=private or self.bot.client.fallback_key,
        )
        await self.bot.pool.execute(
            "INSERT INTO keys(vrp_id, server, private, public) VALUES($1, $2, $3, $4) ON CONFLICT DO UPDATE SET public=EXCLUDED.public WHERE EXCLUDED.public != null, private=EXCLUDED.private WHERE EXCLUDED.private != null",
            vrp_id,
            server.name,
            private,
            public,
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
        await self.bot.pool.execute("UPDATE keys SET {key}=Null WHERE vrp_id=$1", vrp_id)
        return await interaction.response.send_message(f"{key} key removed", ephemeral=True)

    @app_commands.command(name="charges")
    async def charges(self, interaction: Interaction, server: Server = Server.main):
        ...


async def setup(bot):
    await bot.add_cog(Byok(bot))
