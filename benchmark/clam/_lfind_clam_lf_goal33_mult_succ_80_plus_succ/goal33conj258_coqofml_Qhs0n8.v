(** Generated by coq-of-ocaml *)
Require Import OCaml.OCaml.

Local Set Primitive Projections.
Local Open Scope string_scope.
Local Open Scope Z_scope.
Local Open Scope type_scope.
Import ListNotations.

Unset Positivity Checking.
Unset Guard Checking.

Inductive nat : Set :=
| O : nat
| S : nat -> nat.

Inductive natural : Set :=
| Zero : natural
| Succ : natural -> natural.

Fixpoint plus (plus_arg0 : natural) (plus_arg1 : natural) {struct plus_arg0}
  : natural :=
  match plus_arg0 with
  | Zero => plus_arg1
  | Succ n => Succ (plus n plus_arg1)
  end.

Fixpoint mult (mult_arg0 : natural) (mult_arg1 : natural) {struct mult_arg0}
  : natural :=
  match mult_arg0 with
  | Zero => Zero
  | Succ n => plus (mult n mult_arg1) mult_arg1
  end.

Definition synth (x : natural) (y : natural) (lf1 : natural) : natural :=
  plus (Succ x) Zero.
