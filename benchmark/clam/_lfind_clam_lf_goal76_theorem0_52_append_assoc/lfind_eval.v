Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal76.

Set Printing Depth 1000.
Definition lfind_eval  y x2:=
qrevaflat x2 y.

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) (Cons (Succ Zero) (Cons Zero Nil))) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) (Cons Zero (Cons (Succ Zero) Nil)))) (Node (Succ (Succ (Succ (Succ Zero)))) Leaf Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Nil) (Node (Succ (Succ Zero)) Leaf Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf (Node (Succ Zero) Leaf Leaf)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Leaf).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf (Node Zero Leaf Leaf)).

Compute lfind_eval  (Cons (Succ (Succ (Succ Zero))) Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Cons (Succ Zero) (Cons (Succ (Succ Zero)) (Cons Zero (Cons Zero (Cons Zero Nil))))) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Node Zero Leaf Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf (Node Zero Leaf Leaf)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Node Zero (Node (Succ Zero) (Node Zero Leaf Leaf) Leaf) Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Leaf).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Node Zero (Node (Succ (Succ Zero)) (Node (Succ Zero) (Node Zero Leaf Leaf) (Node (Succ Zero) Leaf Leaf)) (Node Zero Leaf (Node (Succ Zero) Leaf Leaf))) (Node Zero Leaf (Node Zero (Node (Succ (Succ Zero)) Leaf Leaf) Leaf))).

Compute lfind_eval  (Nil) (Node (Succ (Succ Zero)) Leaf (Node (Succ (Succ (Succ (Succ (Succ Zero))))) (Node (Succ Zero) (Node (Succ Zero) (Node Zero Leaf Leaf) Leaf) Leaf) Leaf)).

Compute lfind_eval  (Nil) (Node Zero Leaf (Node (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) Leaf (Node Zero (Node Zero (Node Zero Leaf Leaf) (Node Zero (Node Zero Leaf Leaf) Leaf)) Leaf))).

Compute lfind_eval  (Nil) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Cons Zero Nil) (Leaf).

Compute lfind_eval  (Nil) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Leaf).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ Zero)) (Cons Zero Nil)))) (Leaf).

Compute lfind_eval  (Nil) (Leaf).
