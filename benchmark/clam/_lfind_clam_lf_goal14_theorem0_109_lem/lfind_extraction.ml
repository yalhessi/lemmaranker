
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val lfind_example_1 : lst **)

let lfind_example_1 =
  Cons (Zero, (Cons ((Succ Zero), Nil)))

(** val lfind_example_2 : lst **)

let lfind_example_2 =
  Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons ((Succ Zero),
    Nil)))))))))

(** val lfind_example_3 : lst **)

let lfind_example_3 =
  Cons (Zero, (Cons (Zero, Nil)))

(** val lfind_example_4 : lst **)

let lfind_example_4 =
  Cons ((Succ (Succ Zero)), Nil)

(** val lfind_example_5 : lst **)

let lfind_example_5 =
  Cons ((Succ Zero), (Cons ((Succ Zero), (Cons ((Succ (Succ Zero)), Nil)))))

(** val lfind_example_6 : lst **)

let lfind_example_6 =
  Cons (Zero, Nil)

(** val lfind_example_7 : lst **)

let lfind_example_7 =
  Cons (Zero, Nil)

(** val lfind_example_8 : lst **)

let lfind_example_8 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_9 : lst **)

let lfind_example_9 =
  Cons (Zero, (Cons ((Succ Zero), Nil)))

(** val lfind_example_10 : lst **)

let lfind_example_10 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_11 : lst **)

let lfind_example_11 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_12 : lst **)

let lfind_example_12 =
  Cons (Zero, (Cons ((Succ (Succ (Succ Zero))), Nil)))

(** val lfind_example_13 : lst **)

let lfind_example_13 =
  Nil

(** val lfind_example_14 : lst **)

let lfind_example_14 =
  Nil

(** val lfind_example_15 : lst **)

let lfind_example_15 =
  Cons (Zero, Nil)

(** val lfind_example_16 : lst **)

let lfind_example_16 =
  Nil

(** val lfind_example_17 : lst **)

let lfind_example_17 =
  Nil
