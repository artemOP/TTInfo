from __future__ import annotations

from typing import TYPE_CHECKING

from discord import app_commands, AppCommandType
from discord.ext import commands

if TYPE_CHECKING:
    from typing import Optional

    from discord import Interaction
    from discord.abc import Snowflake
    from discord.app_commands import Command, ContextMenu, Group


class CommandTree(app_commands.CommandTree):
    def __init__(self, bot):
        super().__init__(bot)

    async def interaction_check(self, interaction: Interaction, /) -> bool:
        if not interaction.guild:
            await interaction.response.send_message("This bot cannot be used in DMs", ephemeral=True)  # type: ignore
            return False
        return True

    def get_command(
        self,
        command_name: str,
        /,
        *,
        guild: Optional[Snowflake] = None,
        type_: AppCommandType = AppCommandType.chat_input,
    ) -> Optional[Command | ContextMenu | Group]:
        command = super().get_command(command_name, guild=guild, type=type_)
        if not command:
            command = super().get_command(command_name, guild=None, type=type_)
        return command

    def get_commands(
        self, *, guild: Optional[Snowflake] = None, type_: Optional[AppCommandType] = None
    ) -> list[Command | ContextMenu | Group]:
        guild_commands = super().get_commands(guild=guild, type=type_)
        global_commands = super().get_commands(guild=None, type=type_)
        for global_command in global_commands:
            if global_command.name not in [guild_command.name for guild_command in guild_commands]:
                guild_commands.append(global_command)
        return guild_commands

    @staticmethod
    def flatten_commands(
        command_list: list[app_commands.Command | app_commands.Group | commands.Command | commands.Group],
    ) -> list[app_commands.Command | commands.Command]:
        flat_commands = []
        for command in command_list:
            if isinstance(command, app_commands.Group | commands.Command):
                for child in command.walk_commands():
                    flat_commands.append(child)
            else:
                flat_commands.append(command)
        return flat_commands
