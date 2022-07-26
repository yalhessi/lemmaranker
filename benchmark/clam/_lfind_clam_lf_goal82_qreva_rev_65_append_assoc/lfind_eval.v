Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith. 
From adtind Require Import goal82.

Set Printing Depth 1000.
Definition lfind_eval  n:=
Cons n Nil.

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Succ (Succ (Succ (Succ Zero)))).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Zero).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Zero).