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
let rec len (n:lst):natural=
 match n with
| Cons (_, y) -> Succ (len y)
| Nil -> Zero

;;
let rec qreva (qreva_arg0:lst) (qreva_arg1:lst):lst=
  match qreva_arg0 with
  | Cons (z, x) -> qreva x (Cons (z, qreva_arg1))
  | Nil -> qreva_arg1
;;
let synth : lst|> {} = ?