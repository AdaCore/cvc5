(set-logic SLIA)
(set-option :strings-fmf true)
(set-option :strings-exp true)
(set-info :status sat)
(declare-fun x () String)
(declare-fun y () String)
(assert (not (= (str.replace (str.replace x y x) x y) x)))
(check-sat)