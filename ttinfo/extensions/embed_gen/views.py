from __future__ import annotations

from copy import deepcopy
from typing import TYPE_CHECKING, Any, Coroutine

import discord
from discord import Interaction, app_commands, ui, SelectOption, User, Member
from discord.ext import commands
from discord.ui import Modal, Select, TextInput, ChannelSelect, UserSelect

import orjson

from ttinfo.core import Bot

from ...http.models import MystbinPaste, MystbinFile
from ...http.enums import DataType
from ...core.utils import formatters
from ...core.utils.paginators import BaseView, JumpLink
from ...core.utils.errors import ButtonOnCooldown

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
    async def remove_field(self, interaction: Interaction, button: Button):  # IndexView
        if not self.embed.fields:
            return await interaction.response.send_message("No fields to delete", ephemeral=True, delete_after=15)
        view = BaseView()
        view.add_item(DeleteIndex(self, placeholder="Which indexes would you like to remove?"))
        await interaction.response.send_message(view=view, ephemeral=True)
        view.response = await interaction.original_response()

    @discord.ui.button(emoji="\U0001f58b", style=discord.ButtonStyle.blurple, row=1)
    async def edit_field(self, interaction: Interaction, button: Button):  # IndexView -> FieldModal
        if not self.embed.fields:
            return await interaction.response.send_message("No fields to edit", ephemeral=True, delete_after=15)
        view = BaseView()
        view.add_item(EditIndex(self, placeholder="Which index would you like to edit?", max_options=1))
        await interaction.response.send_message(view=view, ephemeral=True)
        view.response = await interaction.original_response()

    @discord.ui.button(label="Send", row=2, disabled=True)
    async def send(self, interaction: Interaction, button: Button):
        await interaction.response.defer()

    @discord.ui.button(label="To Channel", style=discord.ButtonStyle.green, row=2)
    async def send_to_channel(self, interaction: Interaction, button: Button):  # ChannelView
        view = SendToUserOrChannel(
            self,
            select_cls=ChannelSelect(
                placeholder="Select a channel",
                channel_types=[
                    discord.ChannelType.text,
                    discord.ChannelType.news,
                    discord.ChannelType.news_thread,
                    discord.ChannelType.public_thread,
                    discord.ChannelType.private_thread,
                ],
            ),
        )
        await interaction.response.send_message(view=view, ephemeral=True)
        view.response = await interaction.original_response()

    @discord.ui.button(label="To Webhook", style=discord.ButtonStyle.green, row=2)
    async def send_to_webhook(self, interaction: Interaction, button: Button):  # WebhookModal
        await interaction.response.send_modal(
            SendToWebhook(
                title="Send to webhook",
                parent_view=self,
            )
        )

    @discord.ui.button(label="To DM", style=discord.ButtonStyle.green, row=2)
    async def send_to_member(self, interaction: Interaction, button: Button):  # MemberView
        view = SendToUserOrChannel(
            self,
            select_cls=UserSelect(
                placeholder="Select a User",
            ),
        )
        await interaction.response.send_message(view=view, ephemeral=True)
        view.response = await interaction.original_response()

    @discord.ui.button(label="Import JSON", row=3)
    async def import_json(self, interaction: Interaction, button: Button):  # Mystbin
        await interaction.response.send_modal(
            ImportModal(
                title="Import JSON",
                parent_view=self,
            )
        )

    @discord.ui.button(label="Export JSON", row=3)
    async def export_json(self, interaction: Interaction[Bot], button: Button):  # Mystbin
        await interaction.response.defer(ephemeral=True)
        embed = self.embed.to_dict()
        stringified = orjson.dumps(embed).decode("utf-8")

        if len(self.embed) <= 4000:
            return await interaction.followup.send(
                content=formatters.to_codeblock(
                    stringified,
                    language="JSON",
                    escape_md=False,
                )
            )

        paste = await interaction.client.tycoon_client.post_paste(
            MystbinPaste(
                data_type=DataType.data_offline,
                files=[
                    MystbinFile(
                        content=stringified,
                        filename=f"{interaction.user.id} - {discord.utils.utcnow()}",
                    )
                ],
            )
        )
        await interaction.followup.send(content=f"https://mystb.in/{paste.paste_id}", ephemeral=True)

    @discord.ui.button(label="x", style=discord.ButtonStyle.red, row=3)
    async def close(self, interaction: Interaction, button: Button):
        self.stop()
        await interaction.response.edit_message(view=None)

    @discord.ui.button(label="0 / 6000 characters", disabled=True, row=4)
    async def character_count(self, interaction: Interaction, button: Button):
        await interaction.response.defer()

    @discord.ui.button(label="0 / 25 fields", disabled=True, row=4)
    async def field_count(self, interaction: Interaction, button: Button):
        await interaction.response.defer()


