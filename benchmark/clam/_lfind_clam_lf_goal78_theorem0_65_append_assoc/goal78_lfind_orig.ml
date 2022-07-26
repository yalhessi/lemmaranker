
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

(** val rev : lst -> lst **)

let rec rev = function
| Nil -> Nil
| Cons (x, y) -> append (rev y) (Cons (x, Nil))

(** val qreva : lst -> lst -> lst **)

let rec qreva qreva_arg0 qreva_arg1 =
  match qreva_arg0 with
  | Nil -> qreva_arg1
  | Cons (z, x) -> qreva x (Cons (z, qreva_arg1))
