Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal82.

From lfind Require Import LFind.
Require Import Arith. 
Lemma lfind_state  (n:natural) (x:lst) (y:lst):@eq lst (append (append y (Cons n Nil)) x) (append y (Cons n x)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal82_theorem0_76_append_assoc/".
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
Definition collect_data  (n:natural) (x:lst) (y:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x y.
QuickChick collect_data.
Success.