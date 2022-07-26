Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal9.

Set Printing Depth 1000.
Definition lfind_eval  l n x3 x1:=
drop (Succ x1) (Cons x3 (Cons n l)).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero) (Succ Zero) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Succ Zero) (Succ (Succ Zero)) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Zero) (Succ (Succ (Succ Zero))) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) Nil) (Zero) (Zero) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero) (Zero) (Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Zero) (Succ Zero) (Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)) (Succ Zero) (Succ (Succ Zero)) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Succ (Succ (Succ Zero))) (Zero) (Succ Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero) (Zero) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ (Succ (Succ Zero))) (Zero) (Zero).

Compute lfind_eval  (Nil) (Succ Zero) (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Cons Zero Nil) (Zero) (Succ Zero) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero) (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ (Succ (Succ (Succ Zero))))) (Zero) (Zero).

Compute lfind_eval  (Nil) (Zero) (Succ Zero) (Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero) (Zero) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ Zero)) (Succ Zero) (Succ Zero).

Compute lfind_eval  (Nil) (Zero) (Succ (Succ Zero)) (Zero).

Compute lfind_eval  (Nil) (Succ (Succ (Succ (Succ (Succ Zero))))) (Zero) (Zero).

Compute lfind_eval  (Nil) (Succ Zero) (Zero) (Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Zero) (Zero) (Zero).

Compute lfind_eval  (Nil) (Zero) (Succ (Succ (Succ Zero))) (Zero).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil)) (Zero) (Succ (Succ (Succ Zero))) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Zero) (Zero) (Succ Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Zero) (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)) (Zero) (Succ (Succ Zero)) (Zero).

Compute lfind_eval  (Nil) (Zero) (Zero) (Succ Zero).

Compute lfind_eval  (Nil) (Succ Zero) (Succ (Succ (Succ (Succ Zero)))) (Succ Zero).

Compute lfind_eval  (Nil) (Zero) (Zero) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero) (Zero) (Zero).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Succ Zero) (Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) Nil))) (Succ (Succ (Succ Zero))) (Succ Zero) (Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero) (Succ (Succ (Succ (Succ Zero)))) (Zero).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Succ Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons Zero (Cons Zero Nil))) (Zero) (Succ (Succ Zero)) (Zero).

Compute lfind_eval  (Nil) (Zero) (Zero) (Zero).
