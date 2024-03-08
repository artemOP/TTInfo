from __future__ import annotations

import logging
from logging.handlers import RotatingFileHandler
import pathlib
from typing import TYPE_CHECKING

from discord.utils import _ColourFormatter as ColourFormatter, stream_supports_colour


if TYPE_CHECKING:
    from typing import Any
    from typing_extensions import Self

    from ttinfo import Bot


class QueueEmitHandler(logging.Handler):
    def __init__(self, bot: Bot):
        super().__init__(logging.ERROR)
        self.bot = bot

    def emit(self, record: logging.LogRecord) -> None:
        self.bot.logging_queue.put_nowait(record)


class LogHandler:
    def __init__(self, *, bot: Bot, stream: bool = True):
        self.log: logging.Logger = logging.getLogger()
        self.max_bytes: int = 1024 * 1024 * 32

        self.logging_path = pathlib.Path("ttinfo/logs")
        if not self.logging_path.exists():
            self.logging_path.mkdir()

        self.stream: bool = stream
        self.bot: Bot = bot

        self.debug = self.log.debug
        self.info = self.log.info
        self.warning = self.log.warning
        self.error = self.log.error
        self.exception = self.log.exception
        self.critical = self.log.critical

    async def __aenter__(self) -> Self:
        return self.__enter__()

    def __enter__(self) -> Self:
        logging.getLogger("discord").setLevel(logging.INFO)
        logging.getLogger("discord.http").setLevel(logging.INFO)
        logging.getLogger("discord.state").setLevel(logging.WARNING)
        logging.getLogger("discord.gateway").setLevel(logging.WARNING)

        if self.bot.config["discord"]["toggles"]["debug"]:
            self.log.setLevel(logging.DEBUG)
        else:
            self.log.setLevel(logging.INFO)

        handler = RotatingFileHandler(
            filename=self.logging_path / "ttinfo.log",
            encoding="utf-8",
            mode="a",
            maxBytes=self.max_bytes,
            backupCount=5,
        )
        dt_fmt = "%Y-%m-%d %H:%M:%S"
        fmt = logging.Formatter("[{asctime}] [{levelname:<7}] {name}: {message}", dt_fmt, style="{")
        handler.setFormatter(fmt)
        self.log.addHandler(handler)

        if self.stream:
            stream_handler = logging.StreamHandler()
            stream_handler.setLevel(logging.WARNING)
            if stream_supports_colour(stream_handler):
                stream_handler.setFormatter(ColourFormatter())
            self.log.addHandler(stream_handler)
        if self.bot.config["discord"]["webhook"]:
            self.log.addHandler(QueueEmitHandler(self.bot))

        return self

    async def __aexit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        return self.__exit__(exc_type, exc_val, exc_tb)

    def __exit__(self, exc_type: Any, exc_val: Any, exc_tb: Any) -> None:
        for handler in self.log.handlers[:]:
            handler.close()
            self.log.removeHandler(handler)
