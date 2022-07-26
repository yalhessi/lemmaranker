
type __ = Obj.t

type not = __

type natural =
| Succ of natural
| Zero

val eqb : natural -> natural -> bool