class BaseModal(Modal):
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        self.parent_view = parent_view
        self.embed = deepcopy(self.parent_view.embed)
        super().__init__(title=title, timeout=timeout)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        if len(self.embed) > 6000:
            self.embed = deepcopy(self.parent_view.embed)
            return await interaction.response.send_message("Embed too long; Exceeded 6000 characters")

        self.parent_view.embed = deepcopy(self.embed)
        self.parent_view.update_counters()
        if not interaction.response.is_done():
            return await interaction.response.edit_message(view=self.parent_view, embed=self.embed)
        await interaction.edit_original_response(view=self.parent_view, embed=self.embed)

    async def on_error(self, interaction: Interaction[Bot], error: discord.HTTPException) -> None:
        print(error.args, error.code, error.response, error.status, error.text, sep="\n\n")

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
            label="Thumbnail URL",
            placeholder="Enter a tumbnail URL for your embed",
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
            default=str(getattr(self.field, "index", len(self.embed.fields or []))),
            required=False,
            max_length=2,
        )

        self.add_items(self.field_title, self.field_value, self.field_inline, self.field_index)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        if len(self.embed.fields) >= 25:
            return await interaction.response.send_message("Too many fields; Exceeded 25 fields")
        if self.field:
            self.embed.remove_field(self.field.index)  # type: ignore

        if self.field_index.value.isnumeric():
            index = int(self.field_index.value)
        else:
            index = len(self.embed.fields or [])
        self.embed.insert_field_at(
            index=index,
            name=self.field_title,
            value=self.field_value,
            inline=False if self.field_inline.value.lower() in ("f", "n") else True,
        )

        return await super().on_submit(interaction)


class ImportModal(BaseModal):  # raw text | url
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)

        self.import_json = TextInput(
            label="Json Content / Paste Link",
            placeholder="Enter raw JSON or mystb.in links",
            max_length=4000,
            style=discord.TextStyle.long,
        )
        self.paste_password = TextInput(
            label="Paste Passowrd",
            placeholder="Enter your paste password if exists (note: Not stored locally)",
            required=False,
        )
        self.add_items(self.import_json, self.paste_password)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        await interaction.response.defer()

        if self.import_json.value.startswith("https://mystb.in/"):
            paste = await interaction.client.tycoon_client.fetch_paste(
                paste_id=self.import_json.value.lstrip("https://mystb.in/"),
                password=self.paste_password.value or None,
            )
            content = paste.files[0].content
        else:
            content = self.import_json.value

        try:
            content = orjson.loads(content)
        except orjson.JSONDecodeError:
            return await interaction.followup.send("Invalid JSON received, please try again", ephemeral=True)

        assert isinstance(content, dict)
        self.embed = discord.Embed.from_dict(content)

        return await super().on_submit(interaction)


class IndexSelect(Select):  # multiselect from n rows, return value
    def __init__(self, parent_view: Builder, placeholder: str | None = None, max_options=25) -> None:
        self.parent_view = parent_view
        options = [
            SelectOption(
                label=f"{i+1}. {field.name}",
                value=str(i),
            )
            for i, field in enumerate(self.parent_view.embed.fields)
        ]
        super().__init__(
            placeholder=placeholder,
            min_values=1,
            max_values=min(max_options, len(options), 25),
            options=options,
        )

    async def callback(self, interaction: Interaction[Bot]) -> Any:
        raise NotImplemented


class DeleteIndex(IndexSelect):
    async def callback(self, interaction: Interaction[Bot]) -> Any:
        for row in self.values:
            self.parent_view.embed.remove_field(int(row))

        self.parent_view.update_counters()
        await self.parent_view.response.edit(view=self.parent_view, embed=self.parent_view.embed)
        await interaction.response.edit_message(
            content=f"{len(self.values)} fields deleted",
            view=None,
            delete_after=15,
        )
        if self.view:
            self.view.stop()


class EditIndex(IndexSelect):

    async def callback(self, interaction: Interaction[Bot]) -> Any:
        index = int(self.values[0])
        field = self.parent_view.embed.fields[index]
        setattr(field, "index", index)
        await interaction.response.send_modal(
            FieldModal(
                title="Edit Field",
                parent_view=self.parent_view,
                field=field,
            )
        )
        if self.view:
            self.view.stop()


