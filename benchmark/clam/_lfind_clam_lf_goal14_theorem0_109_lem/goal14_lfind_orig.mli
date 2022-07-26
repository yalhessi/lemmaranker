
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val less : natural -> natural -> bool

val eqn : natural -> natural -> bool

val leq : natural -> natural -> bool

val insort : natural -> lst -> lst

val sorted : lst -> bool

val sort : lst -> lst
