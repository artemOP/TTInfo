from __future__ import annotations

from enum import Enum
from typing_extensions import Self

__all__ = "Method", "Server", "JobGroups", "Stats", "Config"


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
    citizen = "Unemployed"
    leisurepilot = "Leisure Pilot"
    dockhandler = "Dock Handler"
    aerialfire = "Aerial Firefighter"
    hunter = "Wildlife Hunter"
    rts_professional = "R.T.S. Professional"
    fisher = "Fisherman"
    quarry = "Quarry Worker"
    garbage = "Garbage Collector"
    metermaid = "Parking Enforcment"
    collinsco_boat_job = "CollinsCo Seaman"
    trucker = "Trucker"
    collinsco_plane_job = "CollinsCo Flyie Boi"
    collinsco_train_job = "CollinsCo Trainy Boi"
    rts_job = "R.T.S. Transporter"
    busdriver = "Bus Driver"
    mechanic = "Mechanic"
    collinsco_cabbie_job = "CollinsCo Cabbies"
    pigs_job = "P.I.G.S. Robberrery"
    cleanup = "Beach Clean Up"
    delivery_ups = "UPS Delivery"
    emergency = "EMS / Paramedic"
    conductor = "Train Conductor"
    pizza = "Pizza Delivery"
    postop = "PostOP Employee"
    racer = "Street Racer"
    coastguard = "Coast Guard"
    helicopterpilot = "Helicopter Pilot"
    delivery_transformer = "Transformer Repair"
    firefighter = "Firefighter"
    pilot = "Airline Pilot"
    cargopilot = "Cargo Pilot"

    default = None

    @classmethod
    def _missing_(cls, value: object) -> Self:
        return cls.default


class Stats(Enum):
    firefighter_streak_record = "firefighter streak record"
    omni_void_leaderboard = "omni void leaderboard"
    ems_streak_record = "ems streak record"
    ems_deliveries = "ems deliveries"
    houses_crafted = "houses crafted"
    toll_paid = "toll paid"
    trap_paid = "trap paid"
    drops_collected = "drops collected"
    quarry_excavate = "quarry excavate"
    quarry_coop = "quarry coop"
    quarry_deliver = "quarry deliver"
    quarry_solo = "quarry solo"
    vehicles_crafted = "vehicles crafted"
    eastereggs_pickup = "easter eggs picked up"
    maid_maxscans = "maid max scans"
    maid_ticket = "maid ticket"


class Config(Enum):
    omni_busdriver = "Bus Job"
    omni_businesses = "Businesses"
    omni_garbage = "Garages"
    omni_helitour = "Heli Job"
    omni_paramedic = "EMS/Paramedic"
    omni_pax = "Conductor"
    omni_postop_ground = "PostOP Ground"
    omni_postop_air = "PostOP Air"
    omni_self_storage = "Self Storage"
    vrp = "Houses, House contents"
