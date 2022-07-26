Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj5eqsynthconj1 : forall  (lv0 : natural), (@eq natural (mult lv0 Zero) (mult Zero (Succ lv0))).
Admitted.
QuickChick conj5eqsynthconj1.
