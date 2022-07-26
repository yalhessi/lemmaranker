Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal14.

Set Printing Depth 1000.
Definition lfind_eval  x:=
sort x.

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero (Cons (Succ Zero) (Cons Zero Nil))))).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil))).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons Zero Nil)).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).
