Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal17.
 Lemma lfind_state  (x:lst) (y:lst):@eq lst (rev (rev (append x y))) (append (rev (rev x)) (rev (rev y))).
Admitted.