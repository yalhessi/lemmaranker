type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> false)
  | Zero -> (match m with
             | Succ _ -> false
             | Zero -> true)

;;
let rec mem (mem_arg1:lst) (mem_arg0:natural):bool=
  match mem_arg1 with
  | Cons (y, z) -> (||) (eqb mem_arg0 y) (mem z mem_arg0)
  | Nil -> false

;;
let lst_mem (lst_mem_arg0:natural) (lst_mem_arg1:lst):bool=
  mem lst_mem_arg1 lst_mem_arg0

;;
let rec lst_subset (lst_subset_arg0:lst) (lst_subset_arg1:lst):bool=
  match lst_subset_arg0 with
  | Cons (n, x) ->
    (&&) (lst_subset x lst_subset_arg1) (lst_mem n lst_subset_arg1)
  | Nil -> true
;;
let synth : lst|> {} = ?