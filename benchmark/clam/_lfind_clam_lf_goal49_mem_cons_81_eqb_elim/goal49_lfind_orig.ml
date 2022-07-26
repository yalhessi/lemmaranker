
type __ = Obj.t

type bool =
| True
| False

(** val orb : bool -> bool -> bool **)

let orb b1 b2 =
  match b1 with
  | True -> True
  | False -> b2

type is_true = __

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
