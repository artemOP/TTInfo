from discord.utils import escape_markdown


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
    return f"'''{language}\n{content}\n```"
