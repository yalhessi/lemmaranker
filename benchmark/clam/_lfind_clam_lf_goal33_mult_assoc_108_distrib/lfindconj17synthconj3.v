Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj17synthconj3 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult (plus (mult lv0 lv1) lv1) lv2) (mult lv2 (mult (Succ lv0) lv1))).
Admitted.
QuickChick conj17synthconj3.
