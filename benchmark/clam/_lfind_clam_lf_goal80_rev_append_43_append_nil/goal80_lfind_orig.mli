
type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

val append : lst -> lst -> lst

val rev : lst -> lst
