from __future__ import annotations

from copy import deepcopy
from typing import TYPE_CHECKING, List, Optional, Any

import discord
from discord import Embed, Interaction, app_commands, ui
from discord.components import SelectOption
from discord.interactions import Interaction
from discord.ui import Modal, Select, TextInput
from discord.utils import MISSING

from ttinfo.core import Bot

from ...core.utils.paginators import BaseView

if TYPE_CHECKING:

    from discord import Interaction, Embed
    from discord.ui import Button, Select

    from ...core import Bot


class Builder(BaseView):

    def __init__(self, embed: Embed, *, timeout: float | None = 180):
        super().__init__(timeout=timeout)
        self.embed = embed

    def update_counters(self) -> None:
        self.character_count.label = f"{len(self.embed)} / 6000"
        self.field_count.label = f"{len(self.embed.fields or [])} / 25"

    @discord.ui.button(label="Edit", disabled=True, row=0)
    async def edit(self, interaction: Interaction, button: Button):
        return await interaction.response.defer()

    @discord.ui.button(label="Embed", style=discord.ButtonStyle.blurple, row=0)
    async def edit_embed(self, interaction: Interaction, button: Button):  # EmbedModal
        await interaction.response.send_modal(
            EmbedModal(
                title="Edit Embed",
                parent_view=self,
            )
        )

    @discord.ui.button(label="Author", style=discord.ButtonStyle.blurple, row=0)
    async def edit_author(self, interaction: Interaction, button: Button):  # AuthorModal
        await interaction.response.send_modal(
            AuthorModal(
                title="Edit Author",
                parent_view=self,
            )
        )

    @discord.ui.button(label="Footer", style=discord.ButtonStyle.blurple, row=0)
    async def edit_footer(self, interaction: Interaction, button: Button):  # FooterModal
        await interaction.response.send_modal(
            FooterModal(
                title="Edit Footer",
                parent_view=self,
            )
        )

    @discord.ui.button(label="URL", style=discord.ButtonStyle.blurple, row=0)
    async def edit_urls(self, interaction: Interaction, button: Button):  # URLModal
        await interaction.response.send_modal(
            URLModal(
                title="Edit URLS",
                parent_view=self,
            )
        )

    @discord.ui.button(label="Fields", disabled=True, row=1)
    async def fields(self, interaction: Interaction, button: Button):
        await interaction.response.defer()

    @discord.ui.button(label="+", style=discord.ButtonStyle.green, row=1)
    async def add_field(self, interaction: Interaction, button: Button):  # Field Modal
        await interaction.response.send_modal(
            FieldModal(
                title="Insert Field",
                parent_view=self,
            )
        )

    @discord.ui.button(label="-", style=discord.ButtonStyle.red, row=1)
    async def remove_field(self, interaction: Interaction, button: Button): ...  # IndexView

    @discord.ui.button(emoji="\U0001f58b", style=discord.ButtonStyle.blurple, row=1)
    async def edit_field(self, interaction: Interaction, button: Button): ...  # IndexView -> FieldModal

    @discord.ui.button(label="Send", row=2, disabled=True)
    async def send(self, interaction: Interaction, button: Button): ...

    @discord.ui.button(label="To Channel", style=discord.ButtonStyle.green, row=2)
    async def send_to_channel(self, interaction: Interaction, button: Button): ...  # ChannelView

    @discord.ui.button(label="To Webhook", style=discord.ButtonStyle.green, row=2)
    async def send_to_webhook(self, interaction: Interaction, button: Button): ...  # WebhookModal

    @discord.ui.button(label="To DM", style=discord.ButtonStyle.green, row=2)
    async def send_to_member(self, interaction: Interaction, button: Button): ...  # MemberView

    @discord.ui.button(label="Export JSON", row=3)
    async def export_json(self, interaction: Interaction, button: Button): ...  # Mystbin

    @discord.ui.button(label="Export JSON", row=3)
    async def import_json(self, interaction: Interaction, button: Button): ...  # Mystbin

    @discord.ui.button(emoji="\U0000274c", style=discord.ButtonStyle.red, row=3)
    async def close(self, interaction: Interaction, button: Button): ...

    @discord.ui.button(label="0 / 6000 characters", disabled=True, row=4)
    async def character_count(self, interaction: Interaction, button: Button): ...

    @discord.ui.button(label="0 / 25 fields", disabled=True, row=4)
    async def field_count(self, interaction: Interaction, button: Button): ...


class BaseModal(Modal):
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        self.parent_view = parent_view
        self.embed = deepcopy(self.parent_view.embed)
        super().__init__(title=title, timeout=timeout)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        if len(self.embed) > 6000:
            self.embed = deepcopy(self.parent_view.embed)
            return await interaction.response.send_message("Embed too long; Exceeded 6000 characters")

        self.parent_view.update_counters()
        await interaction.response.edit_message(view=self.parent_view, embed=self.embed)
        self.parent_view.embed = deepcopy(self.embed)

    def add_items(self, *args: ui.Item):
        for arg in args:
            self.add_item(arg)


class EmbedModal(BaseModal):  # title, link, description, colour
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)

        self.embed_title = TextInput(
            label="Embed Title",
            placeholder="Enter a title for your embed!",
            default=self.embed.title,
            max_length=256,
        )

        self.embed_description = TextInput(
            label="Embed Description",
            style=discord.TextStyle.long,
            placeholder="Enter a description for your embed",
            default=self.embed.description,
            required=False,
            max_length=4000,
        )
        self.embed_colour = TextInput(
            label="Embed Colour",
            placeholder="Enter a colour for your embed, leave blank for a random colour",
            default=str(discord.Colour.random() if not self.embed.colour else self.embed.colour),
            required=False,
        )

        self.add_items(self.embed_title, self.embed_description, self.embed_colour)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        self.embed.title = self.embed_title.value
        self.embed.description = self.embed_description.value
        self.embed.colour = int(self.embed_colour.value.lstrip("#"), 16)

        return await super().on_submit(interaction)


