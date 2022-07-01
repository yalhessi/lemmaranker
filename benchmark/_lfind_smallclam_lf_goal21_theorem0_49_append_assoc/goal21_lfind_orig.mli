
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val append : lst -> lst -> lst

val len : lst -> natural

val rotate : natural -> lst -> lst
