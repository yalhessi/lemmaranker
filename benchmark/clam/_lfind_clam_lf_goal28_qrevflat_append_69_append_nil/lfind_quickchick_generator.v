Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal28.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (x1:tree) (x2:tree):@eq lst (append (append (revflat x1) (Cons n (revflat x2))) Nil)
  (qrevaflat x1 (Cons n (qrevaflat x2 Nil))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal28_qrevflat_append_69_append_nil/".
QCInclude ".".
Extract Constant defNumTests => "50".
Derive Show for lst.

              Derive Arbitrary for lst.

              Instance Dec_Eq_lst : Dec_Eq lst.

              Proof. dec_eq. Qed.
Derive Show for natural.

              Derive Arbitrary for natural.

              Instance Dec_Eq_natural : Dec_Eq natural.

              Proof. dec_eq. Qed.
Derive Show for tree.

              Derive Arbitrary for tree.

              Instance Dec_Eq_tree : Dec_Eq tree.

              Proof. dec_eq. Qed.

Open Scope string_scope.

Parameter print : natural -> string -> natural.
Extract Constant print => "Extract.print".
Definition collect_data  (n:natural) (x1:tree) (x2:tree) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"x1:" ++ "(" ++ show x1 ++ ")"++ "|" ++"x2:" ++ "(" ++ show x2 ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  x1 x2.
QuickChick collect_data.
Success.