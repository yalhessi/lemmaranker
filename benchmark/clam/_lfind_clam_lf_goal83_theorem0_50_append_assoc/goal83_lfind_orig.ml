
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

(** val len : lst -> natural **)

let rec len = function
| Cons (_, y) -> Succ (len y)
| Nil -> Zero

(** val rotate : natural -> lst -> lst **)

let rec rotate rotate_arg0 rotate_arg1 =
  match rotate_arg0 with
  | Succ n ->
    (match rotate_arg1 with
     | Cons (y, x) -> rotate n (append x (Cons (y, Nil)))
     | Nil -> Nil)
  | Zero -> rotate_arg1
