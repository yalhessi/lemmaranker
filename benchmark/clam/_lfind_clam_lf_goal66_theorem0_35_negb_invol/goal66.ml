type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

let negb (n:bool):bool=
 match n with
| true -> false
| false -> true

;;
let rec even (n:natural):bool=
 match n with
| Succ n -> negb (even n)
| Zero -> true
;;
