Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj19synthconj6 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult (plus (mult lv0 lv1) lv1) lv2) (mult lv1 (mult lv2 (Succ lv0)))).
Admitted.
QuickChick conj19synthconj6.
