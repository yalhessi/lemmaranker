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

Lemma conj9synthconj6 : forall  (lv0 : lst) (lv1 : lst) (lv2 : natural), (@eq natural (len (append lv0 lv1)) (lv2)).
Admitted.
QuickChick conj9synthconj6.
