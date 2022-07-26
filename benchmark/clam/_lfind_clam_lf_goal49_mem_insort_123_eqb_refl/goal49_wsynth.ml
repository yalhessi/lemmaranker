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

let orb (b1:bool) (b2:bool):bool=
  match b1 with
  | True -> True
  | False -> b2

;;
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
let rec mem (mem_arg0:natural):bool=
| Cons (y, z) ->
  (match eqb mem_arg0 y with
   | True -> True
   | False -> mem mem_arg0 z)
| Nil -> False

;;
let rec insort (insort_arg0:natural):lst=
| Cons (x, y) ->
  (match less insort_arg0 x with
   | True -> Cons (insort_arg0, (Cons (x, y)))
   | False -> Cons (x, (insort insort_arg0 y)))
| Nil -> Cons (insort_arg0, Nil)
;;
let synth : natural|> {} = ?