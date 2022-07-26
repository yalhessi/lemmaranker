Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From QuickChick Require Import QuickChick.
From adtind Require Import goal41.

Derive Show for bool.

              Derive Arbitrary for bool.

              Instance Dec_Eq_bool : Dec_Eq bool.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (forall _ : @eq bool (lst_subset (Nil) (Nil)) true, @eq bool (lst_eq (lst_intersection (Nil) (Nil)) (Nil)) (true)).
Admitted.
QuickChick lfind_hyp_test.
