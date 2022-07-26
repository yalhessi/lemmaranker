Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal7.

Set Printing Depth 1000.
Definition lfind_eval  y:=
len y.

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) (Cons Zero Nil))).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ Zero) (Cons (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) (Cons (Succ Zero) Nil)))).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil)).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).
