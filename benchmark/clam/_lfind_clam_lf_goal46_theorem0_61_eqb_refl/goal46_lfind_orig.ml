
type natural =
| Succ of natural
| Zero

(** val eqb : natural -> natural -> bool **)

let rec eqb n m =
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> false)
  | Zero -> (match m with
             | Succ _ -> false
             | Zero -> true)
