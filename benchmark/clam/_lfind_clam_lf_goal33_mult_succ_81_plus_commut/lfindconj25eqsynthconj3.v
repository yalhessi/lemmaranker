Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj25eqsynthconj3 : forall  (lv0 : natural) (lv1 : natural), (@eq natural (mult lv0 (Succ lv1)) (plus lv0 (mult lv0 lv1))).
Admitted.
QuickChick conj25eqsynthconj3.