
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

type tree =
| Node of natural * tree * tree
| Leaf

val append : lst -> lst -> lst

val revflat : tree -> lst

val qrevaflat : tree -> lst -> lst
