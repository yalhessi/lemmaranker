Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.
Lemma lfind_state  (x:tree):@eq lst (revflat x) (append (revflat x) Nil).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal28_theorem0_83_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.
Derive Show for tree.

              Derive Arbitrary for tree.

              Instance Dec_Eq_tree : Dec_Eq tree.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : tree -> string -> tree.
Extract Constant print => "Extract.print".
Definition collect_data  (x:tree) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v .
QuickChick collect_data.
Success.