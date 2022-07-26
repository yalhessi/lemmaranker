
type natural =
| Succ of natural
| Zero

(** val plus : natural -> natural -> natural **)

let rec plus plus_arg0 plus_arg1 =
  match plus_arg0 with
  | Succ n -> Succ (plus n plus_arg1)
  | Zero -> plus_arg1

(** val double : natural -> natural **)

let rec double = function
| Succ n -> Succ (Succ (double n))
| Zero -> Zero
