
type __ = Obj.t

type is_true = __

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val less : natural -> natural -> bool

val eqb : natural -> natural -> bool

val count : lst -> natural -> natural

val insort : lst -> natural -> lst

val sort : lst -> lst
