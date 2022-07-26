Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal21.

Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma conj2eqsynthconj1 : forall  (lv0 : lst), (@eq lst (lv0) (append (append Nil Nil) lv0)).
Admitted.
QuickChick conj2eqsynthconj1.
