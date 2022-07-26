Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal29.
 Lemma lfind_state  (x:lst):@eq lst (rev (qreva x Nil)) x.
Admitted.