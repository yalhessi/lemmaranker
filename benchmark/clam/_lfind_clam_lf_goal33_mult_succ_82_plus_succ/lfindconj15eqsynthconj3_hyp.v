Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.

Lemma conj15eqsynthconj3_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (mult lv0 lv2) lv0) (mult lv0 lv1)) ->  (@eq natural (Succ (plus (mult lv0 lv1) lv2)) (mult (Succ lv0) (Succ lv2))).
Admitted.
