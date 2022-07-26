Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj6eqsynthconj2 : forall  (lv0 : natural), (@eq natural (Succ lv0) (plus (Succ lv0) Zero)).
Admitted.
QuickChick conj6eqsynthconj2.
