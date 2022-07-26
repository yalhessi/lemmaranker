
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

(** val count : lst -> natural -> natural **)

let rec count count_arg1 count_arg0 =
  match count_arg1 with
  | Cons (y, z) ->
    (match eqb count_arg0 y with
     | True -> Succ (count z count_arg0)
     | False -> count z count_arg0)
  | Nil -> Zero

(** val insort : lst -> natural -> lst **)

let rec insort insort_arg1 insort_arg0 =
  match insort_arg1 with
  | Cons (x, y) ->
    (match less insort_arg0 x with
     | True -> Cons (insort_arg0, (Cons (x, y)))
     | False -> Cons (x, (insort y insort_arg0)))
  | Nil -> Cons (insort_arg0, Nil)
