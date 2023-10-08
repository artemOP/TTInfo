from __future__ import annotations

from datetime import datetime, timedelta
from typing import Any, TypeAlias, NamedTuple, Optional

from yarl import URL

from . import enums


class SOTD(NamedTuple):
    skill: enums.Skill
    aptitude: str  # replace with enum
    bonus: int
    short: enums.SkillShort


class Coords(NamedTuple):
    x: float
    y: float
    z: float
    h: Optional[float] = None
    index: Optional[int] = None


class RaceTrack(NamedTuple):
    race_type: enums.RaceType
    name: str
    wr: RaceWorldRecord
    race_class: str
    length: int
    race_id: str
    index: int  # used for fetch_racing_map


class RaceMap(NamedTuple):
    name: str
    checkpoints: list[Coords]
    start: Coords
    finish: Coords


class RaceStat(NamedTuple):
    achived: datetime
    time: timedelta
    track_id: int
    vehicle: str


class RaceWorldRecord(NamedTuple):
    vehicle: str
    name: str
    time: int
    date: int


class Weather(NamedTuple):
    weather: enums.Weather
    hour: int
    minute: int


class Player(NamedTuple):
    name: str
    source_id: int
    vrp_id: int
    job: enums.JobGroups
    avatar_url: Optional[URL] = None
    staff: Optional[bool] = None
    donator: Optional[bool] = None


class DXP(NamedTuple):
    active: bool
    host: Optional[str] = None
    time_remaining: Optional[timedelta] = None
    extra: Optional[timedelta] = None
    runtime: Optional[timedelta] = None


class Server(NamedTuple):
    dxp: DXP
    limit: int
    motd: str
    name: str
    number: int
    region: str
    uptime: timedelta


class Players(NamedTuple):
    players: list[Player]
    server: Server


class VehicleData(NamedTuple):
    has_trailer: bool
    owned_vehicles: dict[str, str]
    trailer: str
    vehicle_class: int
    vehicle_label: str
    vehicle_model: int
    vehicle_name: str
    vehicle_spawn: str
    vehicle_type: enums.VehicleType


class Position(NamedTuple):
    player: Player
    position: Coords
    vehicle_data: VehicleData
    history: Optional[list[Coords]] = None


class Top10(NamedTuple):
    stat: enums.Stats
    top: list[dict[str, Any]]


class Snowflake2User(NamedTuple):
    discord_id: int
    user_id: int


class Streak(NamedTuple):
    days: int
    record: int
    streak: int


class Vehicle(NamedTuple):
    name: str
    vehicle_type: str
    trunk_size: int


class Trunk(NamedTuple):
    inventory: dict[str, int]
    vehicle_type: str
    vehicle_name: str


class Pot(NamedTuple):
    position: Coords
    age: timedelta
    pot_type: str  # ENUM


class Pots(NamedTuple):
    pots: list[Pot]
    total: int


class Item(NamedTuple):
    name: str
    amount: int
    html_name: Optional[str] = None
    weight: Optional[float] = None


class Skills(NamedTuple):
    business: Optional[float] = None
    casino: Optional[float] = None
    ems: Optional[float] = None
    fire: Optional[float] = None
    farming: Optional[float] = None
    fishing: Optional[float] = None
    mining: Optional[float] = None
    hunting: Optional[float] = None
    strength: Optional[float] = None
    cargos: Optional[float] = None
    heli: Optional[float] = None
    piloting: Optional[float] = None
    player: Optional[float] = None
    racing: Optional[float] = None
    bus: Optional[float] = None
    train: Optional[float] = None
    garbage: Optional[float] = None
    mechanic: Optional[float] = None
    postop: Optional[float] = None
    trucking: Optional[float] = None


class Data(NamedTuple):
    user_id: int
    accepting_player_ems: bool
    chat_prefix: str
    chat_title: str
    current_loan: str
    customization: dict[str, list[int] | int]
    gaptitudes: Skills
    gaptitudes_v: Skills
    groups: dict[str, bool]
    health: int
    hunger: int
    inventory: dict[str, Item]
    ironman: bool
    licenses: dict[str, int]
    loans: dict[str, bool]
    position: Coords
    thirst: int
    vehicle: VehicleData
    data_type: enums.DataType


class DataAdv(NamedTuple):
    user_id: int
    accepting_player_ems: bool
    chat_prefix: str
    chat_title: str
    current_loan: str
    customization: dict[str, list[int] | int]
    gaptitudes: Skills
    gaptitudes_v: Skills
    groups: dict[str, bool]
    health: int
    hunger: int
    inventory: dict[str, Item]
    ironman: bool
    licenses: dict[str, int]
    loans: dict[str, bool]
    position: Coords
    thirst: int
    vehicle: VehicleData
    data_type: enums.DataType


class Wealth(NamedTuple):
    user_id: int
    bank: int
    loan: int
    wallet: int
    offline: bool


class ItemInfo(NamedTuple):
    exists: bool
    item_id: str
    description: Optional[str] = None
    name: Optional[str] = None
    weight: Optional[float] = None


class UserFaction(NamedTuple):
    is_in_faction: bool
    user_id: int
    faction_id: Optional[int] = None


class FactionMember(NamedTuple):
    admin: bool
    earned: float
    joined: datetime
    management: bool
    recruiter: int
    user_id: int
    username: str


class FactionMembers(NamedTuple):
    members: list[FactionMember]
    size: int


class FactionInfo(NamedTuple):
    faction_id: int
    name: str
    tag: str


class Heister(NamedTuple):
    user_id: int
    ready: bool
    cut: int


class PigsParty(NamedTuple):
    host: Heister
    take: int
    players: list[Heister]
    kills: int
    limit: int


Charges: TypeAlias = int
Config: TypeAlias = str
FactionSize: TypeAlias = int
FactionPerks: TypeAlias = int
FactionBalance: TypeAlias = int
Forecast: TypeAlias = list[enums.Weather]
OwnedBusiness: TypeAlias = dict[str, int]
OwnedVehicles: TypeAlias = dict[str, Vehicle]
Positions: TypeAlias = list[Position]
RaceStats: TypeAlias = list[RaceStat]
RTSVehicles: TypeAlias = list[str]
Stats: TypeAlias = dict[enums.Stats, int]
Storage: TypeAlias = dict[str, Item]
Storages: TypeAlias = dict[str, Storage]
Trunks: TypeAlias = dict[str, Trunk]
