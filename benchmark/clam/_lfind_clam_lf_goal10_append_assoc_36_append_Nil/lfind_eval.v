Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal10.

Set Printing Depth 1000.
Definition lfind_eval  l1:=
append l1 Nil.

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ Zero) Nil)))).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).

Compute lfind_eval  (Nil).
