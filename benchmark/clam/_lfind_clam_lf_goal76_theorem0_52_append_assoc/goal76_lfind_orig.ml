
type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

type tree =
| Node of natural * tree * tree
| Leaf

(** val append : lst -> lst -> lst **)

let rec append append_arg0 append_arg1 =
  match append_arg0 with
  | Nil -> append_arg1
  | Cons (x, y) -> Cons (x, (append y append_arg1))

(** val revflat : tree -> lst **)

let rec revflat = function
| Node (d, l, r) -> append (revflat l) (Cons (d, (revflat r)))
| Leaf -> Nil

(** val qrevaflat : tree -> lst -> lst **)

let rec qrevaflat qrevaflat_arg0 qrevaflat_arg1 =
  match qrevaflat_arg0 with
  | Node (d, l, r) -> qrevaflat l (Cons (d, (qrevaflat r qrevaflat_arg1)))
  | Leaf -> qrevaflat_arg1
