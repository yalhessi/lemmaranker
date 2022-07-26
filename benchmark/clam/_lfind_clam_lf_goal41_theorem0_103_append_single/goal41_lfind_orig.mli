
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

val eqb : natural -> natural -> bool

val mem : lst -> natural -> bool

val lst_mem : natural -> lst -> bool

val lst_subset : lst -> lst -> bool

val lst_eq : lst -> lst -> bool

val lst_intersection : lst -> lst -> lst
