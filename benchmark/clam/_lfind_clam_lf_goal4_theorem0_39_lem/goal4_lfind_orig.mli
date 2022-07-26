
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val double : natural -> natural

val append : lst -> lst -> lst

val len : lst -> natural
