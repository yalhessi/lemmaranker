Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal71.

From lfind Require Import LFind.
Lemma lfind_state  (x:natural) (y:natural) (n:natural) (z:lst) (H:not (@eq natural x y)) (IHz:@eq natural (count x (insort y z)) (count x z)) (Heqb:@eq bool (eqb x n) true) (Heqb0:@eq bool (less y n) true) (Heqb1:@eq bool (eqb x y) true):@eq natural (Succ (if eqb x n then Succ (count x z) else count x z))
  (Succ (count x z)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal71_theorem0_66_Nat_beq_eq/".
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
Definition collect_data  (x:natural) (y:natural) (n:natural) (z:lst) :=
 let lfind_var := "x:" ++ "(" ++ show x ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"z:" ++ "(" ++ show z ++ ")"
 in let lfind_v := print x lfind_var
 in lfind_state lfind_v  y n z.
QuickChick collect_data.
Success.