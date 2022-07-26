Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal27.

Set Printing Depth 1000.
Definition lfind_eval  x:=
append (rev x) Nil.

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero (Cons (Succ Zero) Nil))).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) Nil)).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons Zero Nil).

Compute lfind_eval  (Cons (Succ Zero) Nil).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ Zero) Nil)).

Compute lfind_eval  (Cons (Succ Zero) (Cons Zero (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons Zero Nil)))).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) Nil).

Compute lfind_eval  (Nil).
