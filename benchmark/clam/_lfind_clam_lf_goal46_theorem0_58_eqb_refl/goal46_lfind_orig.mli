
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val eqb : natural -> natural -> bool

val mem : lst -> natural -> bool

val less : natural -> natural -> bool

val insort : lst -> natural -> lst
