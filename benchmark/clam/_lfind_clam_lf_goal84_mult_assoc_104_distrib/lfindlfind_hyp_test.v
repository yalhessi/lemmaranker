Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal84.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (@eq natural (mult (mult (Zero) (Zero)) (Zero)) (mult (Zero) (mult (Zero) (Zero)))).
Admitted.
QuickChick lfind_hyp_test.
