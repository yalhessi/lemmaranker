type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Succ n -> Succ (plus n plus_arg1)
  | Zero -> plus_arg1

;;
let rec half (n:natural):natural=
 match n with
| Succ n0 -> (match n0 with
              | Succ n -> Succ (half n)
              | Zero -> Zero)
| Zero -> Zero
;;
let synth : natural|> {} = ?