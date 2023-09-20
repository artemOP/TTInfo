from __future__ import annotations

from typing import TYPE_CHECKING

from . import enums, models, TycoonHTTP
from ttinfo import cache
from ..core import errors

if TYPE_CHECKING:
    from types import TracebackType
    from typing import Literal, Optional, TypeAlias

    from typing_extensions import Self

    from ttinfo import Bot, Pool

    Key: TypeAlias = str


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

    @cache.server_specific(60 * 60 * 24)
    async def get_keys(self, vrp_id: int, server: enums.Server, force: bool) -> dict[Literal["public", "private"], Key]:
        """Get private and or public keys linked to a specific vrp_id

        Raises:
            errors.NoKey: raised if private key is not set

        Returns:
            dict[str, str]: {private: ..., public: ...}
        """
        keys = await self.pool.fetchrow("SELECT private, public FROM keys WHERE vrp_id = $1", vrp_id)
        if not keys or keys["private"]:
            raise errors.NoKey()  # todo: use command mention logic for eventual BYOK system
        return keys

    @cache.server_specific(None)
    async def fetch_vrp(
        self,
        discord_id: int,
        server: enums.Server,
        force: bool = False,
        key: Optional[Key] = None,
    ) -> models.Snowflake2User:
        """Get vrp_id from cache, fallback to db and then api as required

        Args:
            discord_id (int): The account to fetch
            key (Optional[str]): the key to use for the api call. Defaults to fallback.
            server (Optional[enums.Server]): the server to search.
            force (Optional[bool]): Skip cache layer entirely

        Raises:
            errors.NotLinked: Raised if no response is given from the API

        Returns:
            models.Snowflake2User: _description_
        """
        if not force:
            if vrp_id := await self.pool.fetchval("SELECT vrp_id FROM snowflake2user WHERE snowflake = $1", discord_id):
                return models.Snowflake2User(discord_id=discord_id, user_id=vrp_id)

        data = await self.session.snowflake2user(server, key=key or self.fallback_key, discord_id=discord_id)
        if data:
            response = models.Snowflake2User(discord_id=data["discord_id"], user_id=data["user_id"])
            await self.pool.execute(
                "INSERT INTO snowflake2user(snowflake, vrp_id) values($1, $2)",
                response.discord_id,
                response.user_id,
            )
            return response
        raise errors.NotLinked()

    @cache.server_specific(60 * 60)
    async def fetch_charges(self, key: Key, server: enums.Server, force: bool = False) -> models.Charges:
        """Get the number of remaining charges left on a specific key

        Args:
            key (Key): The key to check
            server (enums.Server): Split servers do not share keys
            force (bool): Force skip the cache. Defaults to False.

        Returns:
            models.Charges: {charges: int}
        """
        data = await self.session.charges(server, key=key)
        response = models.Charges(charges=data[0])
        return response
