Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal7.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (x:lst) (n0:natural) (y:lst) (IHy:@eq natural (len (qreva (Cons n x) y)) (plus (len (Cons n x)) (len y))):@eq natural (plus (len x) (Succ (Succ (len y))))
  (Succ (Succ (plus (len y) (len x)))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal7_theorem0_55_plus_comm/".
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
Definition collect_data  (n:natural) (x:lst) (n0:natural) (y:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x:" ++ "(" ++ show x ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x n0 y.
QuickChick collect_data.
Success.