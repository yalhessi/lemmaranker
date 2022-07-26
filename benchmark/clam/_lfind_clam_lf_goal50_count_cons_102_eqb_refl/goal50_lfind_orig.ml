
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

(** val count : lst -> natural -> natural **)

let rec count count_arg1 count_arg0 =
  match count_arg1 with
  | Cons (y, z) ->
    if eqb count_arg0 y then Succ (count z count_arg0) else count z count_arg0
  | Nil -> Zero
