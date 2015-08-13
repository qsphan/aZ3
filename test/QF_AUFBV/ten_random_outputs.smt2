; SMT 2
(set-info :source "Generated by CBMC 5.1")
(set-option :produce-models true)
(set-logic QF_AUFBV)

; find_symbols
(declare-fun |goto_symex::&92;guard#1| () Bool)
; convert
(define-fun |B0| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B1| () Bool |goto_symex::&92;guard#1|)

; convert
(define-fun |B2| () Bool (not |goto_symex::&92;guard#1|))

; find_symbols
(declare-fun |goto_symex::&92;guard#2| () Bool)
; convert
(define-fun |B3| () Bool (and (not |goto_symex::&92;guard#1|) |goto_symex::&92;guard#2|))

; convert
(define-fun |B4| () Bool (and (not |goto_symex::&92;guard#1|) |goto_symex::&92;guard#2|))

; convert
(define-fun |B5| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#3| () Bool)
; convert
(define-fun |B6| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) |goto_symex::&92;guard#3|))

; convert
(define-fun |B7| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) |goto_symex::&92;guard#3|))

; convert
(define-fun |B8| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#4| () Bool)
; convert
(define-fun |B9| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) |goto_symex::&92;guard#4|))

; convert
(define-fun |B10| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) |goto_symex::&92;guard#4|))

; convert
(define-fun |B11| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#5| () Bool)
; convert
(define-fun |B12| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) |goto_symex::&92;guard#5|))

; convert
(define-fun |B13| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) |goto_symex::&92;guard#5|))

; convert
(define-fun |B14| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#6| () Bool)
; convert
(define-fun |B15| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) |goto_symex::&92;guard#6|))

; convert
(define-fun |B16| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) |goto_symex::&92;guard#6|))

; convert
(define-fun |B17| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#7| () Bool)
; convert
(define-fun |B18| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) |goto_symex::&92;guard#7|))

; convert
(define-fun |B19| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) |goto_symex::&92;guard#7|))

; convert
(define-fun |B20| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#8| () Bool)
; convert
(define-fun |B21| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) |goto_symex::&92;guard#8|))

; convert
(define-fun |B22| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) |goto_symex::&92;guard#8|))

; convert
(define-fun |B23| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) (not |goto_symex::&92;guard#8|)))

; find_symbols
(declare-fun |goto_symex::&92;guard#9| () Bool)
; convert
(define-fun |B24| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) (not |goto_symex::&92;guard#8|) |goto_symex::&92;guard#9|))

; convert
(define-fun |B25| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) (not |goto_symex::&92;guard#8|) |goto_symex::&92;guard#9|))

; convert
(define-fun |B26| () Bool (and (not |goto_symex::&92;guard#1|) (not |goto_symex::&92;guard#2|) (not |goto_symex::&92;guard#3|) (not |goto_symex::&92;guard#4|) (not |goto_symex::&92;guard#5|) (not |goto_symex::&92;guard#6|) (not |goto_symex::&92;guard#7|) (not |goto_symex::&92;guard#8|) (not |goto_symex::&92;guard#9|)))

; set_to true (equal)
(define-fun |__CPROVER_dead_object#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_malloc_object#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_malloc_size#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_malloc_is_new_array#1| () Bool false)

; set_to true (equal)
(define-fun |__CPROVER_memory_leak#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_thread_id!0#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_rounding_mode!0#1| () (_ BitVec 32) (_ bv0 32))

; the following is a substitute for lambda i. x
(declare-fun array_of.0 () (Array (_ BitVec 64) (_ BitVec 1)))
; set_to true (equal)
(define-fun |__CPROVER_threads_exited#1| () (Array (_ BitVec 64) (_ BitVec 1)) array_of.0)

; set_to true (equal)
(define-fun |__CPROVER_next_thread_id#1| () (_ BitVec 64) (_ bv0 64))

; set_to true (equal)
(define-fun |__CPROVER_pipe_count#1| () (_ BitVec 32) (_ bv0 32))

; set_to true (equal)
(define-fun |__CPROVER_deallocated#1| () (_ BitVec 64) (_ bv0 64))

; find_symbols
(declare-fun |main::1::S!0@1#1| () (_ BitVec 32))
; set_to true
(assert (= |goto_symex::&92;guard#1| (= |main::1::S!0@1#1| (_ bv503301 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#2| () (_ BitVec 32) (_ bv503301 32))

; find_symbols
(declare-fun |main::1::Output!0@1#1| () (_ BitVec 32))
; set_to true (equal)
(define-fun |main::1::Output!0@1#3| () (_ BitVec 32) |main::1::Output!0@1#1|)

; set_to true
(assert (= |goto_symex::&92;guard#2| (= |main::1::S!0@1#1| (_ bv909948 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#4| () (_ BitVec 32) (_ bv909948 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#5| () (_ BitVec 32) |main::1::Output!0@1#3|)

; set_to true
(assert (= |goto_symex::&92;guard#3| (= |main::1::S!0@1#1| (_ bv674972 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#6| () (_ BitVec 32) (_ bv674972 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#7| () (_ BitVec 32) |main::1::Output!0@1#5|)

; set_to true
(assert (= |goto_symex::&92;guard#4| (= |main::1::S!0@1#1| (_ bv845592 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#8| () (_ BitVec 32) (_ bv845592 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#9| () (_ BitVec 32) |main::1::Output!0@1#7|)

; set_to true
(assert (= |goto_symex::&92;guard#5| (= |main::1::S!0@1#1| (_ bv661377 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#10| () (_ BitVec 32) (_ bv661377 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#11| () (_ BitVec 32) |main::1::Output!0@1#9|)

; set_to true
(assert (= |goto_symex::&92;guard#6| (= |main::1::S!0@1#1| (_ bv635842 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#12| () (_ BitVec 32) (_ bv635842 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#13| () (_ BitVec 32) |main::1::Output!0@1#11|)

; set_to true
(assert (= |goto_symex::&92;guard#7| (= |main::1::S!0@1#1| (_ bv267073 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#14| () (_ BitVec 32) (_ bv267073 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#15| () (_ BitVec 32) |main::1::Output!0@1#13|)

; set_to true
(assert (= |goto_symex::&92;guard#8| (= |main::1::S!0@1#1| (_ bv503459 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#16| () (_ BitVec 32) (_ bv503459 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#17| () (_ BitVec 32) |main::1::Output!0@1#15|)

; set_to true
(assert (= |goto_symex::&92;guard#9| (= |main::1::S!0@1#1| (_ bv368516 32))))

; set_to true (equal)
(define-fun |main::1::Output!0@1#18| () (_ BitVec 32) (_ bv368516 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#19| () (_ BitVec 32) |main::1::Output!0@1#17|)

; set_to true (equal)
(define-fun |main::1::Output!0@1#20| () (_ BitVec 32) (_ bv976055 32))

; set_to true (equal)
(define-fun |main::1::Output!0@1#21| () (_ BitVec 32) (ite |goto_symex::&92;guard#9| (_ bv368516 32) (_ bv976055 32)))

; set_to true (equal)
(define-fun |main::1::Output!0@1#22| () (_ BitVec 32) (ite |goto_symex::&92;guard#8| (_ bv503459 32) |main::1::Output!0@1#21|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#23| () (_ BitVec 32) (ite |goto_symex::&92;guard#7| (_ bv267073 32) |main::1::Output!0@1#22|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#24| () (_ BitVec 32) (ite |goto_symex::&92;guard#6| (_ bv635842 32) |main::1::Output!0@1#23|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#25| () (_ BitVec 32) (ite |goto_symex::&92;guard#5| (_ bv661377 32) |main::1::Output!0@1#24|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#26| () (_ BitVec 32) (ite |goto_symex::&92;guard#4| (_ bv845592 32) |main::1::Output!0@1#25|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#27| () (_ BitVec 32) (ite |goto_symex::&92;guard#3| (_ bv674972 32) |main::1::Output!0@1#26|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#28| () (_ BitVec 32) (ite |goto_symex::&92;guard#2| (_ bv909948 32) |main::1::Output!0@1#27|))

; set_to true (equal)
(define-fun |main::1::Output!0@1#29| () (_ BitVec 32) (ite |goto_symex::&92;guard#1| (_ bv503301 32) |main::1::Output!0@1#28|))

; set_to true (equal)
(define-fun |main#return_value!0#1| () (_ BitVec 32) |main::1::Output!0@1#29|)

; set_to true (equal)
(define-fun |main::1::S!0@1#3| () (_ BitVec 32) |main::1::S!0@1#1|)

; set_to true (equal)
(define-fun |main::1::Output!0@1#31| () (_ BitVec 32) |main::1::Output!0@1#29|)

; convert
(define-fun |B27| () Bool (= |main::1::S!0@1#1| |main::1::S!0@1#1|))

; convert
(define-fun |B28| () Bool (= |main::1::Output!0@1#1| |main::1::Output!0@1#1|))



; end of SMT2 file

(declare-fun p0 () Bool)
(declare-fun p1 () Bool)
(declare-fun p2 () Bool)
(declare-fun p3 () Bool)
(declare-fun p4 () Bool)
(declare-fun p5 () Bool)
(declare-fun p6 () Bool)
(declare-fun p7 () Bool)
(declare-fun p8 () Bool)
(declare-fun p9 () Bool)
(declare-fun p10 () Bool)
(declare-fun p11 () Bool)
(declare-fun p12 () Bool)
(declare-fun p13 () Bool)
(declare-fun p14 () Bool)
(declare-fun p15 () Bool)
(declare-fun p16 () Bool)
(declare-fun p17 () Bool)
(declare-fun p18 () Bool)
(declare-fun p19 () Bool)
(declare-fun p20 () Bool)
(declare-fun p21 () Bool)
(declare-fun p22 () Bool)
(declare-fun p23 () Bool)
(declare-fun p24 () Bool)
(declare-fun p25 () Bool)
(declare-fun p26 () Bool)
(declare-fun p27 () Bool)
(declare-fun p28 () Bool)
(declare-fun p29 () Bool)
(declare-fun p30 () Bool)
(declare-fun p31 () Bool)

(assert (= (= #b1 ((_ extract 0 0) |main::1::Output!0@1#31|)) p0))
(assert (= (= #b1 ((_ extract 1 1) |main::1::Output!0@1#31|)) p1))
(assert (= (= #b1 ((_ extract 2 2) |main::1::Output!0@1#31|)) p2))
(assert (= (= #b1 ((_ extract 3 3) |main::1::Output!0@1#31|)) p3))
(assert (= (= #b1 ((_ extract 4 4) |main::1::Output!0@1#31|)) p4))
(assert (= (= #b1 ((_ extract 5 5) |main::1::Output!0@1#31|)) p5))
(assert (= (= #b1 ((_ extract 6 6) |main::1::Output!0@1#31|)) p6))
(assert (= (= #b1 ((_ extract 7 7) |main::1::Output!0@1#31|)) p7))
(assert (= (= #b1 ((_ extract 8 8) |main::1::Output!0@1#31|)) p8))
(assert (= (= #b1 ((_ extract 9 9) |main::1::Output!0@1#31|)) p9))
(assert (= (= #b1 ((_ extract 10 10) |main::1::Output!0@1#31|)) p10))
(assert (= (= #b1 ((_ extract 11 11) |main::1::Output!0@1#31|)) p11))
(assert (= (= #b1 ((_ extract 12 12) |main::1::Output!0@1#31|)) p12))
(assert (= (= #b1 ((_ extract 13 13) |main::1::Output!0@1#31|)) p13))
(assert (= (= #b1 ((_ extract 14 14) |main::1::Output!0@1#31|)) p14))
(assert (= (= #b1 ((_ extract 15 15) |main::1::Output!0@1#31|)) p15))
(assert (= (= #b1 ((_ extract 16 16) |main::1::Output!0@1#31|)) p16))
(assert (= (= #b1 ((_ extract 17 17) |main::1::Output!0@1#31|)) p17))
(assert (= (= #b1 ((_ extract 18 18) |main::1::Output!0@1#31|)) p18))
(assert (= (= #b1 ((_ extract 19 19) |main::1::Output!0@1#31|)) p19))
(assert (= (= #b1 ((_ extract 20 20) |main::1::Output!0@1#31|)) p20))
(assert (= (= #b1 ((_ extract 21 21) |main::1::Output!0@1#31|)) p21))
(assert (= (= #b1 ((_ extract 22 22) |main::1::Output!0@1#31|)) p22))
(assert (= (= #b1 ((_ extract 23 23) |main::1::Output!0@1#31|)) p23))
(assert (= (= #b1 ((_ extract 24 24) |main::1::Output!0@1#31|)) p24))
(assert (= (= #b1 ((_ extract 25 25) |main::1::Output!0@1#31|)) p25))
(assert (= (= #b1 ((_ extract 26 26) |main::1::Output!0@1#31|)) p26))
(assert (= (= #b1 ((_ extract 27 27) |main::1::Output!0@1#31|)) p27))
(assert (= (= #b1 ((_ extract 28 28) |main::1::Output!0@1#31|)) p28))
(assert (= (= #b1 ((_ extract 29 29) |main::1::Output!0@1#31|)) p29))
(assert (= (= #b1 ((_ extract 30 30) |main::1::Output!0@1#31|)) p30))
(assert (= (= #b1 ((_ extract 31 31) |main::1::Output!0@1#31|)) p31))


(check-allsat (p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31))