
type __ = Obj.t

type not = __

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val eqb : natural -> natural -> bool

val count : lst -> natural -> natural
