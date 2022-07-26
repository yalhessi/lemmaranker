Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal56.

From lfind Require Import LFind.
Lemma lfind_state  (v:natural) (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop v (drop (Succ w) (drop x (Cons y z))))
  (drop v (drop w (drop x z))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal56_theorem0_36_lem/".
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
Definition collect_data  (v:natural) (w:natural) (x:natural) (y:natural) (z:lst) :=
 let lfind_var := "v:" ++ "(" ++ show v ++ ")"++ "|" ++"w:" ++ "(" ++ show w ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print v lfind_var
 in lfind_state lfind_v  w x y z.
QuickChick collect_data.
Success.