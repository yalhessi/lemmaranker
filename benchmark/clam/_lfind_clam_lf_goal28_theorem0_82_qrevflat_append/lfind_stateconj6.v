Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.
 Lemma lfind_state  (x:tree):@eq lst (revflat x) (qrevaflat x Nil).
Admitted.