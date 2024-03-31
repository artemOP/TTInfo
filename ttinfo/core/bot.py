from __future__ import annotations

import re
from typing import TYPE_CHECKING

import discord
from discord.app_commands import Group, Command, ContextMenu
from discord.ext import commands, tasks

from .tree import CommandTree

if TYPE_CHECKING:
    from asyncio import Queue
    from logging import LogRecord
    from pathlib import Path
    from typing import Any, Callable, Coroutine, Generator, Optional, TypeAlias, Union

    from aiohttp import ClientSession
    from discord import Intents

    from .. import TycoonClient, Pool, LogHandler

    Prefix: TypeAlias = Union[str, list[str], Callable, Coroutine]


class Bot(commands.Bot):
    tycoon_client: TycoonClient
    log_handler: LogHandler
    logging_queue: Queue[LogRecord]
    pool: Pool
    session: ClientSession

    __slots__ = ("tycoon_client", "log_handler", "logging_queue", "pool", "session", "config", "extension_path")

    def __init__(self, prefix: Prefix, intents: Intents, config: dict[str, Any], extension_path: Path, **kwargs):
        super().__init__(
            prefix,  # type: ignore
            help_command=None,
            intents=intents,
            case_insensitive=True,
            tree_cls=CommandTree,
            **kwargs,
        )
        self.config = config
        self.extension_path = extension_path

    async def setup_hook(self) -> None:
        assert self.tycoon_client
        assert self.log_handler
        assert self.pool
        for file in self.collect_cogs(self.extension_path):
            extension = str(file.relative_to("./"))[:-3]
            extension = re.sub(r"(\\)|(/)", ".", extension)
            try:
                await self.load_extension(extension)
            except commands.NoEntryPointError:
                self.log_handler.debug("Skipping extension %s", extension)
            except Exception as e:
                self.log_handler.exception(f"Failed to load extension {extension}", exc_info=e)

    def collect_cogs(self, root: Path) -> Generator[Path, None, None]:
        for file in root.iterdir():
            if file.match("[!-|_]*.py"):
                yield file
            if not self.config["discord"]["toggles"]["tasks"] and file.name == "tasks":
                continue
            elif file.is_dir():
                yield from self.collect_cogs(file)

    async def on_ready(self):
        self.log_handler.warning(f"Connected as {self.user} at {discord.utils.utcnow().strftime('%d/%m/%y %H:%M')}")

    @staticmethod
    async def add_to_extra(command: Command | ContextMenu, mention: str, guild_id: Optional[int] = None) -> None:
        if guild_id:
            command.extras[f"mention for {guild_id}"] = mention
        else:
            command.extras["mention"] = mention

    @tasks.loop(count=1)
    async def prepare_mentions(self):
        for guild in [*self.guilds, None]:
            for fetched_command in await self.tree.fetch_commands(guild=guild):
                command = self.tree.get_command(fetched_command.name, guild=guild, type=fetched_command.type)
                if command is None:
                    self.log_handler.debug("command not found")
                    continue
                await self.add_to_extra(command, fetched_command.mention, None if not guild else guild.id)
                if isinstance(command, Group):
                    for child in command.walk_commands():
                        await self.add_to_extra(
                            child, f"</{child.qualified_name}:{fetched_command.id}>", None if not guild else guild.id
                        )

    @prepare_mentions.before_loop
    async def before_prepare_mentions(self):
        await self.wait_until_ready()
