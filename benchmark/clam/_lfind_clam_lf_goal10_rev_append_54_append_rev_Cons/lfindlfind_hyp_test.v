Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal10.

Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (@eq lst (rev (append (Cons (Zero) (Nil)) (Nil))) (append (rev (Nil)) (rev (Cons (Zero) (Nil))))).
Admitted.
QuickChick lfind_hyp_test.
