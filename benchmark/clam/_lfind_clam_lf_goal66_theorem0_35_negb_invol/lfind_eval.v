Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith Bool.
From adtind Require Import goal66.

Set Printing Depth 1000.
Definition lfind_eval  y:=
negb (even y).

Compute lfind_eval  (Succ (Succ (Succ (Succ (Succ Zero))))).

Compute lfind_eval  (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Zero).
