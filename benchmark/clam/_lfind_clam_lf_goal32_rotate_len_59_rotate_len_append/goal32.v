Load LFindLoad.
From lfind Require Import LFind.
Unset Printing Notations.
Set Printing Implicit.


From QuickChick Require Import QuickChick.
Inductive natural : Type := Succ : natural -> natural |  Zero : natural.
Derive Show for natural. Derive Arbitrary for natural.  Instance Dec_Eq_natural : Dec_Eq natural. Proof. dec_eq. Qed.
Inductive lst : Type :=   Nil : lst | Cons : natural -> lst -> lst.

Inductive tree : Type := Node : natural -> tree -> tree -> tree |  Leaf : tree.

Inductive Pair : Type := mkpair : natural -> natural -> Pair
with Zlst : Type := zcons : Pair -> Zlst -> Zlst |  znil : Zlst.

Fixpoint append (append_arg0 : lst) (append_arg1 : lst) : lst
           := match append_arg0, append_arg1 with
              | Nil, x => x
              | Cons x y, z => Cons x (append y z)
              end.

Fixpoint len (len_arg0 : lst) : natural
           := match len_arg0 with
              | Nil => Zero
              | Cons x y => Succ (len y)
              end.

Fixpoint rotate (rotate_arg0 : natural) (rotate_arg1 : lst) : lst
           := match rotate_arg0, rotate_arg1 with
              | Zero, x => x
              | Succ n, Nil => Nil
              | Succ n, Cons y x => rotate n (append x (Cons y Nil))
              end.

Lemma append_nil : forall (x : lst), append x Nil = x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma append_assoc : forall (x y z : lst), append (append x y) z = append x (append y z).
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. rewrite IHx. reflexivity.
Qed.

Lemma rotate_len_append : forall (x y : lst), rotate (len x) (append x y) = append y x.
Proof.
   intro.
   induction x.
   - intros. simpl. rewrite append_nil. reflexivity.
   - intros. simpl. rewrite append_assoc. rewrite IHx. rewrite append_assoc. reflexivity.
Qed.

Theorem rotate_len : forall (x : lst), eq (rotate (len x) x) x.
Proof.
   intros.
   induction x.
   - reflexivity.
   - simpl. lfind.  reflexivity. 
Admitted.

