Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal24.
 Lemma lfind_state  (x:natural) (y:natural):@eq bool (negb (even (plus y x))) (even (plus y (Succ x))).
Admitted.