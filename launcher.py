import asyncio
import pathlib

import aiohttp
import discord
from discord.ext import commands
import dotenv
import orjson

from ttinfo import Bot, LogHandler, Pool, TycoonClient


async def main():
    env = dotenv.dotenv_values()
    async with (
        Pool(
            database=env["postgres_db"],
            user=env["postgres_user"],
            password=env["postgres_password"],
            host=env["postgres_host"],
            command_timeout=1,
            min_size=1,
            max_size=25,
        ) as pool,
        aiohttp.ClientSession(json_serialize=lambda x: str(orjson.dumps(x), "utf-8")) as session,
        Bot(
            prefix=commands.when_mentioned,
            intents=discord.Intents.all(),
            env_values=env,
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

        log_handler.info("Starting bot")
        log_handler.info(f"pool: {pool}")
        log_handler.info(f"http_session: {tycoon_client}")

        token: str = env["discord_token"]  # type: ignore
        await bot.start(token)


if __name__ == "__main__":
    asyncio.run(main())
