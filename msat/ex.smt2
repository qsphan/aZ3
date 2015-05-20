(declare-fun x () Int)
(declare-fun y () Int)

(declare-fun a () Bool)
(declare-fun b () Bool)
(declare-fun c () Bool)
(declare-fun d () Bool)

(assert (= (> (+ x y) 0) a))
(assert (= (< (+ (* 2 x) (* 3 y)) (- 10)) c))
(assert (and (or a b) (or c d)))

(check-allsat (a b))

(exit)
