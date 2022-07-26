Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.

Set Printing Depth 1000.
Definition lfind_eval  x:=
qreva x Nil.

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ (Succ Zero))) (Cons (Succ (Succ Zero)) Nil))).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Nil).