class AuthorModal(BaseModal):  # name, url, icon_url
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)

        self.author_name = TextInput(
            label="Author Name",
            placeholder="Enter an author name for your embed",
            default=self.embed.author.name,
            max_length=256,
        )
        self.author_url = TextInput(
            label="Author URL",
            placeholder="Enter a clickable URL for your author",
            default=self.embed.author.url,
            required=False,
        )
        self.author_icon = TextInput(
            label="Author icon",
            placeholder="Enter a profile icon for your author",
            default=self.embed.author.icon_url,
            required=False,
        )

        self.add_items(self.author_name, self.author_url, self.author_icon)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        self.embed.set_author(
            name=self.author_name,
            url=self.author_url,
            icon_url=self.author_icon,
        )
        return await super().on_submit(interaction)


class FooterModal(BaseModal):  # text, icon_url, timestamp
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)

        self.footer_text = TextInput(
            label="Footer Text",
            placeholder="Enter footer text for your embed",
            default=self.embed.footer.text,
            max_length=2048,
        )
        self.footer_icon = TextInput(
            label="Footer Icon",
            placeholder="Enter a profile icon for your footer",
            default=self.embed.footer.icon_url,
            required=False,
        )

        self.add_items(self.footer_text, self.footer_icon)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        self.embed.set_footer(
            text=self.footer_text,
            icon_url=self.footer_icon,
        )
        self.embed.timestamp = discord.utils.utcnow()
        return await super().on_submit(interaction)


class URLModal(BaseModal):  # thumbnail_url, image_url
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)

        self.image = TextInput(
            label="Image URL",
            placeholder="Enter an image URL for your embed",
            default=self.embed.image.url,
            required=False,
        )
        self.thumbnail = TextInput(
            label="Thumbnail Icon",
            placeholder="Enter a tumbnail icon for your embed",
            default=self.embed.thumbnail.url,
            required=False,
        )
        self.title_url = TextInput(
            label="Title URL",
            placeholder="Enter a clickable URL for your title",
            default=self.embed.url,
            required=False,
        )

        self.add_items(self.image, self.thumbnail, self.title_url)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        self.embed.url = self.title_url.value
        self.embed.set_image(url=self.image)
        self.embed.set_thumbnail(url=self.thumbnail)
        return await super().on_submit(interaction)


class FieldModal(BaseModal):  # name, value, inline, index
    def __init__(
        self, *, title: str, parent_view: Builder, field: Any | None = None, timeout: float | None = None
    ) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)
        self.field = field or {}
        self.field_title = TextInput(
            label="Field Title",
            placeholder="Enter a title for your field!",
            default=getattr(self.field, "name", None),
            max_length=256,
        )
        self.field_value = TextInput(
            label="Field Value",
            placeholder="Enter some content for your field",
            default=getattr(self.field, "value", None),
            max_length=1024,
        )
        self.field_inline = TextInput(
            label="Inline?",
            placeholder="T/F | Y/N",
            default="T" if getattr(self.field, "inline", False) else "F",
            required=False,
            max_length=1,
        )
        self.field_index = TextInput(
            label="Index",
            placeholder="Enter a value between 1 and 25",
            default=getattr(self.field, "index", None),
            required=False,
            max_length=2,
        )

        self.add_items(self.field_title, self.field_value, self.field_inline, self.field_index)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        if len(self.embed.fields) >= 25:
            return await interaction.response.send_message("Too many fields; Exceeded 25 fields")

        self.embed.insert_field_at(
            index=int(self.field_index.value or len(self.embed.fields)),
            name=self.field_title,
            value=self.field_value,
            inline=False if self.field_inline.value.lower() in ("f", "n") else True,
        )

        return await super().on_submit(interaction)


class WebhookModal(BaseModal): ...  # URL, name, image


class ImportModal(BaseModal): ...  # raw text | url


class IndexView(Select):  # multiselect from n rows, return value
    def __init__(self, parent_view: Builder, max_options=25) -> None:
        self.parent_view = parent_view

        options = [
            SelectOption(
                label=f"{i+1}. {field.name}",
                value=str(i),
            )
            for i, field in enumerate(self.parent_view.embed.fields)
        ]

        super().__init__(
            placeholder="Which indexes would you like to remove",
            min_values=1,
            max_values=max_options,
            options=options,
        )

    async def callback(self, interaction: Interaction[Bot]) -> Any:
        raise NotImplemented


class DeleteIndex(IndexView):
    async def callback(self, interaction: Interaction[Bot]) -> Any:
        for row in self.values:
            self.parent_view.embed.remove_field(int(row))

        self.parent_view.update_counters()
        await self.parent_view.response.edit(view=self.parent_view, embed=self.parent_view.embed)
        await interaction.response.edit_message(content=f"{len(self.values)} fields deleted", view=None)


class EditIndex(IndexView):
    def __init__(self, parent_view: Builder) -> None:
        super().__init__(parent_view, 1)

    async def callback(self, interaction: Interaction[Bot]) -> Any:
        index = int(self.values[0])

        await interaction.response.send_modal(
            FieldModal(
                title="Edit Field",
                parent_view=self.parent_view,
                field=self.parent_view.embed.fields[index],
            )
        )


class MemberView(BaseView): ...  # Select Member


class ChannelView(BaseView): ...  # Select Channel
