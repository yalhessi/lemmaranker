type nat =
 | O
 | S of nat

type natural =
| Zero
| Succ of natural

let rec plus (plus_arg0:natural) (plus_arg1:natural):natural=
  match plus_arg0 with
  | Zero -> plus_arg1
  | Succ n -> Succ (plus n plus_arg1)

;;
let rec mult (mult_arg0:natural) (mult_arg1:natural):natural=
  match mult_arg0 with
  | Zero -> Zero
  | Succ n -> plus (mult n mult_arg1) mult_arg1
;;
let synth  (lf3 : natural) (lf2 : natural): natural-> natural-> natural|>
{

(  Succ (Succ Zero)) => (  Succ (Succ Zero)) => (  Succ (Succ (Succ (Succ Zero))));
(  Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Zero) => (  Zero) => (  Zero);
(  Succ (Succ (Succ (Succ Zero)))) => (  Succ (Succ Zero)) => (  Succ (Succ (Succ (Succ (Succ (Succ Zero))))));
(  Succ Zero) => (  Succ (Succ Zero)) => (  Succ (Succ (Succ Zero)));
(  Zero) => (  Zero) => (  Zero);
(  Zero) => (  Zero) => (  Zero);
(  Zero) => (  Zero) => (  Zero);
(  Zero) => (  Zero) => (  Zero);
(  Zero) => (  Zero) => (  Zero);
(  Succ (Succ (Succ Zero))) => (  Succ Zero) => (  Succ (Succ (Succ (Succ Zero))));
(  Zero) => (  Succ (Succ (Succ (Succ (Succ Zero))))) => (  Succ (Succ (Succ (Succ (Succ Zero)))));
(  Zero) => (  Succ (Succ Zero)) => (  Succ (Succ Zero));
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))))))))))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ (Succ (Succ (Succ Zero))))))))))))))))))))))))))));
(  Succ Zero) => (  Succ Zero) => (  Succ (Succ Zero));
(  Zero) => (  Zero) => (  Zero);
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero))))))))) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    Zero))))))))))));
(  Succ (Succ (Succ (Succ Zero)))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ Zero)))))))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    Zero))))))))))));
(  Zero) => (  Zero) => (  Zero);
(  Zero) => (  Succ (Succ (Succ (Succ (Succ (Succ Zero)))))) => (  Succ (Succ (Succ (Succ (Succ (Succ Zero))))));
(  Zero) => (  Succ Zero) => (  Succ Zero);
(  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    Zero)))))))))))) => (  Succ (Succ (Succ Zero))) => (  Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ (Succ    (Succ (Succ (Succ Zero)))))))))))))));
(  Zero) => (  Zero) => (  Zero)
}=?