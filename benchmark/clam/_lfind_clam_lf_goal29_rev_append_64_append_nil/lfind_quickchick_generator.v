Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal29.

From lfind Require Import LFind.
Lemma lfind_state  (l2:lst):@eq lst (rev l2) (append (rev l2) Nil).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal29_rev_append_64_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data  (l2:lst) :=
 let lfind_var := "l2:" ++ "(" ++ show l2 ++ ")"
 in let lfind_v := print l2 lfind_var
 in lfind_state lfind_v .
QuickChick collect_data.
Success.