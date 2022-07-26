Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal33.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (IHx:@eq natural (fac x) (qfac x (Succ Zero))):@eq natural (mult (fac x) x) (qfac x x).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal33_fac_eq_qfac_124_qfac_mult/".
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