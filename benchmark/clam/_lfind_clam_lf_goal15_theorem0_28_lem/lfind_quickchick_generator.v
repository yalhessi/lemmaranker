Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal15.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (IHx:@eq natural (plus x (Succ x)) (Succ (plus x x))):@eq natural (plus x (Succ (Succ x))) (Succ (Succ (plus x x))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal15_theorem0_28_lem/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v .
QuickChick collect_data.
Success.