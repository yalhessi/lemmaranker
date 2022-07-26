type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

let rec append (append_arg0:lst) (append_arg1:lst):lst=
  match append_arg0 with
  | Nil -> append_arg1
  | Cons (x, y) -> Cons (x, (append y append_arg1))
;;
let synth : lst|> {} = ?