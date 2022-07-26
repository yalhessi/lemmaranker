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
let rec mem (mem_arg1:lst) (mem_arg0:natural):bool=
  match mem_arg1 with
  | Cons (y, z) -> (||) (eqb mem_arg0 y) (mem z mem_arg0)
  | Nil -> false

;;
let rec less (less_arg0:natural) (less_arg1:natural):bool=
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> false)
  | Zero -> (match less_arg1 with
             | Succ _ -> true
             | Zero -> false)

;;
let rec insort (insort_arg1:lst) (insort_arg0:natural):lst=
  match insort_arg1 with
  | Cons (x, y) ->
    if less insort_arg0 x
    then Cons (insort_arg0, (Cons (x, y)))
    else Cons (x, (insort y insort_arg0))
  | Nil -> Cons (insort_arg0, Nil)
;;
