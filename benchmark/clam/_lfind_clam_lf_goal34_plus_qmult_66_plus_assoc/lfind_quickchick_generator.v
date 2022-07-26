Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal34.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (z:natural) (a:natural):@eq natural (qmult x y (plus (plus z y) a)) (qmult x y (plus (plus z a) y)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal34_plus_qmult_66_plus_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (x:natural) (y:natural) (z:natural) (a:natural) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"++ "|" ++"a:" ++ "(" ++ show a ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y z a.
QuickChick collect_data.
Success.