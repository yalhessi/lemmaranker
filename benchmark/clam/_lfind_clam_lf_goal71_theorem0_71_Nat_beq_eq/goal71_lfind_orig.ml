
type __ = Obj.t

type not = __

type bool =
| True
| False

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val less : natural -> natural -> bool **)

let rec less less_arg0 less_arg1 =
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> False)
  | Zero -> (match less_arg1 with
             | Succ _ -> True
             | Zero -> False)

(** val eqb : natural -> natural -> bool **)

let rec eqb n m =
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> False)
  | Zero -> (match m with
             | Succ _ -> False
             | Zero -> True)

(** val count : natural -> lst -> natural **)

let rec count count_arg0 = function
| Cons (y, z) ->
  (match eqb count_arg0 y with
   | True -> Succ (count count_arg0 z)
   | False -> count count_arg0 z)
| Nil -> Zero

(** val insort : natural -> lst -> lst **)

let rec insort insort_arg0 = function
| Cons (x, y) ->
  (match less insort_arg0 x with
   | True -> Cons (insort_arg0, (Cons (x, y)))
   | False -> Cons (x, (insort insort_arg0 y)))
| Nil -> Cons (insort_arg0, Nil)
