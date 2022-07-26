Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal34.
 Lemma lfind_state  (x:natural) (y:natural) (IHx:@eq natural (mult x y) (qmult x y Zero)):@eq natural (plus (qmult x y Zero) y) (qmult x y y).
Admitted.