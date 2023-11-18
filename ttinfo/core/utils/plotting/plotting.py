from __future__ import annotations

import asyncio
import functools
from typing import TYPE_CHECKING
import plotly.graph_objects as go

if TYPE_CHECKING:
    from typing import Awaitable, Callable, ParamSpec, TypeVar
    from plotly.graph_objects import Figure

    R = TypeVar("R")
    P = ParamSpec("P")

__all__ = ("Plot",)


class Plot:
    _data: ...

    def __init__(self, loop: asyncio.AbstractEventLoop):
        self.loop = loop

    @property
    def data(self):
        return self._data

    @data.setter
    def data(self, data: ...):
        self._data = data

    @functools.cached_property
    def map_mesh(self) -> Figure:
        """Load and activate terrain figure

        Returns:
            Figure: _description_
        """
        ...

    @staticmethod
    def with_executor(func: Callable[P, R]) -> Callable[P, Awaitable[R]]:
        async def wrapped(cls, *args, **kwargs) -> R:
            return await cls.loop.run_in_executor(None, functools.partial(func, cls, *args, **kwargs))

        return wrapped  # type: ignore

    @with_executor
    def timeseries(self, *args, **kwargs) -> Figure | None:
        fig = go.Figure()
        fig.add_trace(go.Scatter3d())  # plotted coords from position.py, markers to show heading
        fig.add_trace(go.Mesh3d())  # 3d scan of gta

    def _create_map(self) -> ...:
        """Generate a 3d_mesh of the gta terrain and save to file

        Returns:
            ...: _description_
        """
