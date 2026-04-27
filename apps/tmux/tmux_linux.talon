os: linux
tag: user.tmux
-
mux: "tmux "

#session management
mux session new: insert("tmux new ")
mux sessions:
    user.tmux_keybind("s")
mux session name:
    user.tmux_keybind("$")
mux session kill: insert("tmux kill-session -t ")
#window management
mux window new:
    user.tmux_keybind("c")
mux window <number>:
    user.tmux_keybind("{number}")
mux window previous:
    user.tmux_keybind("p")
mux window next:
    user.tmux_keybind("n")
mux window rename:
    user.tmux_keybind(",")
mux window close:
    user.tmux_keybind("&")
#pane management
mux split horizontal:
    user.tmux_keybind("%")
mux split vertical:
    user.tmux_keybind("\"")
mux pane next:
    user.tmux_keybind("o")
mux move <user.arrow_key>:
    user.tmux_keybind(arrow_key)
mux pane close:
    user.tmux_keybind("x")
#Say a number right after this command, to switch to pane
mux pane numbers:
    user.tmux_keybind("q")
