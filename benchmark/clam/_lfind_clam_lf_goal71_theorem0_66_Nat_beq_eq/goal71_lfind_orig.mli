
type __ = Obj.t

type not = __

type bool =
| True
| False

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val less : natural -> natural -> bool

val eqb : natural -> natural -> bool

val count : natural -> lst -> natural

val insort : natural -> lst -> lst
