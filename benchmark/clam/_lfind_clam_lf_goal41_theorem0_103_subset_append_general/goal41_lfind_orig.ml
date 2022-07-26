
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

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Cons (x, y) -> Cons (x, (append y append_arg1))
  | Nil -> append_arg1

(** val lst_mem : natural -> lst -> bool **)

let lst_mem lst_mem_arg0 lst_mem_arg1 =
  mem lst_mem_arg1 lst_mem_arg0

(** val lst_subset : lst -> lst -> bool **)

let rec lst_subset lst_subset_arg0 lst_subset_arg1 =
  match lst_subset_arg0 with
  | Cons (n, x) ->
    (&&) (lst_subset x lst_subset_arg1) (lst_mem n lst_subset_arg1)
  | Nil -> true

(** val lst_eq : lst -> lst -> bool **)

let lst_eq lst_eq_arg0 lst_eq_arg1 =
  (&&) (lst_subset lst_eq_arg0 lst_eq_arg1)
    (lst_subset lst_eq_arg1 lst_eq_arg0)

(** val lst_intersection : lst -> lst -> lst **)

let rec lst_intersection lst_intersection_arg0 lst_intersection_arg1 =
  match lst_intersection_arg0 with
  | Cons (n, x) ->
    if lst_mem n lst_intersection_arg1
    then Cons (n, (lst_intersection x lst_intersection_arg1))
    else lst_intersection x lst_intersection_arg1
  | Nil -> Nil
