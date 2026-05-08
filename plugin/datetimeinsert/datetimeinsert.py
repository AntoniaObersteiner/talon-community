import datetime

from talon import Module

mod = Module()

@mod.capture(
    rule="date <number_small> <number_small>"
)
def date_two_numbers(m) -> str:
    """Capture two number_small and return a date"""
    return f"{m[1]:02}.{m[2]:02}."

@mod.capture(
    rule="iso date <number_small> <number_small>"
)
def iso_date_two_numbers(m) -> str:
    """Capture two number_small and return a date"""
    year = datetime.datetime.now().strftime('%Y') 
    return f"{year}-{m[2]:02}-{m[3]:02}"

@mod.capture(
    rule="time <number_small> <number_small>"
)
def time_two_numbers(m) -> str:
    """Capture two number_small and return a time"""
    return f"{m[1]:02}:{m[2]:02}"

@mod.capture(
    rule="time <number_small>"
)
def time_one_number(m) -> str:
    """Capture one number_small and return a time"""
    return f"{m[1]:02}:"

@mod.action_class
class Actions:
    def time_format(fmt: str = None) -> str:
        """Return the current time, formatted.
        fmt: strftime()-style format string, defaults to ISO format."""
        now = datetime.datetime.now()
        if fmt is None:
            return now.isoformat()
        return now.strftime(fmt)

    def time_format_utc(fmt: str = None) -> str:
        """Return the current UTC time, formatted.
        fmt: strftime()-style format string, defaults to ISO format."""
        now = datetime.datetime.utcnow()
        if fmt is None:
            return now.isoformat()
        return now.strftime(fmt)
