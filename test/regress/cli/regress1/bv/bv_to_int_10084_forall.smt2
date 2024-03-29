; COMMAND-LINE: --solve-bv-as-int=iand
; EXPECT: unsat

;; produced by cvc4_16.drv ;;
(set-logic AUFBVFPDTNIRA)
;; produced by cvc4_16.drv
(set-info :smt-lib-version 2.6)
;;; generated by SMT-LIB2 driver
;;; SMT-LIB2 driver: bit-vectors, common part
;;; SMT-LIB2: integer arithmetic
(declare-datatypes ((tuple0 0))
  (((Tuple0))))

(declare-sort us_private 0)

(declare-const us_null_ext__ us_private)

;; "in_range"
(define-fun in_range ((x Int)) Bool
  (and (<= (- 2147483648) x) (<= x 2147483647)))

;; "value"
(declare-fun value (tuple0) Int)

;; "value__function_guard"
(declare-fun value__function_guard (Int
  tuple0) Bool)

;; "value__post_axiom"
(assert
  (forall ((us_void_param tuple0))
    (! (let ((result (value us_void_param)))
         (=> (value__function_guard result us_void_param) (in_range result))) :pattern (
    (value
      us_void_param)) )))

;; "f1"
(declare-fun f1 (tuple0) Int)

;; "f1__function_guard"
(declare-fun f1__function_guard (Int
  tuple0) Bool)

;; "f1__post_axiom"
(assert
  (forall ((us_void_param tuple0))
    (! (let ((result (f1 us_void_param)))
         (=> (f1__function_guard result us_void_param) (in_range result))) :pattern (
    (f1
      us_void_param)) )))

;; "f1__def_axiom"
(assert
  (forall ((us_void_param tuple0))
    (! (= (f1 us_void_param) 1) :pattern ((f1 us_void_param)) )))

;; Goal "def'vc"
;; File "main.adb", line 4, characters 0-0
(assert
  (not
  (let ((temp___210 (value Tuple0)))
    (=>
      (and (value__function_guard temp___210 Tuple0) (in_range temp___210))
      (forall ((spark__branch Bool))
        (=>
          (= spark__branch (ite (= temp___210 0) true false))
          (=>
            (= spark__branch true)
            (=> (f1__function_guard (f1 Tuple0) Tuple0) (= (f1 Tuple0) 1)))))))))

(check-sat)

