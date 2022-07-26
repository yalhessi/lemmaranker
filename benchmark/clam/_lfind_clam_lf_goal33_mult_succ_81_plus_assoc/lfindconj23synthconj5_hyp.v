Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal33.

Lemma conj23synthconj5_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (mult lv0 lv1) lv0) lv2) ->  (@eq natural (Succ (plus (mult (Succ lv0) lv1) lv0)) (plus lv2 (Succ lv1))).
Admitted.
