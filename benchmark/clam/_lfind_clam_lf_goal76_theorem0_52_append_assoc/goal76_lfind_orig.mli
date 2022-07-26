
type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

type tree =
| Node of natural * tree * tree
| Leaf

val append : lst -> lst -> lst

val revflat : tree -> lst

val qrevaflat : tree -> lst -> lst
