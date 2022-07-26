type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Succ n -> Succ (plus n plus_arg1)
  | Zero -> plus_arg1

;;
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
let rec rev (n:lst):lst=
 match n with
| Cons (x, y) -> append (rev y) (Cons (x, Nil))
| Nil -> Nil
;;
