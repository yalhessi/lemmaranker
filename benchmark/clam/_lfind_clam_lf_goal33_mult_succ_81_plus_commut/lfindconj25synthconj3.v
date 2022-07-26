Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj25synthconj3 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (Succ (plus (mult lv0 lv1) lv2)) (plus (mult lv0 (plus lv1 (Succ Zero))) (plus lv1 (Succ Zero)))).
Admitted.
QuickChick conj25synthconj3.
