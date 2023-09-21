from __future__ import annotations

from typing import TYPE_CHECKING

from . import enums, models, TycoonHTTP
from .. import cache
from ..core import errors

if TYPE_CHECKING:
    from types import TracebackType
    from typing import Literal, Optional

    from asyncpg import Pool
    from typing_extensions import Self

    from ttinfo import Bot


class Client:
    session: TycoonHTTP

    def __init__(self, bot: Bot, pool: Pool) -> None:
        self.bot = bot
        self.pool = pool

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

    @property
    def fallback_key(self):
        return self.bot.env_values["tycoon_token"]

    @cache.key_cache()
    async def get_keys(self, vrp_id: int) -> dict[Literal["public", "private"], str]:
        keys = await self.pool.fetchrow("SELECT private, public FROM keys WHERE vrp_id = $1", vrp_id)
        if not keys["private"]:
            raise errors.NoKey()  # todo: use command mention logic for eventual BYOK system
        return keys

    @cache.vrp_cache()
    async def fetch_vrp(self, discord_id: int, server: enums.Server = enums.Server.main) -> models.Snowflake2User:
        if vrp_id := await self.pool.fetchval("SELECT vrp_id FROM snowflake2user WHERE snowflake = $1", discord_id):
            return models.Snowflake2User(discord_id=discord_id, user_id=vrp_id)
        data = await self.session.snowflake2user(server, key=self.fallback_key, discord_id=discord_id)
        if data:
            response = models.Snowflake2User(discord_id=data["discord_id"], user_id=data["user_id"])
            return response
        raise errors.NotLinked()
