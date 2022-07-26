
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val plus : natural -> natural -> natural

val len : lst -> natural

val qreva : lst -> lst -> lst
