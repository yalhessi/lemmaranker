Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith Bool.
From adtind Require Import goal66.
 Lemma lfind_state  (y:natural):@eq bool (even y) (negb (negb (even y))).
Admitted.