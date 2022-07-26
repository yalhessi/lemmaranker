Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal86.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural) (IHx:@eq natural (mult (plus x y) z) (plus (mult x z) (mult y z))):@eq natural (plus (plus (mult x z) (mult y z)) z)
  (plus (plus (mult x z) z) (mult y z)).
Admitted.