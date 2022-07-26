Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal35.
 Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (plus x y) (plus y x)):@eq natural (Succ (plus x y)) (plus y (Succ x)).
Admitted.