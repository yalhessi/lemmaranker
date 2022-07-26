Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal81.
 Lemma lfind_state  (y:lst):@eq lst (qreva y Nil) (append (rev y) Nil).
Admitted.