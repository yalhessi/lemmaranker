
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

(** val fac : natural -> natural **)

let rec fac = function
| Zero -> Succ Zero
| Succ n -> mult (fac n) n

(** val qfac : natural -> natural -> natural **)

let rec qfac qfac_arg0 qfac_arg1 =
  match qfac_arg0 with
  | Zero -> qfac_arg1
  | Succ n -> qfac n (mult qfac_arg1 n)
