Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal71.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj4eqsynthconj1 : forall , (@eq natural (Zero) (Zero)).
Admitted.
QuickChick conj4eqsynthconj1.
