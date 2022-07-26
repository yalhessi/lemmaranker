
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val lfind_example_n : natural

val lfind_example_y : lst

val lfind_example_x : natural
