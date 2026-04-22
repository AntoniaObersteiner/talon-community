os: linux
tag: user.tmux
-
mux: "tmux "

#session management
mux new session: insert("tmux new ")
mux sessions:
    key(ctrl-q)
    key(s)
mux name session:
    key(ctrl-q)
    key($)
mux kill session: insert("tmux kill-session -t ")
#window management
mux new window:
    key(ctrl-q)
    key(c)
mux window <number>:
    key(ctrl-q)
    key('{number}')
mux previous window:
    key(ctrl-q)
    key(p)
mux next window:
    key(ctrl-q)
    key(n)
mux rename window:
    key(ctrl-q)
    key(,)
mux close window:
    key(ctrl-q)
    key(&)
#pane management
mux split horizontal:
    key(ctrl-q)
    key(%)
mux split vertical:
    key(ctrl-q)
    key(")
mux next pane:
    key(ctrl-q)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-q)
    key(arrow_key)
mux close pane:
    key(ctrl-q)
    key(x)
#Say a number right after this command, to switch to pane
mux pane numbers:
    key(ctrl-q)
    key(q)
