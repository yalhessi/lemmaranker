Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj7synthconj4 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (plus lv0 (plus Zero lv1)) (plus lv1 lv0)).
Admitted.
QuickChick conj7synthconj4.
