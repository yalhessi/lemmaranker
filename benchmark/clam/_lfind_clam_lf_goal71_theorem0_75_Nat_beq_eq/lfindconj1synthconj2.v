Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal71.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj1synthconj2 : forall  (lv0 : natural) (lv1 : natural), (@eq natural lv0 (lv1)).
Admitted.
QuickChick conj1synthconj2.
