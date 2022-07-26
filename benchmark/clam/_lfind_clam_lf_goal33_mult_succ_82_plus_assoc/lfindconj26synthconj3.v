Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj26synthconj3 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (Succ (plus (mult lv0 lv1) (plus lv0 lv1))) (mult (Succ Zero) lv2)).
Admitted.
QuickChick conj26synthconj3.
