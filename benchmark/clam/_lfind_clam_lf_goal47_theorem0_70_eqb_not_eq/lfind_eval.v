Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal47.

Set Printing Depth 1000.
Definition lfind_eval  y x:=
eqb x y.

Compute lfind_eval  (Succ (Succ (Succ Zero))) (Zero).

Compute lfind_eval  (Succ (Succ Zero)) (Succ Zero).

Compute lfind_eval  (Zero) (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Succ (Succ Zero)) (Zero).

Compute lfind_eval  (Succ (Succ Zero)) (Succ (Succ Zero)).

Compute lfind_eval  (Zero) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ (Succ Zero)) (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Zero) (Succ (Succ Zero)).

Compute lfind_eval  (Zero) (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ Zero))) (Succ Zero).

Compute lfind_eval  (Succ Zero) (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ (Succ (Succ Zero))))) (Succ (Succ Zero)).

Compute lfind_eval  (Succ Zero) (Zero).

Compute lfind_eval  (Zero) (Zero).
