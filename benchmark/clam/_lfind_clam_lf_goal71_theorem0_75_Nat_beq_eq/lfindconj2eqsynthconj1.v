Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal71.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj2eqsynthconj1 : forall  (lv0 : natural), (@eq natural (Succ lv0) (Succ Zero)).
Admitted.
QuickChick conj2eqsynthconj1.
