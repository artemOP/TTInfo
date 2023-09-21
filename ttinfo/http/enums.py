from __future__ import annotations

from enum import Enum
from typing_extensions import Self

__all__ = "Method", "Server", "JobGroups", "Stats", "Config", "Skill", "SkillShort", "Weather"


class Method(Enum):
    get = "GET"
    post = "POST"
    put = "PUT"
    patch = "PATCH"
    delete = "DELETE"


class Server(Enum):
    main = "/main"
    beta = "/beta"


class JobGroups(Enum):
    aerialfire = "Aerial Firefighter"
    busdriver = "Bus Driver"
    cargopilot = "Cargo Pilot"
    citizen = "Unemployed"
    cleanup = "Beach Clean Up"
    coastguard = "Coast Guard"
    collinsco_boat_job = "CollinsCo Seaman"
    collinsco_cabbie_job = "CollinsCo Cabbies"
    collinsco_plane_job = "CollinsCo Flyie Boi"
    collinsco_train_job = "CollinsCo Trainy Boi"
    conductor = "Train Conductor"
    delivery_transformer = "Transformer Repair"
    delivery_ups = "UPS Delivery"
    dockhandler = "Dock Handler"
    emergency = "EMS / Paramedic"
    firefighter = "Firefighter"
    fisher = "Fisherman"
    garbage = "Garbage Collector"
    helicopterpilot = "Helicopter Pilot"
    hunter = "Wildlife Hunter"
    leisurepilot = "Leisure Pilot"
    mechanic = "Mechanic"
    metermaid = "Parking Enforcment"
    pigs_job = "P.I.G.S. Robberrery"
    pilot = "Airline Pilot"
    pizza = "Pizza Delivery"
    postop = "PostOP Employee"
    quarry = "Quarry Worker"
    racer = "Street Racer"
    rts_job = "R.T.S. Transporter"
    rts_professional = "R.T.S. Professional"
    trucker = "Trucker"

    default = None

    @classmethod
    def _missing_(cls, value: object) -> Self:
        return cls.default


class Stats(Enum):
    drops_collected = "drops collected"
    eastereggs_pickup = "easter eggs picked up"
    ems_deliveries = "ems deliveries"
    ems_streak_record = "ems streak record"
    firefighter_streak_record = "firefighter streak record"
    houses_crafted = "houses crafted"
    maid_maxscans = "maid max scans"
    maid_ticket = "maid ticket"
    omni_void_leaderboard = "omni void leaderboard"
    quarry_coop = "quarry coop"
    quarry_deliver = "quarry deliver"
    quarry_excavate = "quarry excavate"
    quarry_solo = "quarry solo"
    toll_paid = "toll paid"
    trap_paid = "trap paid"
    vehicles_crafted = "vehicles crafted"


class Config(Enum):
    omni_busdriver = "Bus Job"
    omni_businesses = "Businesses"
    omni_garbage = "Garages"
    omni_helitour = "Heli Job"
    omni_paramedic = "EMS/Paramedic"
    omni_pax = "Conductor"
    omni_postop_air = "PostOP Air"
    omni_postop_ground = "PostOP Ground"
    omni_self_storage = "Self Storage"
    rts_ground = "RTS Ground"
    vrp = "Houses, House contents"

    custom_vehicle_classes = "Custom Vehicle Classes"  # fix: resource is `custom-vehicle-classes`


class Skill(Enum):  # todo: fill
    animals = "Animal Handling"
    bus = "Bus Driver"
    business = "Businesses"
    cargos = "Cargo Pilot"
    casino = "casino"
    ems = "EMS"
    farming = "Farming"
    fire = "Firefighting"
    fishing = "Fishing"
    garbage = "Garbage"
    heli = "Helicopter"
    mechanic = "Mechanic"
    mining = "Quarry Worker"
    pilot = "Airline"
    player = "Player"
    police = "Police Officer"
    postop = "PostOP"
    racing = "Racing"
    strength = "Physical Strength"
    train = "Train Conductor"
    trucking = "Trucking"

    skill = "Hunting"  # fix: aptitude is `hunting`, but skill is named `skill`


class SkillShort(Enum):  # todo: fill
    ...


class Weather(Enum):
    BLIZZARD = "BLIZZARD"
    CLEAR = "CLEAR"
    CLEARING = "CLEARING"
    CLOUDS = "CLOUDS"
    EXTRASUNNY = "EXTRASUNNY"
    FOGGY = "FOGGY"
    NEUTRAL = "NEUTRAL"
    OVERCAST = "OVERCAST"
    RAIN = "RAIN"
    SMOG = "SMOG"
    SNOW = "SNOW"
    SNOWLIGHT = "SNOWLIGHT"
    THUNDER = "THUNDER"
    XMAS = "XMAS"
