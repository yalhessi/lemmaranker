Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj5eqsynthconj6 : forall  (lv0 : natural), (@eq natural (mult lv0 Zero) (Zero)).
Admitted.
QuickChick conj5eqsynthconj6.
