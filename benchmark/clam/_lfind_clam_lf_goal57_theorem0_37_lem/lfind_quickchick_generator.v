Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal57.

From lfind Require Import LFind.
Lemma lfind_state  (u:natural) (v:natural) (w:natural) (x:natural) (y:natural) (z:lst):@eq lst (drop u (drop v (drop (Succ (Succ w)) (Cons x (Cons y z)))))
  (drop (Succ u) (drop v (drop w (Cons x z)))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal57_theorem0_37_lem/".
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
Definition collect_data  (u:natural) (v:natural) (w:natural) (x:natural) (y:natural) (z:lst) :=
 let lfind_var := "u:" ++ "(" ++ show u ++ ")"++ "|" ++"v:" ++ "(" ++ show v ++ ")"++ "|" ++"w:" ++ "(" ++ show w ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print u lfind_var
 in lfind_state lfind_v  v w x y z.
QuickChick collect_data.
Success.