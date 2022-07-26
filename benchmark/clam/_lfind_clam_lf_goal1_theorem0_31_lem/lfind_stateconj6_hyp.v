Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal1.
 Lemma lfind_state  (x:natural) (IHx:@eq natural (double x) (plus x x)):@eq natural (Succ (plus x x)) (plus x (Succ x)).
Admitted.