Load LFindLoad.
Load LFindLoad.
From adtind Require Import goal6.

From lfind Require Import LFind.
Lemma lfind_state  (n:natural) (l:lst) (IHl:@eq natural (len (rev l)) (len l)):@eq natural (plus (len (rev l)) (len (Cons n Nil))) (Succ (len l)).
Admitted.
From QuickChick Require Import QuickChick.
QCInclude "/home/yousef/lemmafinder/benchmark/_lfind_clam_lf_goal6_len_rev_56_plus_comm/".
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
Definition collect_data  (n:natural) (l:lst) :=
 let lfind_var := "n:" ++ "(" ++ show n ++ ")"++ "|" ++"l:" ++ "(" ++ show l ++ ")"
 in let lfind_v := print n lfind_var
 in lfind_state lfind_v  l.
QuickChick collect_data.
Success.