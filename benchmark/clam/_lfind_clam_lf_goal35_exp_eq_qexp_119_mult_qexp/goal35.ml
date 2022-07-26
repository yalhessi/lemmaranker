type nat =
 | O
 | S of nat

type natural =
| Zero
| Succ of natural

let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)

;;
let rec mult (mult_arg0:natural) (mult_arg1:natural):natural=
  match mult_arg0 with
  | Zero -> Zero
  | Succ n -> plus (mult n mult_arg1) mult_arg1

;;
let rec exp (exp_arg0:natural):natural=
| Zero -> Succ Zero
| Succ m -> mult (exp exp_arg0 m) exp_arg0

;;
let rec qexp (qexp_arg0:natural) (qexp_arg1:natural) (qexp_arg2:natural):natural=
  match qexp_arg1 with
  | Zero -> qexp_arg2
  | Succ m -> qexp qexp_arg0 m (mult qexp_arg2 qexp_arg0)
;;
