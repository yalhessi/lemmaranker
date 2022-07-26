Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal71.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj3synthconj1 : forall  (lv0 : natural), (@eq natural lv0 (Zero)).
Admitted.
QuickChick conj3synthconj1.
