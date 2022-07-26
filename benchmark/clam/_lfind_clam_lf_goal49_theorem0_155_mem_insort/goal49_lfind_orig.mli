
type bool =
| True
| False

val orb : bool -> bool -> bool

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val less : natural -> natural -> bool

val eqb : natural -> natural -> bool

val mem : natural -> lst -> bool

val insort : natural -> lst -> lst

val sort : lst -> lst
