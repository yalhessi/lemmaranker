Load LFindLoad.
From lfind Require Import LFind.
From adtind Require Import goal28.

Set Printing Depth 1000.
Definition lfind_eval  x2:=
qrevaflat x2 Nil.

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node Zero Leaf Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ Zero))) (Node (Succ Zero) (Node (Succ (Succ (Succ Zero))) Leaf Leaf) Leaf) (Node Zero (Node (Succ Zero) Leaf Leaf) (Node (Succ Zero) Leaf Leaf))).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node Zero Leaf Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ Zero))) (Node Zero (Node (Succ (Succ Zero)) Leaf (Node Zero Leaf Leaf)) (Node (Succ (Succ Zero)) (Node Zero Leaf Leaf) Leaf)) (Node Zero Leaf (Node Zero (Node (Succ Zero) Leaf Leaf) Leaf))).

Compute lfind_eval  (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Node Zero (Node (Succ (Succ Zero)) Leaf (Node (Succ (Succ (Succ Zero))) (Node Zero (Node (Succ (Succ (Succ Zero))) (Node (Succ (Succ (Succ Zero))) Leaf Leaf) Leaf) Leaf) (Node Zero (Node (Succ Zero) Leaf Leaf) (Node (Succ Zero) Leaf Leaf)))) Leaf).

Compute lfind_eval  (Node Zero Leaf Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node (Succ (Succ Zero)) Leaf Leaf).

Compute lfind_eval  (Node Zero (Node (Succ (Succ Zero)) Leaf Leaf) Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ Zero))) (Node (Succ (Succ Zero)) Leaf (Node (Succ Zero) Leaf Leaf)) (Node (Succ Zero) (Node Zero Leaf Leaf) (Node (Succ (Succ Zero)) Leaf Leaf))).

Compute lfind_eval  (Node (Succ (Succ Zero)) Leaf (Node (Succ Zero) Leaf Leaf)).

Compute lfind_eval  (Node (Succ Zero) Leaf Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ Zero))) (Node (Succ (Succ Zero)) Leaf (Node Zero Leaf (Node Zero Leaf (Node Zero (Node Zero Leaf Leaf) (Node Zero Leaf Leaf))))) Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ Zero))) (Node Zero Leaf (Node (Succ Zero) (Node (Succ (Succ (Succ Zero))) Leaf Leaf) (Node Zero Leaf Leaf))) (Node Zero (Node (Succ (Succ (Succ Zero))) Leaf (Node Zero Leaf Leaf)) (Node Zero (Node (Succ (Succ (Succ (Succ Zero)))) Leaf Leaf) Leaf))).

Compute lfind_eval  (Node Zero (Node Zero (Node (Succ (Succ (Succ Zero))) Leaf Leaf) (Node Zero (Node Zero Leaf (Node Zero Leaf Leaf)) (Node Zero Leaf (Node (Succ Zero) Leaf (Node (Succ (Succ (Succ Zero))) Leaf Leaf))))) (Node (Succ (Succ (Succ Zero))) Leaf (Node (Succ (Succ Zero)) (Node Zero (Node (Succ Zero) (Node (Succ Zero) Leaf Leaf) (Node Zero Leaf Leaf)) (Node (Succ Zero) Leaf (Node (Succ (Succ Zero)) Leaf Leaf))) Leaf))).

Compute lfind_eval  (Node Zero Leaf Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node Zero (Node (Succ Zero) Leaf Leaf) Leaf).

Compute lfind_eval  (Node (Succ (Succ (Succ (Succ Zero)))) (Node (Succ (Succ Zero)) Leaf Leaf) Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Leaf).

Compute lfind_eval  (Node (Succ Zero) (Node Zero (Node Zero Leaf Leaf) Leaf) Leaf).

Compute lfind_eval  (Node (Succ Zero) (Node (Succ (Succ Zero)) Leaf Leaf) (Node (Succ Zero) Leaf (Node (Succ (Succ (Succ Zero))) Leaf Leaf))).

Compute lfind_eval  (Leaf).
