Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal9.

From lfind Require Import LFind.
Lemma lfind_state  (x1:natural) (x2:natural) (x3:natural) (n:natural) (l:lst) (IHl:@eq lst (drop (Succ x1) (drop (Succ x2) (Cons x3 l)))
  (drop (Succ x2) (drop (Succ x1) (Cons x3 l)))):@eq lst (drop x2 (drop (Succ x1) (Cons n l)))
  (drop x1 (drop (Succ x2) (Cons n l))).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal9_drop_Cons_assoc_33_drop_Cons/".
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
Definition collect_data  (x1:natural) (x2:natural) (x3:natural) (n:natural) (l:lst) :=
 let lfind_var := "x1:" ++ "(" ++ show x1 ++ ")"++ "|" ++"x2:" ++ "(" ++ show x2 ++ ")"++ "|" ++"x3:" ++ "(" ++ show x3 ++ ")"++ "|" ++"n:" ++ "(" ++ show n ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print x1 lfind_var
 in lfind_state lfind_v  x2 x3 n l.
QuickChick collect_data.
Success.