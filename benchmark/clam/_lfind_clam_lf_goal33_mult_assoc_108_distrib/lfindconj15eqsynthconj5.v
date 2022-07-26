Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal33.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma conj15eqsynthconj5 : forall  (lv0 : natural) (lv1 : natural) (lv2 : natural), (@eq natural (mult lv0 (mult lv1 lv2)) (mult lv1 (mult lv0 lv2))).
Admitted.
QuickChick conj15eqsynthconj5.
