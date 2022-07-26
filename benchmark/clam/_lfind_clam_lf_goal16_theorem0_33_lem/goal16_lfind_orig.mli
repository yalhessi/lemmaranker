
type bool =
| True
| False

val negb : bool -> bool

type natural =
| Succ of natural
| Zero

val plus : natural -> natural -> natural

val even : natural -> bool
