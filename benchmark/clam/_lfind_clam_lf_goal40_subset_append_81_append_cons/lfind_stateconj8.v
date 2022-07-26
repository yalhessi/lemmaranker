Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From adtind Require Import goal40.
 Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq bool (lst_subset x (append y (Cons n x))) true.
Admitted.