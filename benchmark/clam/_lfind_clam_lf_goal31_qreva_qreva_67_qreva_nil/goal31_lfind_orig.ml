
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val qreva : lst -> lst -> lst **)

let rec qreva qreva_arg0 qreva_arg1 =
  match qreva_arg0 with
  | Cons (z, x) -> qreva x (Cons (z, qreva_arg1))
  | Nil -> qreva_arg1
