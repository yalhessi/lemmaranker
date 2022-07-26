Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.

Set Printing Depth 1000.
Definition lfind_eval  x2:=
append (revflat x2) Nil.
