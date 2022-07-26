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
let rec qmult (qmult_arg0:natural) (qmult_arg1:natural) (qmult_arg2:natural):natural=
  match qmult_arg0 with
  | Zero -> qmult_arg2
  | Succ n -> qmult n qmult_arg1 (plus qmult_arg2 qmult_arg1)
;;
let synth : natural|> {} = ?