; EXPECT: unknown
(set-logic ALL)
(declare-const x Int)
(declare-const x2 Bool)
(declare-const x5 Int)
(declare-fun T (Int) Bool)
(declare-fun w (Int) Bool)
(declare-fun W () Int)
(declare-fun A ((_ BitVec 2)) Bool)
(declare-fun B (Int) (_ BitVec 2))
(declare-fun b ((Array Int Int) Int (Array Int Int) Int Int Int Int Int) Bool)
(assert (forall ((i0 Int) (@ (Array Int Int)) (@@ (Array Int Int))) (! (= (b @ 0 @@ 0 x5 x5 x5 x5) (forall ((i Int)) (or (not (T i)) (not (A (B x5))) (not (w (- i i0))) (= (B (select @ (- i i0))) (bvand (B 0) (_ bv1 2)))))) :qid |BitVecto.26:19| :pattern ((b @ 0 @@ i0 x5 x5 x5 x5)))))
(assert (forall ((i Int) (i2 Int)) (or (not (w i)) (not (w i2)) (= x2 (= (B i) (B i2))))))
(declare-fun a () (Array Int Int))
(declare-fun r () (Array Int Int))
(declare-fun $ () (Array Int Int))
(assert (and (b a 0 $ W x5 x5 x5 x5) (not (b r 0 r 0 x5 x5 x5 x))))
(check-sat)