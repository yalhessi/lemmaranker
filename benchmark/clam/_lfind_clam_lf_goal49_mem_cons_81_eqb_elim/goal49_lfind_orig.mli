
type __ = Obj.t

type bool =
| True
| False

val orb : bool -> bool -> bool

type is_true = __

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val eqb : natural -> natural -> bool

val mem : natural -> lst -> bool
