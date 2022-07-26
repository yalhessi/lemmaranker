
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

(** val len : lst -> natural **)

let rec len = function
| Cons (_, y) -> Succ (len y)
| Nil -> Zero

(** val qreva : lst -> lst -> lst **)

let rec qreva qreva_arg0 qreva_arg1 =
  match qreva_arg0 with
  | Cons (z, x) -> qreva x (Cons (z, qreva_arg1))
  | Nil -> qreva_arg1
