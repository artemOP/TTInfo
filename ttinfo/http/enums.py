from __future__ import annotations

from enum import Enum
from typing_extensions import Self

__all__ = (
    "Method",
    "Config",
    "JobGroups",
    "RaceType",
    "Server",
    "Skill",
    "SkillShort",
    "Stats",
    "VehicleType",
    "Weather",
    "DataType",
)


class Method(Enum):
    get = "GET"
    post = "POST"
    put = "PUT"
    patch = "PATCH"
    delete = "DELETE"


class Server(Enum):
    legacy = "/main"
    main = "/beta"


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
    aerialfire_earnings = "Aerial Firefighter Earnings"
    aerialfire_finished = "Aerial Fires Extinguished"
    aerialfire_finished_747fire = "Aerial Fires Extinguished (747)"
    aerialfire_finished_cg130h = "Aerial Fires Extinguished (CG130H)"
    aerialfire_finished_cl415f = "Aerial Fires Extinguished (CL415F)"
    aerialfire_finished_tula = "Aerial Fires Extinguished (Tula)"
    bus_behemoth_completed = "Bus Driver Behemoth Route(s) Completed"
    bus_fares_earned = "Bus Driver Total Fares"
    bus_money_earned = "Bus Driver Money Earned"
    bus_route_completed = "Bus Driver Completed Route(s)"
    concrete_sold = "Trucking Concrete Sold"
    drops_collected = "Treasure Chests Collected"
    eastereggs_pickup = "EXP Bonuses Collected"
    ems_deliveries = "Completed Paramedic Callouts"
    ems_streak_record = "Highest Paramedic Streak"
    firefighter_streak_record = "Highest Firefighter Streak"
    garbage_routes_finished = "Garbage Routes Finished"
    garbage_trash_collected = "Garbage Bags Collected"
    houses_crafted = "Trucking Completed Houses"
    hunting_missions = "Hunting Missions Completed"
    hunting_skin = "Animals Gutted"
    hunting_skin_mission = "Mission Animals Gutted"
    hunting_zones = "Hunting Zones Cleared"
    hw22_zombies_looted = "Zombies Looted 2022"
    maid_maxscans = "Highest Parking Enforcer Streak"
    maid_tickets = "Completed Parking Enforcer Scans"
    mechanic_flatbed_dropoffs = "Mechanic Flatbed Dropoffs"
    mechanic_semi_dropoffs = "Mechanic Semi Dropoffs"
    mechanic_skylift_dropoffs = "Mechanic Skylift Dropoffs"
    quarry_coop = "Contributed Quarry Deliveries"
    quarry_deliver = "Total Quarry Drop-offs"
    quarry_excavate = "Excavator Buckets Filled"
    quarry_solo = "Solo Quarry Drop-offs"
    surveying_missions = "Surveying Missions Completed"
    surveying_steps = "Surveyed Areas"
    toll_paid = "Toll Fines"
    trap_paid = "Speed Trap Fines"
    vehicles_crafted = "Crafted Vehicle Shipments"
    xmplow_bonus22 = "Highest Snowplowing Convoy Bonus 2022"
    xmplow_dist22 = "Snowplowing Total Distance (m) 2022"
    xmplow_pay22 = "Snowplowing Pay Earned 2022"
    xmplow_road22 = "Snowplowing Roads Cleared (m²) 2022"
    xmplow_salt22 = "Snowplowing Salted Roads (m²) 2022"
    xmplow_snow22 = "Snowplowing Snow Removed (m³) 2022"
    xmplow_tokens22 = "Snowplowing Tokens Earned 2022"
    xmpresent_collected = "Christmas Presents Collected"
    MP0_DIST_SWIMMING = "Swimming Distance"
    MP0_NUMBER_NEAR_MISS = "Near Misses"
    MP0_FASTEST_SPEED = "Fastest Speed"
    MP0_DIST_DRIVING_PLANE = "Plane Distance"
    MP0_DIST_WALKING = "Walking Distance"
    MP0_DIST_RUNNING = "Running Distance"
    MP0_DIST_DRIVING_BOAT = "Boat Distance"
    MP0_DIST_DRIVING_CAR = "Car Distance"
    MP0_DIST_DRIVING_HELI = "Helicopter Distance"


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


class Skill(Enum):
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


class VehicleType(Enum):
    foot = "On Foot"

    boat = "Boat"
    deluxo = "Flying Car"
    helicopter = "Helicopter"
    land = "Land"
    plane = "Plane"
    train = "Train"

    @classmethod
    def _missing_(cls, value: object) -> Self:
        return cls.foot


class RaceType(Enum):
    ground = "Ground"


class DataType(Enum):
    data = "Online Data"
    data_offline = "Offline Data"
