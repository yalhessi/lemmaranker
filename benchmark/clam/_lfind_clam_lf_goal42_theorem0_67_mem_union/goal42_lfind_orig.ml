
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

(** val lst_mem : natural -> lst -> bool **)

let lst_mem lst_mem_arg0 lst_mem_arg1 =
  mem lst_mem_arg1 lst_mem_arg0

(** val lst_union : lst -> lst -> lst **)

let rec lst_union lst_union_arg0 lst_union_arg1 =
  match lst_union_arg0 with
  | Cons (n, x) ->
    if lst_mem n lst_union_arg1
    then lst_union x lst_union_arg1
    else Cons (n, (lst_union x lst_union_arg1))
  | Nil -> lst_union_arg1
