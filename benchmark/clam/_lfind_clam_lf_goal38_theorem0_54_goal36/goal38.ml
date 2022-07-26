type nat =
 | O
 | S of nat

type bool =
| True
| False

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
let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> False)
  | Zero -> (match m with
             | Succ _ -> False
             | Zero -> True)

;;
let rec mem (mem_arg1:lst) (mem_arg0:natural):bool=
  match mem_arg1 with
  | Cons (y, z) ->
    (match eqb mem_arg0 y with
     | True -> True
     | False -> mem z mem_arg0)
  | Nil -> False
;;
