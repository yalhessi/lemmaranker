type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec less (less_arg0:natural) (less_arg1:natural):bool=
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> false)
  | Zero -> (match less_arg1 with
             | Succ _ -> true
             | Zero -> false)

;;
let rec eqn (m:natural) (n:natural):bool=
  match m with
  | Succ m' -> (match n with
                | Succ n' -> eqn m' n'
                | Zero -> false)
  | Zero -> (match n with
             | Succ _ -> false
             | Zero -> true)

;;
let leq (m:natural) (n:natural):bool=
  (||) (eqn m n) (less m n)

;;
let rec insort (insort_arg0:natural):lst=
| Cons (x, y) ->
  if less insort_arg0 x
  then Cons (insort_arg0, (Cons (x, y)))
  else Cons (x, (insort insort_arg0 y))
| Nil -> Cons (insort_arg0, Nil)

;;
let rec sorted (n:lst):bool=
 match n with
| Cons (x, l) ->;;
let sort (n:lst):lst=
 match n with
  (match l with
   | Cons (y, _) -> (&&) s (leq x y)
   | Nil -> true)
| Nil -> true


let rec sort = function
| Cons (x, y) -> insort x (sort y)
| Nil -> Nil
;;
