Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal21.

Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma conj2synthconj4 : forall  (lv0 : lst) (lv1 : lst), (@eq lst (append Nil lv0) (append (append Nil lv0) lv1)).
Admitted.
QuickChick conj2synthconj4.
