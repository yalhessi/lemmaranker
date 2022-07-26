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

let rec less (less_arg0:natural) (less_arg1:natural):bool=
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> False)
  | Zero -> (match less_arg1 with
             | Succ _ -> True
             | Zero -> False)

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
let rec count (count_arg1:lst) (count_arg0:natural):natural=
  match count_arg1 with
  | Cons (y, z) ->
    (match eqb count_arg0 y with
     | True -> Succ (count z count_arg0)
     | False -> count z count_arg0)
  | Nil -> Zero

;;
let rec insort (insort_arg1:lst) (insort_arg0:natural):lst=
  match insort_arg1 with
  | Cons (x, y) ->
    (match less insort_arg0 x with
     | True -> Cons (insort_arg0, (Cons (x, y)))
     | False -> Cons (x, (insort y insort_arg0)))
  | Nil -> Cons (insort_arg0, Nil)
;;
let synth : lst|> {} = ?