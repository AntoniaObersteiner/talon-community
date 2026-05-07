from talon import Context, Module, actions

mod = Module()
ctx = Context()

# --- App definition ---
mod.apps.musescore = r"""
app.name: /^MuseScore/
"""
# Context matching
ctx.matches = """
app: musescore
"""

@mod.capture(
    rule="(<user.letter>)+"
)
def musescore_chord(m) -> str:
    """Collects several letters"""
    out = ""
    for letter in m:
        out += letter
    return out

@mod.action_class
class MuseScoreActions:
    
    def chord_keys(chord: str):
        """Add these keys to the current chord"""
        for letter in chord:
            actions.key(letter.upper())


@ctx.action_class("app")
class AppActions:
    # app.tabs
    def tab_open():
        actions.key("ctrl-o")

    def tab_reopen():
        actions.app.notify("Foxit does not support this action.")


@ctx.action_class("user")
class UserActions:
        
    # user.tabs
    def tab_jump(number):
        actions.app.notify("Foxit does not support this action.")

    def tab_final():
        actions.app.notify("Foxit does not support this action.")

    def tab_duplicate():
        actions.app.notify("Foxit does not support this action.")

    # user.pages
    def page_current() -> int:
        actions.key("ctrl-g")
        page = actions.edit.selected_text()
        return int(page)

    def page_next():
        actions.key("right")

    def page_previous():
        actions.key("left")

    def page_jump(number: int):
        actions.key("ctrl-g")
        actions.insert(str(number))
        actions.key("enter")

    def page_final():
        # actions.key("fn-right")
        actions.key("end")

    def page_rotate_right():
        actions.key("shift-ctrl-keypad_plus")

    def page_rotate_left():
        actions.key("shift-ctrl-keypad_minus")
