Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal35.
 Lemma lfind_state  (x:natural) (y:natural) (z:natural) (a:natural):@eq natural (qexp x y (mult z (mult a x))) (qexp x y (mult (mult z a) x)).
Admitted.