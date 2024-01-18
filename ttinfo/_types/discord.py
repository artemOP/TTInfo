from __future__ import annotations

from typing import TYPE_CHECKING

import discord

if TYPE_CHECKING:
    from discord import Guild, Member, Message

    from ..core.bot import Bot


class Interaction(discord.Interaction):
    client: Bot


class ComponentInteraction(Interaction):
    message: Message


class GuildInteraction(Interaction):
    user: Member
    guild: Guild


class ComponentGuildInteraction(ComponentInteraction, GuildInteraction):
    ...
