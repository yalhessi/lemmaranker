type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec drop (drop_arg0:natural) (drop_arg1:lst):lst=
  match drop_arg0 with
  | Succ x -> (match drop_arg1 with
               | Cons (_, z) -> drop x z
               | Nil -> Nil)
  | Zero -> (match drop_arg1 with
             | Cons (_, _) -> drop_arg1
             | Nil -> Nil)
;;
let synth : natural|> {} = ?