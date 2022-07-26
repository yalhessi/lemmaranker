
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val drop : natural -> lst -> lst **)

let rec drop drop_arg0 drop_arg1 =
  match drop_arg0 with
  | Succ x -> (match drop_arg1 with
               | Cons (_, z) -> drop x z
               | Nil -> Nil)
  | Zero -> (match drop_arg1 with
             | Cons (_, _) -> drop_arg1
             | Nil -> Nil)
