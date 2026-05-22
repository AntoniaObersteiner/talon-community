new line: "\n"
double dash: "--"
triple quote: "'''"
triple grave | triple back tick | gravy: "```"
(dot dot | dotdot): ".."
ellipsis: "..."
(comma and | spamma): ", "
ascii arrow: "->"
dub arrow: "=>"
unicode arrow [right]: "→"
unicode arrow left: "←"
unicode arrow up: "↑"
unicode arrow down: "↓"
unicode dot: "·"
unicode times: "×"
unicode root: "√"
unicode dash: "–"
unicode check: "✔"
unicode fail: "✘"

# Insert delimiter pairs
<user.delimiter_pair>: user.delimiter_pair_insert(delimiter_pair)

# Wrap selection with delimiter pairs
<user.delimiter_pair> that: user.delimiter_pair_wrap_selection(delimiter_pair)
