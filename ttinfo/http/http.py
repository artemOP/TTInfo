from __future__ import annotations
import asyncio
import logging
from typing import TYPE_CHECKING

from discord.utils import MISSING
import orjson
from yarl import URL

from .enums import Server, Method, Stats, Config, BaseRoute
from ..core import errors

if TYPE_CHECKING:
    from typing import Any, Union, Optional, TypeAlias
    from types import TracebackType

    from aiohttp import ClientSession

    Key: TypeAlias = str


class Route:
    __slots__ = ("method", "base_url", "server", "path", "body", "query", "headers")

    def __init__(
        self,
        method: Method,
        base_url: BaseRoute,
        server: Server = Server.main,
        path: Union[str, URL] = MISSING,
        body: Optional[Union[str, dict[str, Any]]] = None,  # used for push
        query: Optional[list[tuple[str, Any]]] = None,  # used for get
        headers: Optional[dict[str, Any]] = None,
    ):
        self.method = method
        self.base_url = base_url
        self.server = server
        self.headers = headers or {}

        if isinstance(path, URL):
            self.path: URL = path
        elif path is MISSING:
            raise ValueError("path is a required argument")
        else:
            self.path: URL = URL(self.base_url.value.format(server.value) + "/" + path.rstrip("/"))
        if self.headers.get("x-tycoon-key") is MISSING:
            raise errors.NoKey("No key was passed to the request body")

        if query:
            self.path = self.path.with_query(query)

        if isinstance(body, dict):
            self.body = orjson.dumps(body)
            self.headers["Content-Type"] = "application/json"
        else:
            self.body = body


