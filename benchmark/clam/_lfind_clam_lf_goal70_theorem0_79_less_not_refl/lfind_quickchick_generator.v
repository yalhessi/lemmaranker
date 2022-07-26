Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal70.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (n:natural) (y:lst) (IHy:@eq natural (count (insort y x) x) (Succ (count y x))) (Heqb:@eq natural x n) (Heqb0:@eq bool (less n n) true):@eq natural (count (Cons x (Cons n y)) x) (Succ (Succ (count y x))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal70_theorem0_79_less_not_refl/".
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
Definition collect_data  (x:natural) (n:natural) (y:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  n y.
QuickChick collect_data.
Success.