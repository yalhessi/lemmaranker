type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

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
let rec len (n:lst):natural=
 match n with
| Cons (_, y) -> Succ (len y)
| Nil -> Zero
;;
let synth : lst|> {} = ?