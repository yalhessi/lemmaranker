type nat =
 | O
 | S of nat



type bool =
| True
| False

type natural =
| Succ of natural
| Zero

let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> False)
  | Zero -> (match m with
             | Succ _ -> False
             | Zero -> True)
;;
let synth : natural|> {} = ?