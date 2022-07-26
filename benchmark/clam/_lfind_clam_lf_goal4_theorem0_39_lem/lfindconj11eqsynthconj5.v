Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal4.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma conj11eqsynthconj5 : forall  (lv0 : lst) (lv1 : lst), (@eq lst (append lv0 lv1) (append Nil (append lv0 lv1))).
Admitted.
QuickChick conj11eqsynthconj5.
