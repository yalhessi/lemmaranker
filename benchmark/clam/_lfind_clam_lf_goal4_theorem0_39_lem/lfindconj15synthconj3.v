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

Lemma conj15synthconj3 : forall  (lv0 : lst) (lv1 : natural), (@eq natural (len (append lv0 (Cons lv1 lv0))) (Succ (double (len (append lv0 Nil))))).
Admitted.
QuickChick conj15synthconj3.
