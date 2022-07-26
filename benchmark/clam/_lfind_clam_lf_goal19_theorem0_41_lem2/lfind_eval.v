Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal19.

Set Printing Depth 1000.
Definition lfind_eval  y x:=
rev (append x y).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Nil).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ Zero))) Nil))) (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons Zero (Cons (Succ Zero) Nil))) (Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero (Cons Zero Nil)))) (Cons Zero (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero Nil)))).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ Zero)) Nil))) (Nil).

Compute lfind_eval  (Nil) (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) (Cons (Succ (Succ (Succ (Succ Zero)))) Nil))) (Cons (Succ (Succ Zero)) (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil)))).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Nil).

Compute lfind_eval  (Nil) (Cons Zero Nil).

Compute lfind_eval  (Nil) (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Nil) (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ (Succ Zero)))) Nil))).

Compute lfind_eval  (Nil) (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Nil).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ Zero)) Nil))) (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons Zero Nil) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Cons Zero (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Cons Zero Nil) (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero Nil))).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ Zero) (Cons Zero Nil))) (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Nil) (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Nil).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ Zero) (Cons (Succ (Succ (Succ Zero))) Nil))).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil)) (Nil).

Compute lfind_eval  (Cons Zero Nil) (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Nil) (Nil).
