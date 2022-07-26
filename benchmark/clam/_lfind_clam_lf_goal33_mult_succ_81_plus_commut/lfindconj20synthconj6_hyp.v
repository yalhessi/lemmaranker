Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.

Lemma conj20synthconj6_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus lv0 lv2) (mult lv2 (Succ lv1))) ->  (@eq natural (Succ (plus lv0 (plus lv1 lv2))) (mult (Succ lv2) (Succ lv1))).
Admitted.
