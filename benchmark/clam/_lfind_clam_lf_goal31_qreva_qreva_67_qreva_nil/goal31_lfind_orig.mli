
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val qreva : lst -> lst -> lst
