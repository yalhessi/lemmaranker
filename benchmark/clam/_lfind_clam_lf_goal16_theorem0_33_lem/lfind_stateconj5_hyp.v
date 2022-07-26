Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal16.
 Lemma lfind_state  (x:natural) (IHx:@eq bool (even (plus x x)) true):@eq bool (negb (even (plus x (Succ x)))) true.
Admitted.