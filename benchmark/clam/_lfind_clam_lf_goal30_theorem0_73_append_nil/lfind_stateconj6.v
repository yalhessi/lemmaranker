Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal30.
 Lemma lfind_state  (x:lst):@eq lst (rev (append (rev x) Nil)) x.
Admitted.