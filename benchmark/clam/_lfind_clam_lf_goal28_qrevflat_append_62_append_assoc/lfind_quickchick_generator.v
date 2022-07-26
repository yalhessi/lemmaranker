Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (x1:tree) (x2:tree) (n0:natural) (y:lst) (IHy:@eq lst (append (revflat (Node n x1 x2)) y) (qrevaflat (Node n x1 x2) y)):@eq lst (append (append (revflat x1) (Cons n (revflat x2))) (Cons n0 y))
  (append (revflat x1) (Cons n (qrevaflat x2 (Cons n0 y)))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal28_qrevflat_append_62_append_assoc/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for tree.

              Derive Arbitrary for tree.

              Instance Dec_Eq_tree : Dec_Eq tree.

              Proof. dec_eq. Qed.
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
Definition collect_data  (n:natural) (x1:tree) (x2:tree) (n0:natural) (y:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x1:" ++ "(" ++ show x1 ++ ")"++ "|" ++"x2:" ++ "(" ++ show x2 ++ ")"++ "|" ++"n0:" ++ "(" ++ show n0 ++ ")"++ "|" ++"y:" ++ "(" ++ show y ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x1 x2 n0 y.
QuickChick collect_data.
Success.