
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val lfind_example_1 : lst **)

let lfind_example_1 =
  Cons ((Succ Zero), (Cons ((Succ Zero), Nil)))

(** val lfind_example_2 : lst **)

let lfind_example_2 =
  Cons (Zero, (Cons (Zero, Nil)))

(** val lfind_example_3 : lst **)

let lfind_example_3 =
  Cons ((Succ (Succ (Succ (Succ Zero)))), (Cons (Zero, Nil)))

(** val lfind_example_4 : lst **)

let lfind_example_4 =
  Cons ((Succ (Succ Zero)), (Cons ((Succ (Succ Zero)), Nil)))

(** val lfind_example_5 : lst **)

let lfind_example_5 =
  Cons ((Succ Zero), (Cons ((Succ Zero), (Cons ((Succ Zero), Nil)))))

(** val lfind_example_6 : lst **)

let lfind_example_6 =
  Cons ((Succ Zero), (Cons (Zero, Nil)))

(** val lfind_example_7 : lst **)

let lfind_example_7 =
  Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ (Succ Zero)), Nil)))))

(** val lfind_example_8 : lst **)

let lfind_example_8 =
  Cons (Zero, (Cons ((Succ (Succ Zero)), (Cons ((Succ Zero), Nil)))))

(** val lfind_example_9 : lst **)

let lfind_example_9 =
  Cons (Zero, (Cons (Zero, (Cons (Zero, Nil)))))

(** val lfind_example_10 : lst **)

let lfind_example_10 =
  Cons (Zero, Nil)

(** val lfind_example_11 : lst **)

let lfind_example_11 =
  Cons ((Succ Zero), (Cons ((Succ (Succ Zero)), (Cons ((Succ Zero), (Cons
    ((Succ Zero), Nil)))))))

(** val lfind_example_12 : lst **)

let lfind_example_12 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_13 : lst **)

let lfind_example_13 =
  Nil
