
type __ = Obj.t

type not = __

type bool =
| True
| False

type natural =
| Succ of natural
| Zero

val eqb : natural -> natural -> bool
