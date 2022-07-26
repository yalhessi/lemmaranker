
(** val negb : bool -> bool **)

let negb = function
| true -> false
| false -> true

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val even : natural -> bool **)

let rec even = function
| Succ n -> negb (even n)
| Zero -> true

(** val len : lst -> natural **)

let rec len = function
| Cons (_, y) -> Succ (len y)
| Nil -> Zero
