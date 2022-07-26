Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.

Lemma conj15synthconj1 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult (plus (mult lv0 lv1) lv1) lv2) (plus (mult lv0 (mult lv1 lv2)) (mult lv1 lv2))).
Admitted.
