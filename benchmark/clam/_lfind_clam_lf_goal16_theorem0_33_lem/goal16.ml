type nat =
 | O
 | S of nat

type bool =
| True
| False

type natural =
| Succ of natural
| Zero

let negb (n:bool):bool=
 match n with
| True -> False
| False -> True

;;
let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Succ n -> Succ (plus n plus_arg1)
  | Zero -> plus_arg1

;;
let rec even (n:natural):bool=
 match n with
| Succ n -> negb (even n)
| Zero -> True
;;
