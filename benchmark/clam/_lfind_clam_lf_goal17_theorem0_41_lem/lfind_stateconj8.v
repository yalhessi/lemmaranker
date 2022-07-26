Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal17.
 Lemma lfind_state  (x:lst) (y:lst):@eq lst (append x y) (append x (rev (rev y))).
Admitted.