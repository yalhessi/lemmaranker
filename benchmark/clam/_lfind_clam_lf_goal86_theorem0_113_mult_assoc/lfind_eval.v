Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal86.

Set Printing Depth 1000.
Definition lfind_eval  x z:=
mult z x.

Compute lfind_eval  (Zero) (Zero).

Compute lfind_eval  (Succ Zero) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Succ Zero) (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ Zero))) (Zero).

Compute lfind_eval  (Succ Zero) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ Zero) (Zero).

Compute lfind_eval  (Succ (Succ Zero)) (Succ Zero).

Compute lfind_eval  (Succ Zero) (Zero).

Compute lfind_eval  (Succ (Succ Zero)) (Zero).

Compute lfind_eval  (Zero) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Zero) (Succ Zero).

Compute lfind_eval  (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Succ Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Succ Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Zero) (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ (Succ Zero)))) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Zero) (Zero).

Compute lfind_eval  (Succ (Succ Zero)) (Succ (Succ Zero)).

Compute lfind_eval  (Succ Zero) (Zero).

Compute lfind_eval  (Zero) (Succ Zero).

Compute lfind_eval  (Succ Zero) (Succ Zero).

Compute lfind_eval  (Zero) (Succ (Succ (Succ (Succ (Succ Zero))))).

Compute lfind_eval  (Zero) (Zero).