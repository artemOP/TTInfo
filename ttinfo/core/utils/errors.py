from typing import Any, Optional

__all__ = "TTInfoException", "NoKey", "NotLinked", "OfflineError", "InvalidItem", "HTTPException", "MalformedResponse"


class TTInfoException(Exception):
    pass


class NoKey(TTInfoException):
    pass


class NotLinked(TTInfoException):
    pass


class OfflineError(TTInfoException):
    pass


class InvalidItem(TTInfoException):
    pass


class NoPigs(TTInfoException):
    pass


class HTTPException(TTInfoException):
    """For catching custom HTTP exceptions

    :param message: Error message
    :param reason: Resp reason
    :param status: Resp status code
    :param extra: Anything else that needs passed to the handler
    """

    def __init__(
        self,
        message: str,
        *,
        reason: Optional[str] = None,
        status: Optional[int] = None,
        extra: Optional[Any] = None,
    ):
        self.message = f"{status}: {message} - {reason}"
        self.reason = reason
        self.status = status
        self.extra = extra

        super().__init__(self.message)


class MalformedResponse(HTTPException):
    pass
