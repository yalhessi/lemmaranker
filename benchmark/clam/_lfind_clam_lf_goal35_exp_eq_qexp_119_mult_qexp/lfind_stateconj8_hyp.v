Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal35.
 Lemma lfind_state  (x:natural) (y:natural) (IHy:@eq natural (exp x y) (qexp x y (Succ Zero))):@eq natural (mult (qexp x y (Succ Zero)) x) (qexp x y x).
Admitted.