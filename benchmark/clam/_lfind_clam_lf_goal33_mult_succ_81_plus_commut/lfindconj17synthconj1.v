Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj17synthconj1 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (plus Zero (plus lv0 lv1)) (plus lv0 lv1)).
Admitted.
QuickChick conj17synthconj1.
