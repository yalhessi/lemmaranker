
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
