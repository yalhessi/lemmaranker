
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val drop : natural -> lst -> lst
