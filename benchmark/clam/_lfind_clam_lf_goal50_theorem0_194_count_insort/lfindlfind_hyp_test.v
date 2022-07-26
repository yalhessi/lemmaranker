Load LFindLoad.
From lfind Require Import LFind.
Require Import Arith.
From QuickChick Require Import QuickChick.
From adtind Require Import goal50.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (@eq natural (count (sort (Nil)) (Zero)) (count (Nil) (Zero))).
Admitted.
QuickChick lfind_hyp_test.
