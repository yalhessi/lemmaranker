Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj21eqsynthconj5 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (plus (plus (mult lv0 lv1) lv1) lv2) (plus lv2 (mult (Succ lv0) lv1))).
Admitted.
QuickChick conj21eqsynthconj5.
