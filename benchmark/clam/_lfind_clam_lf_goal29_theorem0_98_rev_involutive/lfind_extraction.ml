
type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

(** val lfind_example_1 : lst **)

let lfind_example_1 =
  Cons ((Succ (Succ Zero)), (Cons (Zero, Nil)))

(** val lfind_example_2 : lst **)

let lfind_example_2 =
  Cons (Zero, (Cons ((Succ (Succ Zero)), Nil)))

(** val lfind_example_3 : lst **)

let lfind_example_3 =
  Cons (Zero, Nil)

(** val lfind_example_4 : lst **)

let lfind_example_4 =
  Cons ((Succ (Succ (Succ (Succ (Succ Zero))))), Nil)

(** val lfind_example_5 : lst **)

let lfind_example_5 =
  Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ (Succ (Succ (Succ Zero)))),
    Nil)))))

(** val lfind_example_6 : lst **)

let lfind_example_6 =
  Cons ((Succ Zero), Nil)

(** val lfind_example_7 : lst **)

let lfind_example_7 =
  Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), (Cons ((Succ (Succ (Succ
    Zero))), (Cons ((Succ (Succ Zero)), Nil)))))))))

(** val lfind_example_8 : lst **)

let lfind_example_8 =
  Nil
