
(** val negb : bool -> bool **)

let negb = function
| true -> false
| false -> true

type natural =
| Succ of natural
| Zero

(** val even : natural -> bool **)

let rec even = function
| Succ n -> negb (even n)
| Zero -> true
