Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal5.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (x:lst) (IHx:@eq natural (len (rev x)) (len x)):@eq natural (Succ (len (append (rev x) Nil))) (Succ (len (rev x))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal5_theorem0_47_lem2/".
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
Definition collect_data  (n:natural) (x:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x.
QuickChick collect_data.
Success.