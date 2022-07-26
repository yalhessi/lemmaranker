
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
               | Zero -> false)
  | Zero -> (match less_arg1 with
             | Succ _ -> true
             | Zero -> false)

(** val eqn : natural -> natural -> bool **)

let rec eqn m n =
  match m with
  | Succ m' -> (match n with
                | Succ n' -> eqn m' n'
                | Zero -> false)
  | Zero -> (match n with
             | Succ _ -> false
             | Zero -> true)

(** val leq : natural -> natural -> bool **)

let leq m n =
  (||) (eqn m n) (less m n)

(** val insort : natural -> lst -> lst **)

let rec insort insort_arg0 = function
| Cons (x, y) ->
  if less insort_arg0 x
  then Cons (insort_arg0, (Cons (x, y)))
  else Cons (x, (insort insort_arg0 y))
| Nil -> Cons (insort_arg0, Nil)

(** val sorted : lst -> bool **)

let rec sorted = function
| Cons (x, l) ->
  let s = sorted l in
  (match l with
   | Cons (y, _) -> (&&) s (leq x y)
   | Nil -> true)
| Nil -> true

(** val sort : lst -> lst **)

let rec sort = function
| Cons (x, y) -> insort x (sort y)
| Nil -> Nil
