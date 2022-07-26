Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj3synthconj2 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult lv0 (Succ Zero)) (plus lv1 (Succ lv2))).
Admitted.
QuickChick conj3synthconj2.
