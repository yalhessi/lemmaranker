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
let rec rev (n:lst):lst=
 match n with
| Nil -> Nil
| Cons (x, y) -> append (rev y) (Cons (x, Nil))

;;
let rec qreva (qreva_arg0:lst) (qreva_arg1:lst):lst=
  match qreva_arg0 with
  | Nil -> qreva_arg1
  | Cons (z, x) -> qreva x (Cons (z, qreva_arg1))
;;
