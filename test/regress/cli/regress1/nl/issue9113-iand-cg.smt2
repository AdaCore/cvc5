(set-logic ALL)
(set-info :status sat)
(declare-fun a () Int)
(declare-fun b (Int) Bool)
(assert (b ((_ iand 1) a (- 1))))
(assert (not (b 1)))
(check-sat)
