import time
import functools
from typing import Hashable


class TimedCache(dict):
    def __init__(self, seconds: int):
        self.__timeout = seconds
        super().__init__()

    def _verify_cache(self):
        now = time.monotonic()
        to_remove = [key for (key, (_, exp)) in self.items() if now > (exp + self.__timeout)]
        for k in to_remove:
            del self[k]

    def __getitem__(self, key):
        self._verify_cache()
        return super().__getitem__(key)[0]

    def __setitem__(self, key, value):
        super().__setitem__(key, (value, time.monotonic()))

    def __contains__(self, key):
        self._verify_cache()
        return {a: b[0] for a, b in self.items()}.__contains__(key)
