Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal15.
 Lemma lfind_state  (x:natural) (IHx:@eq natural (plus x (Succ x)) (Succ (plus x x))):@eq natural (plus x (Succ (Succ x))) (Succ (Succ (plus x x))).
Admitted.