class SendToUserOrChannel(BaseView):
    def __init__(self, parent_view: Builder, *, select_cls: UserSelect | ChannelSelect, timeout: float | None = 180):
        self.parent_view = parent_view
        super().__init__(timeout=timeout)

        self.select = select_cls
        select_cls.callback = self.callback
        self.add_item(select_cls)

        self.cooldown = commands.CooldownMapping.from_cooldown(3, 15, lambda i: (i.user.id))  # type: ignore

    async def interaction_check(self, interaction: Interaction[Bot]) -> bool:
        check = await super().interaction_check(interaction)
        retry_after = self.cooldown.update_rate_limit(interaction)

        if retry_after:
            raise ButtonOnCooldown(retry_after)

        return check

    async def on_error(self, interaction: Interaction[Bot], error: Exception, item: ui.Item[Any]):
        if isinstance(error, ButtonOnCooldown):
            return await interaction.response.send_message(error, ephemeral=True)
        return await super().on_error(interaction, error, item)

    async def send(self, interaction: Interaction, message: Coroutine) -> None:
        try:
            await message
            await interaction.followup.send("Embed sent", ephemeral=True)
        except (discord.HTTPException, discord.Forbidden):
            await interaction.followup.send("Failed to send embed", ephemeral=True)

    async def callback(self, interaction: Interaction[Bot]):
        await interaction.response.defer()
        response = self.select.values[0]
        if isinstance(response, (app_commands.AppCommandChannel, app_commands.AppCommandThread)):
            response = response.resolve()
        if isinstance(response, (discord.ForumChannel, discord.CategoryChannel)):
            return await interaction.followup.send("Invalid channel type", ephemeral=True)
        elif response is None:
            return await interaction.followup.send("Channel not found", ephemeral=True)

        if isinstance(response, User | Member):
            assert interaction.channel
            view = JumpLink(interaction.channel.jump_url)
            return await self.send(interaction, response.send(view=view, embed=self.parent_view.embed))

        assert isinstance(interaction.user, Member)
        permissions = response.permissions_for(interaction.user)
        if not all(
            (
                permissions.send_messages,
                permissions.send_messages_in_threads,
                permissions.embed_links,
            )
        ):
            return await interaction.followup.send(
                f"You do not have permissions to send embeds in {response.mention}",
                ephemeral=True,
            )
        await self.send(interaction, response.send(embed=self.parent_view.embed))


class SendToWebhook(BaseModal):
    def __init__(self, *, title: str, parent_view: Builder, timeout: float | None = None) -> None:
        super().__init__(title=title, parent_view=parent_view, timeout=timeout)
        self.webhook_name = TextInput(
            label="Webhook Name",
            placeholder="Enter a name for your webhook",
            default=self.embed.title,
            required=False,
        )
        self.webhook_image = TextInput(
            label="Webhook Image",
            placeholder="Set a profile URL for your webhook",
            required=False,
        )
        self.webhook_url = TextInput(
            label="Webhook URL",
            placeholder="Enter a webhook URL to send to",
        )
        self.add_items(self.webhook_name, self.webhook_image, self.webhook_url)

    async def on_submit(self, interaction: Interaction[Bot]) -> None:
        await interaction.response.defer(ephemeral=True)
        view = JumpLink(self.parent_view.response.channel.jump_url, timeout=None)

        try:
            webhook = discord.Webhook.from_url(
                self.webhook_url.value,
                session=interaction.client.session,
                client=interaction.client,
                bot_token=interaction.client.http.token,
            )
        except ValueError:
            return await interaction.followup.send("Invalid webhook URL given", ephemeral=True)

        assert interaction.client.user

        try:
            await webhook.send(
                username=self.webhook_name.value or interaction.client.user.display_name,
                avatar_url=self.webhook_image or interaction.client.user.display_avatar.url,
                view=view,
                embed=self.embed,
            )
            view.response = await interaction.original_response()

        except discord.NotFound:
            await interaction.followup.send("Webhook not found, perhaps it has been deleted?", ephemeral=True)
        except discord.Forbidden:
            await interaction.followup.send("Unable to send DMs to this user", ephemeral=True)
        except ValueError as e:
            await interaction.followup.send("Invalid embed has been passed", ephemeral=True)
            interaction.client.log_handler.log.getChild("Embed_Builder").exception(e, extra={"embed": self.embed})
        except discord.HTTPException:
            await interaction.followup.send("Sending this messsage failed for unknown reasons", ephemeral=True)
        else:
            await interaction.followup.send("Embed sent successfully", ephemeral=True)
