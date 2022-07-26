
type __ = Obj.t

type not = __

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val eqb : natural -> natural -> bool **)

let rec eqb n m =
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> false)
  | Zero -> (match m with
             | Succ _ -> false
             | Zero -> true)

(** val mem : lst -> natural -> bool **)

let rec mem mem_arg1 mem_arg0 =
  match mem_arg1 with
  | Cons (y, z) -> (||) (eqb mem_arg0 y) (mem z mem_arg0)
  | Nil -> false

(** val less : natural -> natural -> bool **)

let rec less less_arg0 less_arg1 =
  match less_arg0 with
  | Succ x -> (match less_arg1 with
               | Succ y -> less x y
               | Zero -> false)
  | Zero -> (match less_arg1 with
             | Succ _ -> true
             | Zero -> false)

(** val insort : lst -> natural -> lst **)

let rec insort insort_arg1 insort_arg0 =
  match insort_arg1 with
  | Cons (x, y) ->
    if less insort_arg0 x
    then Cons (insort_arg0, (Cons (x, y)))
    else Cons (x, (insort y insort_arg0))
  | Nil -> Cons (insort_arg0, Nil)
