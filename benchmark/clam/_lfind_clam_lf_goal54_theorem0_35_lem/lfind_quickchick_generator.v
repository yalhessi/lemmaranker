Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal54.

From lfind Require Import LFind.
Lemma lfind_state  (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop (Succ w) (drop x (Cons y z))) (drop w (drop x z)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal54_theorem0_35_lem/".
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
Definition collect_data  (w:natural) (x:natural) (y:natural) (z:lst) :=
 let lfind_var := "w:" ++ "(" ++ show w ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print w lfind_var
 in lfind_state lfind_v  x y z.
QuickChick collect_data.
Success.