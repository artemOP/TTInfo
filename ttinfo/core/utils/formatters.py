from discord.utils import escape_markdown
from datetime import datetime
from zoneinfo import ZoneInfo
from typing import Optional


def to_codeblock(content: str, *, language: str, escape_md: bool = True) -> str:
    """Generates discord codeblocks

    Args:
        content (str): codeblock content
        language (str): codeblock language
        new (str, optional): symbol to wrap codeblock in. Defaults to discord standard.
        replace_existing (bool, optional): replace existing symbols. Defaults to True.
        escape_md (bool, optional): Escape markdown in content. Defaults to True.

    Returns:
        str: codeblock
    """
    if escape_md:
        content = escape_markdown(content)
    return f"```{language}\n{content}\n```"


def to_timestamp(stamp: str, format: str) -> Optional[datetime]:
    """Attempts to generate a datetime from a string, silently swallows errors

    Args:
        stamp (str): timestamp string
        format (str): strptime format strip

    Returns:
        datetime: timezone aware datetime
    """
    try:
        return datetime.strptime(f"{stamp} +0000", f"{format} %f")
    except ValueError:
        return None
