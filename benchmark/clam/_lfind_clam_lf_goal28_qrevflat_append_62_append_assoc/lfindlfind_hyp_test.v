Load LFindLoad.
From lfind Require Import LFind.
From QuickChick Require Import QuickChick.
From adtind Require Import goal28.

Derive Show for tree.

              Derive Arbitrary for tree.

              Instance Dec_Eq_tree : Dec_Eq tree.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Lemma lfind_hyp_test : (@eq lst (append (revflat (Node (Zero) (Leaf) (Leaf))) (Nil)) (qrevaflat (Node (Zero) (Leaf) (Leaf)) (Nil))).
Admitted.
QuickChick lfind_hyp_test.
