Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal79.

Set Printing Depth 1000.
Definition lfind_eval  x n:=
Cons n x.

Compute lfind_eval  (Cons Zero Nil) (Zero).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Nil) (Succ (Succ Zero)).

Compute lfind_eval  (Cons Zero Nil) (Zero).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ Zero) Nil)) (Zero).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Zero).

Compute lfind_eval  (Nil) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Succ Zero).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) Nil)) (Zero).

Compute lfind_eval  (Nil) (Succ Zero).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Succ Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero (Cons Zero Nil)))) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Nil) (Succ (Succ Zero)).

Compute lfind_eval  (Nil) (Zero).

Compute lfind_eval  (Cons Zero Nil) (Zero).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)) (Zero).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ (Succ (Succ Zero)))) Nil)) (Succ (Succ Zero)).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) (Cons Zero (Cons Zero (Cons Zero Nil))))) (Zero).

Compute lfind_eval  (Nil) (Zero).
