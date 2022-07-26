Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj6eqsynthconj4 : forall  (lv0 : natural), (@eq natural (lv0) (mult Zero lv0)).
Admitted.
QuickChick conj6eqsynthconj4.
