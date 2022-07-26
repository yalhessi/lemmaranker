type nat =
 | O
 | S of nat



type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> false)
  | Zero -> (match m with
             | Succ _ -> false
             | Zero -> true)

;;
let rec count (count_arg1:lst) (count_arg0:natural):natural=
  match count_arg1 with
  | Cons (y, z) ->
    if eqb count_arg0 y then Succ (count z count_arg0) else count z count_arg0
  | Nil -> Zero
;;
let synth : lst|> {} = ?