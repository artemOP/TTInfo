from typing import Any, Iterable, Optional, Sequence

import asyncpg


class Pool:
    _pool: asyncpg.Pool

    def __init__(self, *args, **kwargs):
        self.args = args
        self.kwargs = kwargs

    async def __aenter__(self):
        self._pool = await asyncpg.create_pool(*self.args, **self.kwargs)
        return self

    async def __aexit__(self, *args, **kwargs):
        await self._pool.close()

    async def fetch(self, sql: str, *args) -> Optional[list[asyncpg.Record]]:
        async with self._pool.acquire() as conn:
            async with conn.transaction():
                return await conn.fetch(sql, *args)

    async def fetchrow(self, sql: str, *args) -> Optional[asyncpg.Record]:
        async with self._pool.acquire() as conn:
            async with conn.transaction():
                return await conn.fetchrow(sql, *args)

    async def fetchval(self, sql: str, *args) -> Optional[Any]:
        async with self._pool.acquire() as conn:
            async with conn.transaction():
                return await conn.fetchval(sql, *args)

    async def execute(self, sql: str, *args) -> Optional[Any]:
        async with self._pool.acquire() as conn:
            async with conn.transaction():
                return await conn.fetchval(sql, *args)

    async def executemany(self, sql: str, args: Iterable[Sequence]) -> Optional[Any]:
        async with self._pool.acquire() as conn:
            async with conn.transaction():
                return await conn.executemany(sql, args)
