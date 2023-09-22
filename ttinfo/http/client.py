from __future__ import annotations

from datetime import timedelta
from typing import TYPE_CHECKING, cast

from discord.utils import MISSING

from . import enums, models, TycoonHTTP
from ttinfo import cache
from ..core import errors

if TYPE_CHECKING:
    from types import TracebackType
    from typing import Literal, Optional, TypeAlias, AsyncGenerator

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
        if not (keys or keys.get("private")):
            raise errors.NoKey()  # todo: use command mention logic for eventual BYOK system
        return {"private": keys["private"], "public": keys.get("public")}

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

    async def alive(self, server: enums.Server) -> bool:
        return await self.session.alive(server)

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
        response = models.Charges(data[0])
        return response

    async def fetch_economy(self, server: enums.Server) -> AsyncGenerator[dict[str, int], None]:
        data = await self.session.economy(server)
        headers = data.split("\n", 1)[0].split(";")
        for row in data.splitlines()[1:]:
            row = row.split(";")
            yield {key: int(value) for key, value in zip(headers, row, strict=True)}

    async def fetch_sotd(self, key: Key, server: enums.Server) -> models.SOTD:
        """Fetch the current SOTD

        Args:
            key (Key): API key to use
            server (enums.Server): The server to request from

        Returns:
            models.SOTD: {skill: Skill, aptitude: str, bonus: int, short: SkillShort}
        """
        data = await self.session.sotd(server, key=key)
        return models.SOTD(
            skill=data["skill"],  # todo: enum
            aptitude=data["aptitude"],
            bonus=data["bonus"],
            short=data["short"],  # todo: enum
        )

    # todo: racing endpoints

    async def fetch_weather(self, key: Key, server: enums.Server) -> models.Weather:
        data = await self.session.weather(server, key=key)
        return models.Weather(enums.Weather[data["weather"]], data["hour"], data["minute"])

    async def fetch_forecast(self, key: Key, server: enums.Server) -> models.Forecast:
        data = await self.session.forecast(server, key=key)
        return models.Forecast(enums.Weather[weather] for weather in data)

    async def fetch_players(self, server: enums.Server, force: bool = False) -> models.Players:
        """_summary_

        Args:
            server (enums.Server): _description_
            force (bool, optional): _description_. Defaults to False.
        """
        data = await self.session.players(server)
        hours, minutes = map(int, data["server"]["uptime"].replace("h", "").replace("m", "").split())
        uptime = timedelta(hours=hours, minutes=minutes)
        return models.Players(
            players=[
                models.Player(
                    name=player[0],
                    source_id=player[1],
                    vrp_id=player[2],
                    avatar_url=player[3],
                    staff=player[4],
                    job=player[5],
                    donator=player[6],
                )
                for player in data["players"]
            ],
            server=models.Server(
                models.DXP(*data["server"]["dxp"]),
                limit=data["server"]["limit"],
                motd=data["server"]["motd"],
                name=data["server"]["name"],
                number=int(data["server"]["number"]),
                region=data["server"]["region"],
                uptime=uptime,
            ),
        )

    async def fetch_positions(self, server: enums.Server, key: Key) -> models.Positions:
        data = await self.session.positions(server, key=key)
        return models.Positions(
            models.Position(
                player=models.Player(
                    name=player[0],
                    source_id=player[1],
                    vrp_id=player[2],
                    job=enums.JobGroups(player[5].get("group")),
                ),
                position=models.Coords(
                    h=player[3].get("h"),
                    x=player[3].get("x"),
                    y=player[3].get("y"),
                    z=player[3].get("z"),
                ),
                vehicle_data=models.VehicleData(
                    has_trailer=player[4]["has_trailer"],
                    owned_vehicles=player[4]["owned_vehicles"] or {},
                    trailer=player[4]["trailer"],
                    vehicle_class=player[4]["vehicle_class"],
                    vehicle_label=player[4]["vehicle_label"],
                    vehicle_model=player[4]["vehicle_model"],
                    vehicle_name=player[4]["vehicle_name"],
                    vehicle_spawn=player[4]["vehicle_spawn"],
                    vehicle_type=player[4]["vehicle_type"],
                ),
                history=[
                    models.Coords(
                        index=coord[0],
                        x=coord[1],
                        y=coord[2],
                        z=coord[3],
                        h=coord[4],
                    )
                    for coord in player[6]
                ]
                if len(player) > 6
                else None,
            )
            for player in data["players"]
        )

    @cache.server_specific(60 * 60)
    async def fetch_top10(
        self,
        stat: enums.Stats,
        server: enums.Server,
        force: bool = False,
        key: Key = MISSING,
    ) -> models.Top10:
        if key is MISSING:
            raise errors.NoKey("No key was passed to this function")
        data = await self.session.top10(server, key=key, stat_name=stat)
        return models.Top10(data["stat"], data["top"])

    @cache.server_specific(60 * 60 * 24)
    async def fetch_config(self, resoure: enums.Config, server: enums.Server, force: bool = False) -> models.Config:
        data = await self.session.config(server, resource=resoure)
        return models.Config(data)

    @cache.server_specific(60 * 60 * 24)
    async def fetch_streak(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: Key = MISSING,
        public_key: Key = "",
    ) -> models.Streak:
        if private_key is MISSING:
            raise errors.NoKey("No key passed")
        data = await self.session.streak(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        return models.Streak(data["data"].get("days"), data["data"].get("streak"), data["data"].get("record"))

    @cache.server_specific(60)
    async def fetch_owned_business(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: Key = MISSING,
        public_key: Key = "",
    ) -> models.OwnedBusiness:
        if private_key is MISSING:
            raise errors.NoKey("No key passed")
        data = await self.session.owned_business(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        return data["businesses"]

    @cache.server_specific(60)
    async def fetch_owned_vehicles(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: Key = MISSING,
        public_key: Key = "",
    ) -> models.OwnedVehicles:
        if private_key is MISSING:
            raise errors.NoKey("No key passed")
        data = await self.session.owned_vehicles(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        if data["vehicles"]:
            return {name: models.Vehicle(name, *data) for name, data in data["vehicles"].items()}
        return {}

    @cache.server_specific(60)
    async def fetch_trunks(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: Key = MISSING,
        public_key: Key = "",
    ) -> models.Trunks:
        if private_key is MISSING:
            raise errors.NoKey("No key passed")
        data = await self.session.trunks(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        if data["trunks"]:
            return {
                trunk["vehicle"]: models.Trunk(
                    trunk["inventory"],
                    trunk["type"],
                    trunk["vehicle"],
                )
                for trunk in data["trunks"]
            }

        return {}

    async def fetch_pots(self, server: enums.Server, private_key: str, public_key: str = "") -> models.Pots:
        data = await self.session.pots(server, private_key=private_key, public_key=public_key)
        return models.Pots(
            pots=[
                models.Pot(
                    models.Coords(x=pot["position"]["x"], y=pot["position"]["y"], z=pot["position"]["z"]),
                    age=timedelta(seconds=pot["age"]),
                    pot_type=pot["type"],
                )
                for pot in data
            ],
            total=len(data),
        )

    @cache.server_specific(60 * 15)
    async def fetch_stats(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: str = MISSING,
        public_key: str = "",
    ) -> models.Stats:
        if private_key is MISSING:
            raise errors.NoKey("Key was not passed to the command")

        data = await self.session.stats(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        return {enums.Stats[stat["stat"]]: stat["amount"] for stat in data["data"]}

    @cache.server_specific(60 * 2)
    async def fetch_storages(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: str = MISSING,
        public_key: str = "",
    ) -> models.Storages:
        data = await self.session.storages(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        return {
            storage["name"]: {item: count["amount"] for item, count in storage["inventory"].items()}
            for storage in data["storages"]
        }

    async def unpack_gaptitudes(self, data: dict[str, dict[str, float]]) -> models.Skills:
        return models.Skills(
            business=data.get("business", {}).get("business", 0),
            casino=data.get("casino", {}).get("casino", 0),
            ems=data.get("ems", {}).get("ems", 0),
            fire=data.get("ems", {}).get("fire", 0),
            farming=data.get("farming", {}).get("farming", 0),
            fishing=data.get("farming", {}).get("fishing", 0),
            mining=data.get("farming", {}).get("mining", 0),
            hunting=data.get("hunting", {}).get("skill", 0),
            strength=data.get("physical", {}).get("strength", 0),
            cargos=data.get("piloting", {}).get("cargos", 0),
            heli=data.get("piloting", {}).get("heli", 0),
            piloting=data.get("piloting", {}).get("piloting", 0),
            train=data.get("train", {}).get("train", 0),
            bus=data.get("train", {}).get("bus", 0),
            garbage=data.get("trucking", {}).get("garbage", 0),
            mechanic=data.get("trucking", {}).get("mechanic", 0),
            postop=data.get("trucking", {}).get("postop", 0),
            trucking=data.get("trucking", {}).get("trucking", 0),
        )

    @cache.server_specific(60)
    async def fetch_data(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: str = MISSING,
        public_key: str = "",
    ) -> models.Data:
        data = await self.session.data(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        if not data["data"]:
            raise errors.MalformedResponse("Payload missing information")
        data["data"] = cast(dict, data["data"])
        return models.Data(
            user_id=data["user_id"],
            accepting_player_ems=data["data"].get("AcceptingPlayerEms", False),
            chat_prefix=data["data"].get("chat_prefix", None),
            chat_title=data["data"].get("chat_title", None),
            current_loan=data["data"].get("current_loan", None),
            customization=data["data"].get("customization", {}),
            gaptitudes=await self.unpack_gaptitudes(data["data"]["gaptitudes"]),
            gaptitudes_v=await self.unpack_gaptitudes(data["data"]["gaptitudes_v"]),
            groups=data["data"].get("groups", {}),
            health=data["data"].get("health", 200),
            hunger=data["data"].get("hunger", 0),
            inventory={item: count["amount"] for item, count in data["data"]["inventory"].items()},
            ironman=data["data"].get("ironman", False),
            licenses=data["data"].get("licenses", {}),
            loans=data["data"].get("loans", {}),
            position=models.Coords(
                h=data["data"]["position"]["h"],
                x=data["data"]["position"]["x"],
                y=data["data"]["position"]["y"],
                z=data["data"]["position"]["z"],
            ),
            thirst=data["data"].get("thirst", 0),
            vehicle=models.VehicleData(
                has_trailer=data["data"]["vehicle"]["has_trailer"],
                owned_vehicles=data["data"]["vehicle"]["owned_vehicles"],
                trailer=data["data"]["vehicle"]["trailer"],
                vehicle_class=data["data"]["vehicle"]["vehicle_class"],
                vehicle_label=data["data"]["vehicle"]["vehicle_label"],
                vehicle_model=data["data"]["vehicle"]["vehicle_model"],
                vehicle_name=data["data"]["vehicle"]["vehicle_name"],
                vehicle_spawn=data["data"]["vehicle"]["vehicle_spawn"],
                vehicle_type=data["data"]["vehicle"]["vehicle_type"],
            ),
            data_type=data.get("data_type", "data_offline"),
        )

    @cache.server_specific(60)
    async def fetch_data_adv(
        self,
        vrp_id: int,
        server: enums.Server,
        force: bool = False,
        private_key: str = MISSING,
        public_key: str = "",
    ) -> models.DataAdv:
        data = await self.session.data_adv(server, private_key=private_key, public_key=public_key, vrp_id=vrp_id)
        if not data["data"]:
            raise errors.MalformedResponse("Payload missing information")
        data["data"] = cast(dict, data["data"])
        return models.DataAdv(
            user_id=data["user_id"],
            accepting_player_ems=data["data"].get("AcceptingPlayerEms", False),
            chat_prefix=data["data"].get("chat_prefix", None),
            chat_title=data["data"].get("chat_title", None),
            current_loan=data["data"].get("current_loan", None),
            customization=data["data"].get("customization", {}),
            gaptitudes=await self.unpack_gaptitudes(data["data"]["gaptitudes"]),
            gaptitudes_v=await self.unpack_gaptitudes(data["data"]["gaptitudes_v"]),
            groups=data["data"].get("groups", {}),
            health=data["data"].get("health", 200),
            hunger=data["data"].get("hunger", 0),
            inventory={item: count["amount"] for item, count in data["data"]["inventory"].items()},
            ironman=data["data"].get("ironman", False),
            licenses=data["data"].get("licenses", {}),
            loans=data["data"].get("loans", {}),
            position=models.Coords(
                h=data["data"]["position"]["h"],
                x=data["data"]["position"]["x"],
                y=data["data"]["position"]["y"],
                z=data["data"]["position"]["z"],
            ),
            thirst=data["data"].get("thirst", 0),
            vehicle=models.VehicleData(
                has_trailer=data["data"]["vehicle"]["has_trailer"],
                owned_vehicles=data["data"]["vehicle"]["has_trailer"],
                trailer=data["data"]["vehicle"]["has_trailer"],
                vehicle_class=data["data"]["vehicle"]["has_trailer"],
                vehicle_label=data["data"]["vehicle"]["has_trailer"],
                vehicle_model=data["data"]["vehicle"]["has_trailer"],
                vehicle_name=data["data"]["vehicle"]["has_trailer"],
                vehicle_spawn=data["data"]["vehicle"]["has_trailer"],
                vehicle_type=data["data"]["vehicle"]["has_trailer"],
            ),
            data_type=data.get("data_type", "data_offline"),
        )

    async def fetch_vehicle_storage(
        self,
        vrp_id: int,
        server: enums.Server,
        private_key: Key,
        public_key: Key,
        vehicle_class: str,
        vehicle_model: str,
    ) -> models.Storage:
        ...
