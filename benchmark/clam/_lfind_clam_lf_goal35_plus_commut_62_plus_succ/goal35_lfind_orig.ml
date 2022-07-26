
type natural =
| Zero
| Succ of natural

(** val plus : natural -> natural -> natural **)

let rec plus plus_arg0 plus_arg1 =
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)
