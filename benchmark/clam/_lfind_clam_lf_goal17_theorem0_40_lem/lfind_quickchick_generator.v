Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal17.

From lfind Require Import LFind.
Lemma lfind_state  (x:lst) (y:lst):@eq lst (append x y) (append (rev (rev x)) (rev (rev y))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal17_theorem0_40_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : lst -> string -> lst.
Extract Constant print => "Extract.print".
Definition collect_data  (x:lst) (y:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y.
QuickChick collect_data.
Success.