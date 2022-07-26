
From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type := Cons : natural -> lst -> lst |  Nil : lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint rev (rev_arg0 : lst) : lst
           := match rev_arg0 with
              | Nil => Nil
              | Cons x y => append (rev y) (Cons x Nil)
              end.

Lemma lem2: forall l n, Cons n (rev l) = rev (append l (Cons n Nil)).
Proof.
intros. induction l.
  - simpl. rewrite <- IHl. reflexivity.
  - reflexivity.
Qed.

Lemma lem: forall l, rev (rev l) = l.
Proof.
induction l.
  - simpl. rewrite <- lem2. rewrite IHl. reflexivity.
  - reflexivity.
Qed.

Theorem theorem0 : forall (x : lst) (y : lst), eq (rev (rev (append x y))) (append (rev (rev x)) (rev (rev y))).
Proof.
  intros. rewrite lem. 
  rewrite lem.
  rewrite lem. reflexivity.
Qed.

