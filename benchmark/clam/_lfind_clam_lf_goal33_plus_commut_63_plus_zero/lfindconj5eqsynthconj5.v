Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj5eqsynthconj5 : forall  (lv0 : natural), (@eq natural (plus lv0 Zero) (plus Zero lv0)).
Admitted.
QuickChick conj5eqsynthconj5.
