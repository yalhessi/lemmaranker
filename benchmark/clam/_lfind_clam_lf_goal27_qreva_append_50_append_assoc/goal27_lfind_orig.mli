
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val append : lst -> lst -> lst

val rev : lst -> lst

val qreva : lst -> lst -> lst
