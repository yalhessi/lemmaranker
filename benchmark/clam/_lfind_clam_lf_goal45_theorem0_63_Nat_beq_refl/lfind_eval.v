Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal45.

Set Printing Depth 1000.
Definition lfind_eval  x:=
eqb x x.

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Zero).
