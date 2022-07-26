
type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Nil -> append_arg1
  | Cons (x, y) -> Cons (x, (append y append_arg1))

(** val len : lst -> natural **)

let rec len = function
| Nil -> Zero
| Cons (_, y) -> Succ (len y)

(** val rotate : natural -> lst -> lst **)

let rec rotate rotate_arg0 rotate_arg1 =
  match rotate_arg0 with
  | Succ n ->
    (match rotate_arg1 with
     | Nil -> Nil
     | Cons (y, x) -> rotate n (append x (Cons (y, Nil))))
  | Zero -> rotate_arg1
