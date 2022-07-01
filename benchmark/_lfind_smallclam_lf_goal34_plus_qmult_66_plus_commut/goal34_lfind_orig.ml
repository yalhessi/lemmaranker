
type natural =
| Zero
| Succ of natural

(** val plus : natural -> natural -> natural **)

let rec plus plus_arg0 plus_arg1 =
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)

(** val qmult : natural -> natural -> natural -> natural **)

let rec qmult qmult_arg0 qmult_arg1 qmult_arg2 =
  match qmult_arg0 with
  | Zero -> qmult_arg2
  | Succ n -> qmult n qmult_arg1 (plus qmult_arg2 qmult_arg1)
