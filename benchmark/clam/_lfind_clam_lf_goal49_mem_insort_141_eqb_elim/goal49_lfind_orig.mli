
type __ = Obj.t

type bool =
| True
| False

type is_true = __

type natural =
| Succ of natural
| Zero

val eqb : natural -> natural -> bool
