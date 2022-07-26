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

Lemma conj7synthconj2 : forall  (lv0 : lst), (@eq natural (len (Cons (len Nil) lv0)) (Succ (len lv0))).
Admitted.
QuickChick conj7synthconj2.
