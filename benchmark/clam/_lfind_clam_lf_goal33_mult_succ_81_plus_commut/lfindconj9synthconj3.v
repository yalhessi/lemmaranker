Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj9synthconj3 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (plus lv0 (mult lv1 lv0)) (plus (mult lv1 lv0) lv0)).
Admitted.
QuickChick conj9synthconj3.
