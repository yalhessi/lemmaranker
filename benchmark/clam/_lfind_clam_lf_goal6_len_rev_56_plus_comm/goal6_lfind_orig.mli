
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val plus : natural -> natural -> natural

val append : lst -> lst -> lst

val len : lst -> natural

val rev : lst -> lst
