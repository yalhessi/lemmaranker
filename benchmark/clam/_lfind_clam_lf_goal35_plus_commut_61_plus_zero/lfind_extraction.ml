
type natural =
| Zero
| Succ of natural

(** val lfind_example_1 : natural **)

let lfind_example_1 =
  Succ (Succ (Succ Zero))

(** val lfind_example_2 : natural **)

let lfind_example_2 =
  Succ (Succ (Succ (Succ Zero)))

(** val lfind_example_3 : natural **)

let lfind_example_3 =
  Succ Zero

(** val lfind_example_4 : natural **)

let lfind_example_4 =
  Succ (Succ Zero)

(** val lfind_example_5 : natural **)

let lfind_example_5 =
  Zero
