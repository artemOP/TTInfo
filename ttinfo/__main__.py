import asyncio
import pathlib
import tomllib

import aiohttp
import discord
from discord.ext import commands
import orjson

from ttinfo import Bot, LogHandler, Pool, TycoonClient
from .http.enums import Server


async def main():
    with open("ttinfo/core/config/config.toml", "rb") as f:
        config = tomllib.load(f)

    async with (
        Pool(
            database=config["postgres"]["db"],
            user=config["postgres"]["user"],
            password=config["postgres"]["password"],
            host=config["postgres"]["host"],
            command_timeout=1,
            min_size=1,
            max_size=25,
        ) as pool,
        aiohttp.ClientSession(json_serialize=lambda x: str(orjson.dumps(x), "utf-8")) as session,
        Bot(
            prefix=commands.when_mentioned,
            intents=discord.Intents.all(),
            config=config,
            extension_path=pathlib.Path("ttinfo/extensions"),
        ) as bot,
        TycoonClient(bot=bot, pool=pool, session=session) as tycoon_client,
        LogHandler(bot=bot) as log_handler,
    ):
        bot.logging_queue = asyncio.Queue()
        bot.log_handler = log_handler
        bot.tycoon_client = tycoon_client
        bot.pool = pool
        bot.session = session
        bot.owner_ids = set(config["discord"]["owners"])

        try:
            sotd = await tycoon_client.fetch_sotd(Server.main, await tycoon_client.get_donated_key(Server.main))
        except Exception as e:
            log_handler.exception(e)
        else:
            bot.activity = discord.Game(name=f"SOTD: {sotd.short} - {sotd.bonus}%")

        log_handler.info("Starting bot")
        log_handler.info(f"{pool} connected")
        log_handler.info(f"{tycoon_client} connected")

        token: str = config["discord"]["token"]
        await bot.start(token)


if __name__ == "__main__":
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        pass
