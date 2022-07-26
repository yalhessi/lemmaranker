
type bool =
| True
| False

(** val orb : bool -> bool -> bool **)

let orb b1 b2 =
  match b1 with
  | True -> True
  | False -> b2

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

(** val mem : natural -> lst -> bool **)

let rec mem mem_arg0 = function
| Cons (y, z) ->
  (match eqb mem_arg0 y with
   | True -> True
   | False -> mem mem_arg0 z)
| Nil -> False

(** val insort : natural -> lst -> lst **)

let rec insort insort_arg0 = function
| Cons (x, y) ->
  (match less insort_arg0 x with
   | True -> Cons (insort_arg0, (Cons (x, y)))
   | False -> Cons (x, (insort insort_arg0 y)))
| Nil -> Cons (insort_arg0, Nil)
