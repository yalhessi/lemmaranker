Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal26.
 Lemma lfind_state  (x:natural) (y:natural):@eq natural (half (plus x y)) (half (plus y x)).
Admitted.