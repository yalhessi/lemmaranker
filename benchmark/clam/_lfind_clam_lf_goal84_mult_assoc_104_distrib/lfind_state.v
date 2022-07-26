Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal84.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural) (IHx:@eq natural (mult (mult x y) z) (mult x (mult y z))):@eq natural (mult (plus (mult x y) y) z)
  (plus (mult x (mult y z)) (mult y z)).
Admitted.