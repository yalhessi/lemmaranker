Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal84.
 Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (mult x y) (mult y x)):@eq natural (plus (mult y x) y) (mult y (Succ x)).
Admitted.