Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal18.
 Lemma lfind_state  (y:lst):@eq lst (rev y) (append (rev y) Nil).
Admitted.