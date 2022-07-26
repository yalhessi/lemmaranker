
type bool =
| True
| False

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

(** val eqb : natural -> natural -> bool **)

let rec eqb n m =
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> False)
  | Zero -> (match m with
             | Succ _ -> False
             | Zero -> True)

(** val mem : lst -> natural -> bool **)

let rec mem mem_arg1 mem_arg0 =
  match mem_arg1 with
  | Cons (y, z) ->
    (match eqb mem_arg0 y with
     | True -> True
     | False -> mem z mem_arg0)
  | Nil -> False
