import time
import functools
import logging
from typing import Hashable

logger = logging.getLogger("ttinfo.cache")


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


def key_cache(timer: int = 60 * 60 * 24):
    cache = TimedCache(timer)

    def decorator(func):
        @functools.wraps(func)
        async def wrapper(cls, vrp_id: int):
            if vrp_id in cache:
                logger.debug(f"Cache hit: <{vrp_id}: {cache[vrp_id]}>")
                return cache[vrp_id]

            data = await func(cls, vrp_id)
            cache[vrp_id] = data
            logger.debug(f"data added to cache: <{vrp_id}: {data}>")
            return data

        return wrapper

    return decorator


def vrp_cache():
    cache = {}

    def decorator(func):
        @functools.wraps(func)
        async def wrapper(cls, snowflake: Hashable, **kwargs):
            if not kwargs.get("force", False):
                if snowflake in cache:
                    logger.debug(f"Cache hit: <{snowflake}: {cache[snowflake]}>")
                    return cache[snowflake]

            data = await func(cls, snowflake)
            cache[snowflake] = data
            logger.debug(f"data added to cache: <{snowflake}: {data}>")
            return data

        return wrapper

    return decorator
