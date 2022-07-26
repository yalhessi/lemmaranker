
type natural =
| Zero
| Succ of natural

(** val lfind_example_1 : natural **)

let lfind_example_1 =
  Succ (Succ (Succ (Succ (Succ (Succ Zero)))))

(** val lfind_example_2 : natural **)

let lfind_example_2 =
  Succ Zero

(** val lfind_example_3 : natural **)

let lfind_example_3 =
  Succ (Succ Zero)

(** val lfind_example_4 : natural **)

let lfind_example_4 =
  Succ (Succ Zero)

(** val lfind_example_5 : natural **)

let lfind_example_5 =
  Succ (Succ (Succ (Succ Zero)))

(** val lfind_example_6 : natural **)

let lfind_example_6 =
  Succ Zero

(** val lfind_example_7 : natural **)

let lfind_example_7 =
  Succ (Succ (Succ Zero))

(** val lfind_example_8 : natural **)

let lfind_example_8 =
  Succ (Succ (Succ Zero))

(** val lfind_example_9 : natural **)

let lfind_example_9 =
  Succ (Succ Zero)

(** val lfind_example_10 : natural **)

let lfind_example_10 =
  Succ (Succ (Succ Zero))

(** val lfind_example_11 : natural **)

let lfind_example_11 =
  Succ Zero
