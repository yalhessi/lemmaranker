Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (l2:lst):@eq lst (rev l2) (append (rev l2) Nil).
Admitted.