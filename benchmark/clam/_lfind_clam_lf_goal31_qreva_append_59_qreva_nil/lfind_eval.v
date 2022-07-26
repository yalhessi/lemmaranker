Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal31.

Set Printing Depth 1000.
Definition lfind_eval  n x:=
qreva x (Cons n Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Cons Zero (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Succ Zero) (Nil).

Compute lfind_eval  (Succ (Succ (Succ Zero))) (Nil).

Compute lfind_eval  (Zero) (Cons Zero Nil).

Compute lfind_eval  (Zero) (Cons Zero Nil).

Compute lfind_eval  (Zero) (Cons Zero (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons Zero Nil)))).

Compute lfind_eval  (Succ Zero) (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Succ Zero) (Cons (Succ (Succ (Succ (Succ (Succ Zero))))) Nil).

Compute lfind_eval  (Zero) (Cons Zero Nil).

Compute lfind_eval  (Zero) (Cons Zero (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Zero) (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil)).

Compute lfind_eval  (Zero) (Nil).

Compute lfind_eval  (Zero) (Nil).

Compute lfind_eval  (Zero) (Cons Zero (Cons Zero (Cons Zero (Cons (Succ Zero) (Cons (Succ (Succ (Succ Zero))) (Cons (Succ (Succ Zero)) Nil)))))).

Compute lfind_eval  (Succ Zero) (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Succ Zero) (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Succ (Succ Zero)) (Nil).

Compute lfind_eval  (Zero) (Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Zero) (Cons (Succ Zero) (Cons Zero (Cons (Succ Zero) (Cons Zero (Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) (Cons (Succ Zero) Nil)))))).

Compute lfind_eval  (Succ Zero) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Succ (Succ Zero)) (Nil).

Compute lfind_eval  (Zero) (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil))).

Compute lfind_eval  (Zero) (Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Zero) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Cons Zero Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Nil).

Compute lfind_eval  (Zero) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Succ (Succ Zero)) (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Zero) (Nil).

Compute lfind_eval  (Succ Zero) (Nil).

Compute lfind_eval  (Zero) (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Succ Zero) (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ (Succ Zero)) (Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil)))).

Compute lfind_eval  (Zero) (Nil).
