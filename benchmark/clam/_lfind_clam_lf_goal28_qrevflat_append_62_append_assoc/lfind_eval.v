Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.

Set Printing Depth 1000.
Definition lfind_eval  y n0 x2:=
qrevaflat x2 (Cons n0 y).

Compute lfind_eval  (Nil) (Zero) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)) (Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ Zero)) (Node Zero Leaf Leaf).

Compute lfind_eval  (Nil) (Succ (Succ (Succ (Succ Zero)))) (Node Zero (Node Zero (Node (Succ (Succ Zero)) (Node (Succ (Succ (Succ Zero))) Leaf (Node (Succ (Succ Zero)) Leaf Leaf)) Leaf) (Node (Succ (Succ (Succ Zero))) (Node Zero (Node (Succ (Succ Zero)) Leaf Leaf) (Node Zero Leaf Leaf)) Leaf)) (Node Zero (Node Zero Leaf Leaf) Leaf)).

Compute lfind_eval  (Cons (Succ (Succ (Succ (Succ Zero)))) (Cons (Succ Zero) Nil)) (Succ (Succ (Succ Zero))) (Node Zero (Node (Succ (Succ (Succ (Succ (Succ Zero))))) Leaf Leaf) Leaf).

Compute lfind_eval  (Nil) (Zero) (Node Zero Leaf Leaf).

Compute lfind_eval  (Nil) (Zero) (Leaf).

Compute lfind_eval  (Nil) (Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero) (Leaf).

Compute lfind_eval  (Nil) (Succ (Succ (Succ Zero))) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)) (Zero) (Node Zero (Node Zero Leaf Leaf) Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero) (Node (Succ (Succ (Succ Zero))) Leaf (Node Zero (Node Zero Leaf (Node Zero Leaf Leaf)) (Node Zero (Node Zero Leaf Leaf) (Node (Succ Zero) Leaf Leaf)))).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Succ (Succ Zero)) (Node Zero Leaf Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ Zero))) Nil)))) (Zero) (Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Zero) (Leaf).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Succ (Succ Zero)) (Node Zero (Node Zero Leaf (Node Zero Leaf Leaf)) (Node (Succ (Succ (Succ Zero))) Leaf (Node Zero Leaf Leaf))).

Compute lfind_eval  (Nil) (Succ Zero) (Node (Succ Zero) Leaf (Node (Succ (Succ Zero)) (Node Zero Leaf (Node (Succ Zero) Leaf Leaf)) Leaf)).

Compute lfind_eval  (Cons Zero (Cons (Succ Zero) Nil)) (Zero) (Leaf).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Leaf).

Compute lfind_eval  (Cons Zero (Cons Zero Nil)) (Succ Zero) (Leaf).

Compute lfind_eval  (Cons Zero (Cons Zero (Cons (Succ (Succ (Succ (Succ Zero)))) Nil))) (Zero) (Leaf).

Compute lfind_eval  (Nil) (Zero) (Node (Succ (Succ Zero)) Leaf Leaf).

Compute lfind_eval  (Nil) (Succ (Succ Zero)) (Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Node Zero (Node (Succ (Succ Zero)) Leaf Leaf) (Node (Succ Zero) Leaf Leaf)).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons (Succ Zero) (Cons (Succ Zero) Nil))) (Succ (Succ (Succ Zero))) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) Nil) (Zero) (Leaf).

Compute lfind_eval  (Cons (Succ (Succ Zero)) (Cons Zero Nil)) (Succ (Succ (Succ Zero))) (Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Node (Succ Zero) (Node (Succ Zero) Leaf (Node Zero Leaf Leaf)) Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Zero) (Leaf).

Compute lfind_eval  (Cons Zero Nil) (Zero) (Node (Succ (Succ Zero)) (Node Zero Leaf Leaf) (Node (Succ (Succ Zero)) Leaf Leaf)).

Compute lfind_eval  (Cons Zero Nil) (Succ Zero) (Node Zero Leaf Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ (Succ Zero)) (Leaf).

Compute lfind_eval  (Nil) (Succ Zero) (Leaf).

Compute lfind_eval  (Cons (Succ Zero) Nil) (Succ Zero) (Node (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) Leaf Leaf).

Compute lfind_eval  (Nil) (Zero) (Leaf).