class TycoonHTTP:
    logger = logging.getLogger("ttinfo.http")

    def __init__(self, session: ClientSession):
        self.session: ClientSession = session

    async def __aenter__(self):
        print(await self.dealership_image("6f01"))
        return self

    async def __aexit__(
        self,
        exc_type: Optional[type[BaseException]],
        exc_val: Optional[BaseException],
        exc_tb: Optional[TracebackType],
    ):
        await self.session.close()

    async def _request(self, route: Route, retries: int = 5, timeout: int = 3) -> Any:
        assert self.session
        headers = route.headers
        reason: Optional[str] = None
        status: Optional[int] = None
        for attempt in range(retries):
            async with self.session.request(
                route.method.value,
                route.path,
                headers=headers,
                data=route.body,
                timeout=timeout,
            ) as resp:
                try:
                    message: bytes | str
                    if "image" in resp.content_type:
                        message = await resp.read()
                    else:
                        message = await resp.text(encoding="utf-8")
                except Exception as e:
                    self.logger.debug("body missing", exc_info=e)
                    raise errors.MalformedResponse(
                        message="Request body not received",
                        reason=resp.reason,
                        status=resp.status,
                        extra={"route": route},
                    )

                if 500 <= resp.status <= 504:
                    reason = resp.reason
                    sleep_time = 2**attempt + 1
                    self.logger.debug(f"Retrying request due to {resp.reason}, sleeping for {sleep_time}")
                    await asyncio.sleep(sleep_time)
                    continue

                if 200 <= resp.status < 300:
                    if resp.status == 204:
                        self.logger.debug(f"Received 204 from {route.path}")
                        return True
                    try:
                        match resp.content_type:
                            case "image/png":
                                data = await resp.read()
                            case _:
                                data = await resp.json(content_type=None, loads=orjson.loads)
                        self.logger.debug(data)
                        return data
                    except orjson.JSONDecodeError | UnicodeDecodeError:
                        self.logger.debug(f"JSONDecodeError:\n{message}")
                        return message
                elif resp.status == 400:
                    message_json = orjson.loads(message)
                    try:
                        description = message_json.get("description")
                    except Exception:
                        description = message_json
                    self.logger.debug(message_json)
                    raise errors.HTTPException(
                        "Failed to fulfill request",
                        reason=description,
                        status=resp.status,
                        extra={"route": route},
                    )
                elif resp.status == 401:
                    message_json = orjson.loads(message)
                    self.logger.debug(message_json)
                    raise errors.NoKey(resp.reason)
                elif resp.status == 403:
                    message_json = orjson.loads(message)
                    self.logger.debug(message_json)
                    raise errors.NoKey("403 - Forbidden: Likely due to malformed or incorrect key")
                elif resp.status == 412:
                    raise errors.HTTPException("No Data returned", status=resp.status, extra={"route": route})
                status = resp.status
        print(route.path)
        raise errors.HTTPException("Unhandled status code", reason=reason, status=status, extra={"route": route})

    async def alive(
        self,
        server: Server,
    ) -> bool:
        return await self._request(Route(Method.get, BaseRoute.API, server, "alive.json"))

    async def charges(self, server: Server, *, key: Key) -> list[int]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, "charges.json", headers={"x-tycoon-key": key})
        )

    async def economy(self, server: Server) -> str:
        return await self._request(Route(Method.get, BaseRoute.API, server, "economy.csv"))

    async def sotd(self, server: Server, *, key: Key) -> dict[str, Any]:
        return await self._request(Route(Method.get, BaseRoute.API, server, "sotd.json", headers={"x-tycoon-key": key}))

    async def racing_tracks(self, server: Server, *, key: Key) -> list[dict[str, Any]]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, "racing/tracks.json", headers={"x-tycoon-key": key})
        )

    async def racing_map(self, server: Server, *, track_id: Any, key: Key) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, f"racing/map/{track_id}", headers={"x-tycoon-key": key})
        )

    async def weather(self, server: Server, *, key: Key) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, "weather.json", headers={"x-tycoon-key": key})
        )

    async def forecast(self, server: Server, *, key: Key) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, "forecast.json", headers={"x-tycoon-key": key})
        )

    async def players(self, server: Server) -> dict[str, Any]:
        return await self._request(Route(Method.get, BaseRoute.API, server, "widget/players.json"))

    async def positions(self, server: Server, *, key: Key) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, "map/positions2.json", headers={"x-tycoon-key": key})
        )

    async def top10(self, server: Server, *, key: Key, stat_name: Stats) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, f"top10/{stat_name.name}", headers={"x-tycoon-key": key})
        )

    async def config(self, server: Server, *, resource: Config) -> str:
        return await self._request(Route(Method.get, BaseRoute.API, server, f"config/{resource.name}"))

    async def snowflake2user(self, server: Server, *, key: Key, discord_id: int) -> dict[str, Any]:
        return await self._request(
            Route(Method.get, BaseRoute.API, server, f"snowflake2user/{discord_id}", headers={"x-tycoon-key": key})
        )

    async def streak(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"streak/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def owned_business(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"getuserbiz/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def owned_vehicles(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"ownedvehicles/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def trunks(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"trunks/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def pots(self, server: Server, *, private_key: Key, public_key: Key) -> list[dict[str, Any]]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "deadliest_catch.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def stats(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"stats/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def storages(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"storages/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def racing_stats(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
    ) -> list[dict[str, Any]]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"racing/races/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def data(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"data/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def data_adv(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"dataadv/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def vehicle_storage(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
        vehicle_class: str,
        vehicle_model: str,
    ) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"chest/u{vrp_id}veh_{vehicle_class}_{vehicle_model}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def home_storage(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"chest/u{vrp_id}home",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def backpack_storage(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
    ) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"chest/u{vrp_id}backpack",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_storage(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
        faction_id: int,
    ) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"chest/self_storage:{vrp_id}:faq_{faction_id}:chest",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def general_storage(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
        storage_id: str,
    ) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"chest/self_storage:{vrp_id}:{storage_id}:chest",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def wealth(self, server: Server, *, private_key: Key, public_key: Key, vrp_id: int) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"wealth/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def item_info(self, server: Server, *, private_key: Key, item_id: str) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"iteminfo/{item_id}",
                headers={"x-tycoon-key": private_key},
            )
        )

    async def get_user_faction(
        self,
        server: Server,
        *,
        private_key: Key,
        public_key: Key,
        vrp_id: int,
    ) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                f"getuserfaq/{vrp_id}",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_size(self, server: Server, *, private_key: Key, public_key: Key) -> list[int]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "faction/size.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_members(self, server: Server, *, private_key: Key, public_key: Key) -> list[dict[str, Any]]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "faction/members.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_perks(self, server: Server, *, private_key: Key, public_key: Key) -> list[int]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "faction/perks.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_balance(self, server: Server, *, private_key: Key, public_key: Key) -> list[int]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "faction/balance.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def faction_info(self, server: Server, *, private_key: Key, public_key: Key) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "faction/info.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def rts_vehicles(self, server: Server, *, private_key: Key, public_key: Key) -> list[str]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "companies/rts/ground.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def pigs_party(self, server: Server, *, private_key: Key, public_key: Key) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "companies/pigs/party.json",
                headers={"x-tycoon-key": private_key, "x-tycoon-public-key": public_key},
            )
        )

    async def dealership(self, server: Server, *, private_key: Key) -> dict[str, list[dict[str, Any]]]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.API,
                server,
                "dealership.json",
                headers={"x-tycoon-key": private_key},
            )
        )

    async def dealership_image(self, vehicle: str) -> bytes:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.CDN,
                path=f"dealership/vehicles/{vehicle}.png",
            )
        )

    async def vehicle_data(self, vehicle: str) -> dict[str, Any]:
        return await self._request(
            Route(
                Method.get,
                BaseRoute.CDN,
                path=f"dealership/vehicles/data/{vehicle}.json",
            )
        )
