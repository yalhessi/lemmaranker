Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal78.
 Lemma lfind_state  (y:lst):@eq lst (rev (rev y)) (append y Nil).
Admitted.