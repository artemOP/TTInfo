from __future__ import annotations

from typing import TYPE_CHECKING

import discord
from discord import ui, ButtonStyle


if TYPE_CHECKING:
    from discord import Embed, Interaction, InteractionMessage


class BaseView(ui.View):
    response: InteractionMessage

    def __init__(self, *, timeout: float | None = 180):
        super().__init__(timeout=timeout)

    async def on_timeout(self) -> None:
        if not hasattr(self, "response"):
            raise AttributeError("A response must be provided for the view to timeout")
        try:
            await self.response.edit(view=None)
        except Exception:
            pass

    async def interaction_check(self, interaction: Interaction, /) -> bool:
        if not hasattr(self, "response") or not getattr(self.response, "interaction", None):
            return True

        assert self.response.interaction, "Response seems to be missing an interaction, please reach out to a developer"
        if self.response.interaction.user != interaction.user:
            await interaction.response.send_message("This is not your view, please launch your own", ephemeral=True)
            return False
        return True


class ButtonPaginatedEmbeds(BaseView):
    def __init__(self, embed_list: list[Embed], timeout=30):
        super().__init__(timeout=timeout)
        self.embedlist = embed_list or [discord.Embed()]
        self.pages = [discord.SelectOption(label=f"Page {i+1}", value=str(i)) for i in range(0, len(embed_list))]
        self.page_select.options = self.pages[:25]
        self.page = 0

    @discord.ui.button(label="First page", style=ButtonStyle.red)
    async def first(self, interaction: Interaction, button: discord.ui.Button):
        self.page = 0
        self.page_select.options = self.pages[max(self.page - 12, 0) : min(self.page + 12, len(self.pages))]
        await interaction.response.edit_message(embed=self.embedlist[0], view=self)

    @discord.ui.button(label="Previous page", style=ButtonStyle.red)
    async def previous(self, interaction: Interaction, button: discord.ui.Button):
        if self.page >= 1:
            self.page -= 1
        else:
            self.page = len(self.embedlist) - 1
        self.page_select.options = self.pages[max(self.page - 12, 0) : min(self.page + 12, len(self.pages))]
        await interaction.response.edit_message(embed=self.embedlist[self.page], view=self)

    @discord.ui.button(label="Stop", style=ButtonStyle.grey)
    async def exit(self, interaction: Interaction, button: discord.ui.Button):
        await self.on_timeout()

    @discord.ui.button(label="Next Page", style=ButtonStyle.green)
    async def next(self, interaction: Interaction, button: discord.ui.Button):
        self.page += 1
        if self.page > len(self.embedlist) - 1:
            self.page = 0
        self.page_select.options = self.pages[max(self.page - 12, 0) : min(self.page + 12, len(self.pages))]
        await interaction.response.edit_message(embed=self.embedlist[self.page], view=self)

    @discord.ui.button(label="Last Page", style=ButtonStyle.green)
    async def last(self, interaction: Interaction, button: discord.ui.Button):
        self.page = len(self.embedlist) - 1
        self.page_select.options = self.pages[max(self.page - 12, 0) : min(self.page + 12, len(self.pages))]
        await interaction.response.edit_message(embed=self.embedlist[self.page], view=self)

    @discord.ui.select(placeholder="Page Select")
    async def page_select(self, interaction: Interaction, select: discord.ui.Select):
        self.page = int(select.values[0])
        self.page_select.options = self.pages[max(self.page - 12, 0) : min(self.page + 12, len(self.pages))]
        await interaction.response.edit_message(embed=self.embedlist[self.page], view=self)


class JumpLink(BaseView):
    def __init__(self, jumplink: str, *, timeout: float | None = None):
        super().__init__(timeout=timeout)

        self.button = discord.ui.Button(label="Go to", url=jumplink)
        self.add_item(self.button)
