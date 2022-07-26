
type natural =
| Zero
| Succ of natural

(** val plus : natural -> natural -> natural **)

let rec plus plus_arg0 plus_arg1 =
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)

(** val mult : natural -> natural -> natural **)

let rec mult mult_arg0 mult_arg1 =
  match mult_arg0 with
  | Zero -> Zero
  | Succ n -> plus (mult n mult_arg1) mult_arg1

(** val qmult : natural -> natural -> natural -> natural **)

let rec qmult qmult_arg0 qmult_arg1 qmult_arg2 =
  match qmult_arg0 with
  | Zero -> qmult_arg2
  | Succ n -> qmult n qmult_arg1 (plus qmult_arg2 qmult_arg1)
