Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj25synthconj1 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (plus lv0 lv1) (Succ (plus Zero lv2))) (plus (mult lv2 (Succ lv1)) (Succ lv1))).
Admitted.
QuickChick conj25synthconj1.
