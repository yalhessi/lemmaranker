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
let rec len (n:lst):natural=
 match n with
| Nil -> Zero
| Cons (_, y) -> Succ (len y)

;;
let rec rotate (rotate_arg0:natural) (rotate_arg1:lst):lst=
  match rotate_arg0 with
  | Succ n ->
    (match rotate_arg1 with
     | Nil -> Nil
     | Cons (y, x) -> rotate n (append x (Cons (y, Nil))))
  | Zero -> rotate_arg1
;;
let synth : natural|> {} = ?