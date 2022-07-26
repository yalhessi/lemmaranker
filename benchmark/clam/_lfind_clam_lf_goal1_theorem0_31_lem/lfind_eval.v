Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal1.

Set Printing Depth 1000.
Definition lfind_eval  x:=
Succ x.

Compute lfind_eval  (Succ (Succ (Succ (Succ (Succ Zero))))).

Compute lfind_eval  (Succ (Succ Zero)).

Compute lfind_eval  (Succ (Succ (Succ Zero))).

Compute lfind_eval  (Succ Zero).

Compute lfind_eval  (Zero).
