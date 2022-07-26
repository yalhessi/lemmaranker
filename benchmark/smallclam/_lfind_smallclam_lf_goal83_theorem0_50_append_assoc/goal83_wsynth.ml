type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec append (append_arg0:lst) (append_arg1:lst):lst=
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

;;
let rec len (n:lst):natural=
 match n with
| Cons (_, y) -> Succ (len y)
| Nil -> Zero

;;
let rec rotate (rotate_arg0:natural) (rotate_arg1:lst):lst=
  match rotate_arg0 with
  | Succ n ->
    (match rotate_arg1 with
     | Cons (y, x) -> rotate n (append x (Cons (y, Nil)))
     | Nil -> Nil)
  | Zero -> rotate_arg1
;;
let synth : natural|> {} = ?