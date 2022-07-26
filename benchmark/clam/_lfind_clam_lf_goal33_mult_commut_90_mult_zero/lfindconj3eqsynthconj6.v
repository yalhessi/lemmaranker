Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj3eqsynthconj6 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (mult lv0 lv1) (lv0)).
Admitted.
QuickChick conj3eqsynthconj6.
