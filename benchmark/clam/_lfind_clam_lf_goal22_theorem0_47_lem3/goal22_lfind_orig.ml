
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

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

(** val len : lst -> natural **)

let rec len = function
| Cons (_, y) -> Succ (len y)
| Nil -> Zero
