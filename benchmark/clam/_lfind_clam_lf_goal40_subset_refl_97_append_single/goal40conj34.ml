type nat =
 | O
 | S of nat

type natural =
| Succ of natural
| Zero

type lst =
| Cons of natural * lst
| Nil

let rec eqb (n:natural) (m:natural):bool=
  match n with
  | Succ n' -> (match m with
                | Succ m' -> eqb n' m'
                | Zero -> false)
  | Zero -> (match m with
             | Succ _ -> false
             | Zero -> true)

;;
let rec mem (mem_arg1:lst) (mem_arg0:natural):bool=
  match mem_arg1 with
  | Cons (y, z) -> (||) (eqb mem_arg0 y) (mem z mem_arg0)
  | Nil -> false

;;
let lst_mem (lst_mem_arg0:natural) (lst_mem_arg1:lst):bool=
  mem lst_mem_arg1 lst_mem_arg0

;;
let rec lst_subset (lst_subset_arg0:lst) (lst_subset_arg1:lst):bool=
  match lst_subset_arg0 with
  | Cons (n, x) ->
    (&&) (lst_subset x lst_subset_arg1) (lst_mem n lst_subset_arg1)
  | Nil -> true
;;
let synth  (x : lst) (n : natural): lst-> natural-> lst|>
{

(  Cons (Zero, (Cons ((Succ Zero), Nil)))) => (  Zero) => (  Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), Nil))))));
(  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, Nil)))))))) => (  Zero) => (  Cons (Zero, (Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, (Cons (Zero,    Nil))))))))));
(  Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, (Cons (Zero, Nil)))))))) => (  Zero) => (  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, (Cons (Zero,    Nil))))))))));
(  Cons ((Succ (Succ (Succ Zero))), (Cons ((Succ (Succ Zero)), (Cons ((Succ    (Succ Zero)), (Cons ((Succ Zero), Nil)))))))) => (  Succ Zero) => (  Cons ((Succ Zero), (Cons ((Succ (Succ (Succ Zero))), (Cons ((Succ (Succ    Zero)), (Cons ((Succ (Succ Zero)), (Cons ((Succ Zero), Nil))))))))));
(  Nil) => (  Succ (Succ Zero)) => (  Cons ((Succ (Succ Zero)), Nil));
(  Cons ((Succ (Succ (Succ (Succ (Succ Zero))))), Nil)) => (  Succ Zero) => (  Cons ((Succ Zero), (Cons ((Succ (Succ (Succ (Succ (Succ Zero))))), Nil))));
(  Cons (Zero, (Cons (Zero, Nil)))) => (  Succ Zero) => (  Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, Nil))))));
(  Nil) => (  Succ Zero) => (  Cons ((Succ Zero), Nil));
(  Cons (Zero, Nil)) => (  Zero) => (  Cons (Zero, (Cons (Zero, Nil))));
(  Cons ((Succ (Succ Zero)), Nil)) => (  Zero) => (  Cons (Zero, (Cons ((Succ (Succ Zero)), Nil))));
(  Cons ((Succ (Succ (Succ Zero))), (Cons ((Succ (Succ (Succ Zero))), (Cons    (Zero, Nil)))))) => (  Succ Zero) => (  Cons ((Succ Zero), (Cons ((Succ (Succ (Succ Zero))), (Cons ((Succ (Succ    (Succ Zero))), (Cons (Zero, Nil))))))));
(  Nil) => (  Succ (Succ (Succ Zero))) => (  Cons ((Succ (Succ (Succ Zero))), Nil));
(  Cons ((Succ Zero), Nil)) => (  Succ Zero) => (  Cons ((Succ Zero), (Cons ((Succ Zero), Nil))));
(  Cons ((Succ (Succ Zero)), Nil)) => (  Succ (Succ Zero)) => (  Cons ((Succ (Succ Zero)), (Cons ((Succ (Succ Zero)), Nil))));
(  Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, Nil)))))) => (  Zero) => (  Cons (Zero, (Cons ((Succ Zero), (Cons (Zero, (Cons (Zero, Nil))))))));
(  Cons (Zero, Nil)) => (  Succ (Succ Zero)) => (  Cons ((Succ (Succ Zero)), (Cons (Zero, Nil))));
(  Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons ((Succ (Succ Zero)), Nil)))))))) => (  Zero) => (  Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons (Zero, (Cons ((Succ (Succ    Zero)), Nil))))))))));
(  Nil) => (  Zero) => (  Cons (Zero, Nil))
}=?