
type bool =
| True
| False

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val append : lst -> lst -> lst

val eqb : natural -> natural -> bool

val mem : lst -> natural -> bool
