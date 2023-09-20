from __future__ import annotations

from typing import TYPE_CHECKING

from . import enums, models, TycoonHTTP

if TYPE_CHECKING:
    from types import TracebackType
    from typing import Optional
    from typing_extensions import Self

    from ttinfo import Bot


class Client:
    session: TycoonHTTP
    cache: ...

    def __init__(self, bot: Bot) -> None:
        self.bot = bot

    async def __aenter__(self) -> Self:
        self.session = await TycoonHTTP().__aenter__()
        return self

    async def __aexit__(
        self,
        exc_type: Optional[type[BaseException]],
        exc_val: Optional[BaseException],
        exc_tb: Optional[TracebackType],
    ):
        await self.session.__aexit__(exc_type, exc_val, exc_tb)
