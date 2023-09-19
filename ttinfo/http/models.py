from datetime import timedelta
from typing import TypedDict, Any
from typing_extensions import NotRequired

from yarl import URL

from .enums import Skill, SkillShort, JobGroups, Stats


class Charges(TypedDict):
    charges: int


class SOTD(TypedDict):
    skill: Skill
    aptitude: str  # replace with enum
    bonus: int
    short: SkillShort


class Coords(TypedDict):
    x: float
    y: float
    z: float
    h: float


class RaceTrack(TypedDict):
    race_type: str  # replace with enum
    name: str
    wr: dict[str, Any]
    race_class: str
    length: int
    race_id: str  # this is gonna need converting to an int with some tomfoolery


class RaceMap(TypedDict):
    name: str
    checkpoints: list[Coords]
    start: Coords
    finish: Coords


class Weather(TypedDict):
    weather: str  # replace with enum
    hour: int
    minute: int


class Forecast(TypedDict):
    forecast: list[str]  # use weather enum


class Player(TypedDict):
    name: str
    source_id: int
    vpr_id: int
    avatar_url: URL
    staff: bool
    job: JobGroups
    donator: bool


class DXP(TypedDict):
    active: bool
    host: NotRequired[str]
    time_remaining: NotRequired[timedelta]
    extra: NotRequired[timedelta]
    runtime: NotRequired[timedelta]


class Server(TypedDict):
    dxp: DXP
    limit: int
    motd: str
    name: str
    number: int
    region: str
    uptime: timedelta


class Players(TypedDict):
    players: list[Player]
    server: Server


class VehicleData(TypedDict):
    has_trailer: bool
    owned_vehicles: list[str]
    trailer: str
    vehicle_class: int
    vehicle_label: str
    vehicle_model: int
    vehicle_name: str
    vehicle_spawn: str
    vehicle_type: str  # probably an enum


class Position(TypedDict):
    player: Player
    position: Coords
    vehicle_data: VehicleData
    history: NotRequired[list[Coords]]


class Positions(TypedDict):
    players: list[Position]


class Top10(TypedDict):
    stat: Stats
    top: list[dict[str, Any]]


class Config(TypedDict):
    resource: str


class Snowflake2User(TypedDict):
    discord_id: int
    user_id: int


class Streak(TypedDict):
    days: int
    record: int
    streak: int
