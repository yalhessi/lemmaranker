Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj5synthconj3 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult (Succ Zero) lv0) (plus (mult lv1 (Succ lv2)) (Succ lv2))).
Admitted.
QuickChick conj5synthconj3.
