# create task that loops and stores the results of fetch_players and fetch_positions
# subscribe to specific users to track and plot on demand

from __future__ import annotations

from datetime import time, timezone
from typing import TYPE_CHECKING

from discord.ext import commands, tasks

from ...http.enums import Server
from ...core.utils.errors import TTInfoException


if TYPE_CHECKING:
    from ttinfo.core.bot import Bot

    from ...http.models import Dealership, DealershipList, VehicleInfo


class DealershipLookup(commands.Cog):
    vehicle: DealershipList = []
    dealership: Dealership = {}

    def __init__(self, bot: Bot):
        self.bot = bot
        self.logger = self.bot.log_handler.log.getChild(self.qualified_name)

    async def cog_load(self) -> None:
        self.logger.info(f"{self.qualified_name} cog loaded")
        self.logger.setLevel(10)
        self.task.add_exception_type(TTInfoException)

        self.task.start()

    async def cog_unload(self) -> None:
        self.logger.info(f"{self.qualified_name} cog unloaded")
        if self.task.is_running():
            self.task.cancel()

        for vehicles in self.dealership.values():
            for vehicle in vehicles:
                self.bot.dispatch("vehicle_expire", vehicle)

    @tasks.loop(time=time(hour=1, tzinfo=timezone.utc))
    async def task(self):
        key = await self.bot.tycoon_client.get_donated_key(Server.main)
        dealership = await self.bot.tycoon_client.fetch_dealership(Server.main, key)
        for category, new_vehicles in dealership.items():
            old_vehicles = set(self.dealership.get(category, []))
            new_vehicles = set(new_vehicles)

            expired_vehicles = old_vehicles - new_vehicles
            new_vehicles = new_vehicles - old_vehicles

            for vehicle in expired_vehicles:
                self.bot.dispatch("vehicle_expire", vehicle)
            for vehicle in new_vehicles:
                self.bot.dispatch("vehicle_add", vehicle)

        self.dealership = dealership

    @commands.Cog.listener("on_vehicle_add")
    async def on_vehicle_add(self, vehicle: VehicleInfo) -> None:
        self.logger.debug(f"{vehicle.displayName} has been added to the dealership")

    @commands.Cog.listener("on_vehicle_expire")
    async def on_vehicle_expire(self, vehicle: VehicleInfo) -> None:
        self.logger.debug(f"{vehicle.displayName} is no longer in the dealership")

    @task.before_loop
    async def wait_for_ready(self):
        await self.bot.wait_until_ready()
        self.vehicles = await self.bot.tycoon_client.fetch_vehicle_list()


async def setup(bot):
    await bot.add_cog(DealershipLookup(bot))
