(set-info :source "Generated using CBMC 4.7 with the option --show-vcc, and edited manually")
(set-logic QF_LIA)

(declare-fun guard1 () Bool)

(declare-fun guard2 () Bool)

(declare-fun x0 () Int)

(declare-fun y0 () Int)

(define-fun x1 () Int (+ x0 y0))

(assert (= guard1 (not (= x1 1))))

(define-fun x2 () Int 2)

(declare-fun z0 () Int)

(assert (= guard2 (not (= z0 0))))

(define-fun x3 () Int 3)

(define-fun x4 () Int (ite (not guard2) 2 3))

(define-fun x5 () Int (ite (not guard1) x1 x4))

(define-fun B1 () Bool (=> true (=> guard1 (> y0 1))))

(define-fun B2 () Bool (=> true (<= x5 3)))

(assert (or (not B1) (not B2)))

(check-allsat (guard1 guard2))

;(allsat-relevant x0 y0 z0)
