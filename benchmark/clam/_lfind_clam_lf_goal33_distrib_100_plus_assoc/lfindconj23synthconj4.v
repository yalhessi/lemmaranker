Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj23synthconj4 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural) (lv3 : natural), (@eq natural (plus (mult lv0 lv1) lv2) (plus (plus lv1 (mult lv1 lv0)) (mult lv3 lv1))).
Admitted.
QuickChick conj23synthconj4.
