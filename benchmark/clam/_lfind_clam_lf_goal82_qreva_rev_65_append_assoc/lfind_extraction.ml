
type natural =
| Succ of natural
| Zero

type lst =
| Nil
| Cons of natural * lst

(** val lfind_example_1 : lst **)

let lfind_example_1 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_2 : lst **)

let lfind_example_2 =
  Cons ((Succ (Succ (Succ Zero))), Nil)

(** val lfind_example_3 : lst **)

let lfind_example_3 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_4 : lst **)

let lfind_example_4 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_5 : lst **)

let lfind_example_5 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_6 : lst **)

let lfind_example_6 =
  Cons ((Succ (Succ (Succ Zero))), Nil)

(** val lfind_example_7 : lst **)

let lfind_example_7 =
  Cons (Zero, Nil)

(** val lfind_example_8 : lst **)

let lfind_example_8 =
  Cons (Zero, Nil)

(** val lfind_example_9 : lst **)

let lfind_example_9 =
  Cons ((Succ (Succ Zero)), Nil)

(** val lfind_example_10 : lst **)

let lfind_example_10 =
  Cons (Zero, Nil)

(** val lfind_example_11 : lst **)

let lfind_example_11 =
  Cons (Zero, Nil)

(** val lfind_example_12 : lst **)

let lfind_example_12 =
  Cons (Zero, Nil)

(** val lfind_example_13 : lst **)

let lfind_example_13 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_14 : lst **)

let lfind_example_14 =
  Cons (Zero, Nil)

(** val lfind_example_15 : lst **)

let lfind_example_15 =
  Cons ((Succ (Succ (Succ (Succ Zero)))), Nil)

(** val lfind_example_16 : lst **)

let lfind_example_16 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_17 : lst **)

let lfind_example_17 =
  Cons ((Succ (Succ Zero)), Nil)

(** val lfind_example_18 : lst **)

let lfind_example_18 =
  Cons (Zero, Nil)

(** val lfind_example_19 : lst **)

let lfind_example_19 =
  Cons (Zero, Nil)

(** val lfind_example_20 : lst **)

let lfind_example_20 =
  Cons (Zero, Nil)

(** val lfind_example_21 : lst **)

let lfind_example_21 =
  Cons (Zero, Nil)

(** val lfind_example_22 : lst **)

let lfind_example_22 =
  Cons (Zero, Nil)

(** val lfind_example_23 : lst **)

let lfind_example_23 =
  Cons ((Succ (Succ Zero)), Nil)

(** val lfind_example_24 : lst **)

let lfind_example_24 =
  Cons (Zero, Nil)

(** val lfind_example_25 : lst **)

let lfind_example_25 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_26 : lst **)

let lfind_example_26 =
  Cons (Zero, Nil)
