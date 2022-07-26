Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj6synthconj6 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (mult (Succ lv0) lv1) (mult lv1 (Succ lv0))).
Admitted.
QuickChick conj6synthconj6.
