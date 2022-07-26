Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal19.
 Lemma lfind_state  (x:lst) (y:lst):@eq lst (append (rev (rev x)) y) (rev (rev (append x y))).
Admitted.