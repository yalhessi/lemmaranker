Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal35.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (@eq natural (mult (plus (Succ Zero) (Zero)) (Succ Zero)) (plus (mult (Succ Zero) (Succ Zero)) (mult (Zero) (Succ Zero)))).
Admitted.
QuickChick lfind_hyp_test.
