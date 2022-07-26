Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal21.

Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma conj1synthconj1 : forall  (lv0 : lst), (@eq lst (append lv0 Nil) lv0).
Admitted.
QuickChick conj1synthconj1.
