Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.

Set Printing Depth 1000.
Definition lfind_eval  y:=
append y Nil.

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) Nil).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons Zero Nil))).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ Zero)) Nil))).

Compute lfind_eval  (Cons Zero (Cons (Succ (Succ Zero)) (Cons (Succ Zero) Nil))).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero Nil)).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) (Cons (Succ Zero) Nil))).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Nil).
