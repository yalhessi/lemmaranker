
val negb : bool -> bool

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val even : natural -> bool

val append : lst -> lst -> lst

val len : lst -> natural
