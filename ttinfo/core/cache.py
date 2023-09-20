from __future__ import annotations

import time
import functools
import logging
from typing import Hashable, Optional, TYPE_CHECKING

if TYPE_CHECKING:
    from ttinfo.http.enums import Server

logger = logging.getLogger("ttinfo.cache")

__all__ = "server_specific", "TimedCache"


class TimedCache(dict):
    def __init__(self, seconds: int):
        self.__timeout = seconds
        super().__init__()

    def _verify_cache(self):
        now = time.monotonic()
        to_remove = [key for (key, (_, exp)) in self.items() if now > (exp + self.__timeout)]
        for k in to_remove:
            logger.debug(f"Cache expired: <{k}: {self[k]}>")
            del self[k]

    def __getitem__(self, key):
        self._verify_cache()
        return super().__getitem__(key)[0]

    def __setitem__(self, key, value):
        super().__setitem__(key, (value, time.monotonic()))

    def __contains__(self, key):
        self._verify_cache()
        return {a: b[0] for a, b in self.items()}.__contains__(key)


def get_index_key(server: Server, value: str) -> str:
    return f"{server.value}_{value}"


def server_specific(timer: Optional[int]):
    if timer:
        cache = TimedCache(timer)
    else:
        cache = {}

    def decorator(func):
        @functools.wraps(func)
        async def wrapper(cls, value: str, server: Server, force: bool = False, *args, **kwargs):
            index_key = get_index_key(server, value)
            if not force:
                if index_key in cache:
                    logger.debug(f"Cache hit: <{index_key}: {cache[index_key]}>")
                    return cache[index_key]

            data = await func(cls, value, server, force, *args, **kwargs)
            cache[index_key] = data
            logger.debug(f"data added to cache: <{index_key}: {data}>")
            return data

        return wrapper

    return decorator
