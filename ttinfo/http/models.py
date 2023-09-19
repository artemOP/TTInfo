from datetime import timedelta
from typing import Any, TypeAlias, TypedDict
from typing_extensions import NotRequired

from yarl import URL

from . import enums


class Charges(TypedDict):
    charges: int


class SOTD(TypedDict):
    skill: enums.Skill
    aptitude: str  # replace with enum
    bonus: int
    short: enums.SkillShort


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


class RaceStat(TypedDict):
    achived: float
    time: int
    track_id: int
    vehicle: str


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
    job: enums.JobGroups
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
    stat: enums.Stats
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


class Vehicle(TypedDict):
    name: str
    vehicle_type: str
    trunk_size: int


class Trunk(TypedDict):
    inventory: dict[str, int]
    vehicle_type: str
    vehicle_name: str


class Pot(TypedDict):
    position: Position
    age: int
    pot_type: str  # ENUM


class Pots(TypedDict):
    pots: list[Pot]
    total: int


class Stats(TypedDict):
    amount: int
    stat: enums.Stats


class Item(TypedDict):
    name: str
    html_name: NotRequired[str]
    amount: int
    weight: NotRequired[float]


class Storage(TypedDict):
    name: str
    items: dict[str, Item]


class Storages(TypedDict):
    user_id: int
    storages: dict[str, Storage]


class Skills(TypedDict):
    business: NotRequired[float]
    casino: NotRequired[float]
    ems: NotRequired[float]
    fire: NotRequired[float]
    farming: NotRequired[float]
    fishing: NotRequired[float]
    mining: NotRequired[float]
    hunting: NotRequired[float]
    strength: NotRequired[float]
    cargos: NotRequired[float]
    heli: NotRequired[float]
    piloting: NotRequired[float]
    player: NotRequired[float]
    racing: NotRequired[float]
    bus: NotRequired[float]
    train: NotRequired[float]
    garbage: NotRequired[float]
    mechanic: NotRequired[float]
    postop: NotRequired[float]
    trucking: NotRequired[float]


class Data(TypedDict):
    user_id: int
    accepting_player_ems: bool
    chat_prefix: str
    chat_title: str
    current_loan: str
    customization: dict[str, list[int] | int]
    gaptitudes: dict[str, Skills]
    gaptitudes_v: dict[str, Skills]
    groups: dict[str, bool]
    health: int
    hunger: int
    inventory: dict[str, Storage]
    ironman: bool
    licenses: dict[str, int]
    loans: dict[str, bool]
    position: Coords
    thirst: int
    vehicle: VehicleData
    data_type: str  # ENUM


class DataAdv(TypedDict):
    user_id: int
    AcceptingPlayerEMS: bool
    chat_prefix: str
    chat_title: str
    current_loan: str
    customization: dict[str, list[int] | int]
    gaptitudes: dict[str, Skills]
    gaptitudes_v: dict[str, Skills]
    groups: dict[str, bool]
    health: int
    hunger: int
    inventory: dict[str, Storage]
    ironman: bool
    licenses: dict[str, int]
    loans: dict[str, bool]
    position: Coords
    thirst: int
    vehicle: VehicleData
    data_type: str  # ENUM


class Wealth(TypedDict):
    user_id: int
    bank: int
    loan: int
    wallet: int


class ItemInfo(TypedDict):
    description: NotRequired[str]
    exists: bool
    item_id: str
    name: NotRequired[str]
    weight: NotRequired[float]


class UserFaction(TypedDict):
    faction_id: NotRequired[int]
    is_in_faction: bool
    user_id: int


class FactionSize(TypedDict):
    size: int


class FactionMember(TypedDict):
    admin: bool
    earned: float
    joined: float
    management: bool
    recruiter: int
    user_id: int
    username: list[int]


class FactionMembers(TypedDict):
    members: list[FactionMember]
    size: int


class FactionPerks(TypedDict):
    perks: int


class FactionBalance(TypedDict):
    balance: int


class FactionInfo(TypedDict):
    faction_id: int
    name: str
    tag: str


class RTSVehicles(TypedDict):
    vehicles: list[str]


class Heister(TypedDict):
    user_id: int
    ready: bool
    cut: int


class PigsParty(TypedDict):
    host: Heister
    take: int
    players: list[Heister]
    kills: int
    limit: int


OwnedBusiness: TypeAlias = dict[str, int]
OwnedVehicles: TypeAlias = dict[str, Vehicle]
Trunks: TypeAlias = dict[str, Trunk]
RaceStats: TypeAlias = list[RaceStat]
