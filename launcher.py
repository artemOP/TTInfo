import asyncio
import pathlib

import aiohttp
import asyncpg
import discord
from discord.ext import commands
import dotenv
import orjson

import ttinfo
from ttinfo import LogHandler


async def main():
    env = dotenv.dotenv_values()
    async with (
        aiohttp.ClientSession(json_serialize=lambda x: str(orjson.dumps(x), "utf-8")) as http_session,
        asyncpg.create_pool(
            database=env.get("postgres_db"),
            user=env.get("postgres_user"),
            password=env.get("postgres_password"),
            command_timeout=1,
            min_size=1,
            max_size=25,
        ) as pool,
        ttinfo.Bot(
            prefix=commands.when_mentioned,
            intents=discord.Intents.all(),
            env_values=env,
            extension_path=pathlib.Path("ttinfo/extensions"),
        ) as bot,
        LogHandler(bot=bot) as log_handler,
    ):

        bot.logging_queue = asyncio.Queue()
        bot.log_handler = log_handler
        bot.http_session = http_session
        bot.pool = pool

        log_handler.info("Starting bot")
        log_handler.info(f"pool: {pool}")
        log_handler.info(f"http_session: {http_session}")

        await bot.start(env.get("discord_token"))


if __name__ == "__main__":
    asyncio.run(main())
