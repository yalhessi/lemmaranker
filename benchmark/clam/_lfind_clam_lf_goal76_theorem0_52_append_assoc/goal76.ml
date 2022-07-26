type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

type tree =
| Node of natural * tree * tree
| Leaf

let rec append (append_arg0:lst) (append_arg1:lst):lst=
  match append_arg0 with
  | Nil -> append_arg1
  | Cons (x, y) -> Cons (x, (append y append_arg1))

;;
let rec revflat (n:tree):lst=
 match n with
| Node (d, l, r) -> append (revflat l) (Cons (d, (revflat r)))
| Leaf -> Nil

;;
let rec qrevaflat (qrevaflat_arg0:tree) (qrevaflat_arg1:lst):lst=
  match qrevaflat_arg0 with
  | Node (d, l, r) -> qrevaflat l (Cons (d, (qrevaflat r qrevaflat_arg1)))
  | Leaf -> qrevaflat_arg1
;;
