Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal56.

Set Printing Depth 1000.
Definition lfind_eval  z x:=
drop x z.

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ (Succ (Succ (Succ Zero))))).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero (Cons Zero Nil)))) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ Zero)).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero (Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil)))) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)) (Succ (Succ Zero)).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero (Cons (Succ Zero) (Cons Zero Nil)))) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)) (Succ Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil))) (Zero).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ Zero) Nil))) (Zero).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ Zero) Nil))) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) (Cons Zero Nil))) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons (Succ Zero) (Cons (Succ Zero) Nil))) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero (Cons Zero Nil)))) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Zero).
