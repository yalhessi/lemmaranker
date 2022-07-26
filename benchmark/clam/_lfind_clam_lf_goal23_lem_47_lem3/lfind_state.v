Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal23.
 Lemma lfind_state  (l2:lst):@eq natural (len l2) (len (append l2 Nil)).
Admitted.