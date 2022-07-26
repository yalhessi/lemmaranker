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


let synth (lf2:natural) (z:natural) (x:natural)  =
  plus lf2 (mult x z);;