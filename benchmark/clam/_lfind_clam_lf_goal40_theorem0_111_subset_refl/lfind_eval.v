Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal40.

Set Printing Depth 1000.
Definition lfind_eval  y:=
lst_subset y y.

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons (Succ (Succ Zero)) Nil))).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) Nil).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ (Succ Zero))))) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) (Cons Zero (Cons (Succ (Succ Zero)) Nil)))).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Nil).
