
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

(** val exp : natural -> natural -> natural **)

let rec exp exp_arg0 = function
| Zero -> Succ Zero
| Succ m -> mult (exp exp_arg0 m) exp_arg0

(** val qexp : natural -> natural -> natural -> natural **)

let rec qexp qexp_arg0 qexp_arg1 qexp_arg2 =
  match qexp_arg1 with
  | Zero -> qexp_arg2
  | Succ m -> qexp qexp_arg0 m (mult qexp_arg2 qexp_arg0)
