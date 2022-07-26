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
let rec fac (n:natural):natural=
 match n with
| Zero -> Succ Zero
| Succ n -> mult (fac n) n

;;
let rec qfac (qfac_arg0:natural) (qfac_arg1:natural):natural=
  match qfac_arg0 with
  | Zero -> qfac_arg1
  | Succ n -> qfac n (mult qfac_arg1 n)
;;
let synth : Set|>
{

}=?