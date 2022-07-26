Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj25synthconj2_hyp: forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus lv0 lv2) (mult lv2 (Succ lv1))) ->  (@eq natural (plus (plus lv0 lv1) (Succ lv2)) (plus (mult lv2 (plus (Succ lv1) Zero)) (plus (Succ lv1) Zero))).
Admitted.
QuickChick conj25synthconj2_hyp.
