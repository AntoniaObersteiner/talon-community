app: musescore
-
# tag(): user.tabs
# tag(): user.pages
# tag(): user.musescore

redo that: key(ctrl-shift-z)
go line start:
    key(shift-home)
    sleep(50ms)
    key(right)
    key(left)
# tab close all: key(ctrl-shift-w)

go line end:
    key(shift-end)
    sleep(50ms)
    key(left)
    key(right)

# note durations
full: key(7)
half: key(6)
quarter: key(5)
flag: key(4)
double: key(3)
trouble: key(2)
quadruple: key(1)

triplet: key(ctrl-3)

# note pitch
note tie: key(shift-t)
note rest: key(0)
note flat: key(-)
note natural: key(=)
note sharp: key(+)

note flip: key(shift-x)
note up: key(ctrl-up)
note down: key(ctrl-down) 

note staccato: key(shift-s)
note tenuto: key(shift-n)

octave: key(alt-8)
octave down: key(alt-shift-8)

voice one: key(ctrl-alt-1)
voice two: key(ctrl-alt-2)
voice three: key(ctrl-alt-3)
voice four: key(ctrl-alt-4)

add text tempo: key(alt-shift-t)

# movement
bar left: key(ctrl-left)
bar right: key(ctrl-right)
staff up:
    key(shift-up)
    key(left)
    key(right)
staff down:
    key(shift-down)
    key(left)
    key(right)

start lyrics: 
    key(ctrl-l)

enter lyrics: 
    key(ctrl-l)
    sleep(50ms)
    key(up)

leave lyrics: 
    key(escape)
    key(escape)
    sleep(50ms)
    key(left)

chuck lyrics: 
    key(delete)
    key(space)

start chords: 
    key(ctrl-k)

enter chords: 
    key(ctrl-k)
    sleep(50ms)
    key(space)
    key(shift-space)

leave chords: 
    key(enter)
    key(escape)
    sleep(50ms)
    key(left)

chord <user.musescore_chord>:
    user.chord_keys(musescore_chord)

insert at end: key(alt-shift-b)

close palettes: key(f9)
search palettes: key(ctrl-f9)
master palettes: key(shift-f9)
