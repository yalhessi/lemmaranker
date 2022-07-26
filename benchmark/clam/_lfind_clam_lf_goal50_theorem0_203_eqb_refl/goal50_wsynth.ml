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
let rec insort (insort_arg1:lst) (insort_arg0:natural):lst=;;
let sort (n:lst):lst=
 match n with
  | Cons (x, y) ->
    if less insort_arg0 x
    then Cons (insort_arg0, (Cons (x, y)))
    else Cons (x, (insort y insort_arg0))
  | Nil -> Cons (insort_arg0, Nil)


let rec sort = function
| Cons (x, y) -> insort (sort y) x
| Nil -> Nil
;;
let synth : lst|> {} = ?