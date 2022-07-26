
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val lfind_example_l : lst **)

let lfind_example_l =
  Nil

(** val lfind_example_n : natural **)

let lfind_example_n =
  Zero

(** val lfind_example_y : natural **)

let lfind_example_y =
  Zero

(** val lfind_example_x : natural **)

let lfind_example_x =
  Zero
