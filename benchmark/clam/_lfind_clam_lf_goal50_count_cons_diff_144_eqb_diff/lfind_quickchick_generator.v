Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal50.

From lfind Require Import LFind.
Require Import Arith.
Lemma lfind_state  (x:natural) (y:natural) (l:lst) (H:not (@eq natural x y)):@eq natural (if eqb x y then Succ (count l x) else count l x) (count l x).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal50_count_cons_diff_144_eqb_diff/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) (y:natural) (l:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y l.
QuickChick collect_data.
Success.