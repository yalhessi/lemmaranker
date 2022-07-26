
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val plus : natural -> natural -> natural **)

let rec plus plus_arg0 plus_arg1 =
  match plus_arg0 with
  | Succ n -> Succ (plus n plus_arg1)
  | Zero -> plus_arg1

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

(** val len : lst -> natural **)

let rec len = function
| Cons (_, y) -> Succ (len y)
| Nil -> Zero
