Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj14synthconj5 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (mult (Succ lv0) lv1) (plus (mult lv0 lv1) lv1)).
Admitted.
QuickChick conj14synthconj5.
