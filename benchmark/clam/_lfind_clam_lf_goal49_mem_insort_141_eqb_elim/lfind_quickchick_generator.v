Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal49.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (n:natural) (H:Bool.Is_true (eqb x n)):@eq natural x n.
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal49_mem_insort_141_eqb_elim/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) (n:natural) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  n.
QuickChick collect_data.
Success.