; SMT 2
; Generated for MathSAT
(set-info :source "Generated by CBMC 4.7")
(set-option :produce-models true)
(set-logic QF_AUFBV)

; set_to true
(define-fun |c::__CPROVER_rounding_mode!0#1| () (_ BitVec 32) (_ bv0 32))

; set_to true
(define-fun |c::__CPROVER_deallocated#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::__CPROVER_dead_object#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::__CPROVER_malloc_object#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::__CPROVER_malloc_size#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::__CPROVER_malloc_is_new_array#1| () Bool false)

; set_to true
(define-fun |c::__CPROVER_memory_leak#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::__CPROVER_pipe_count#1| () (_ BitVec 32) (_ bv0 32))

; the following is a substitute for lambda i. x
(declare-fun array_of.0 () (Array (_ BitVec 64) (_ BitVec 1)))
; set_to true
(define-fun |c::__CPROVER_threads_exited#1| () (Array (_ BitVec 64) (_ BitVec 1)) array_of.0)

; set_to true
(define-fun |c::__CPROVER_next_thread_id#1| () (_ BitVec 64) (_ bv0 64))

; set_to true
(define-fun |c::main::1::N!0@1#2| () (_ BitVec 32) (_ bv50 32))

; set_to true
(define-fun |c::main::1::Output!0@1#2| () (_ BitVec 32) (_ bv0 32))

; set_to true
(define-fun |c::main::1::coin$array_size0!0@1#2| () (_ BitVec 64) (_ bv50 64))

; set_to true
(define-fun |c::main::1::i!0@1#2| () (_ BitVec 32) (_ bv0 32))

; set_to true
(define-fun |c::main::1::decl$array_size0!0@1#2| () (_ BitVec 64) (_ bv50 64))

; find_symbols
(declare-fun |nondet_symex::nondet0| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$1!0@1#2| () (_ BitVec 32) |nondet_symex::nondet0|)

; set_to true
(define-fun |c::main::1::h!0@1#2| () (_ BitVec 32) (bvurem |c::main::$tmp::return_value_nondet_uchar$1!0@1#2| (_ bv51 32)))

; set_to true
(define-fun |c::main::1::c!0@1#2| () (_ BitVec 32) (_ bv0 32))

; set_to true
(define-fun |c::main::1::c!0@1#3| () (_ BitVec 32) (_ bv0 32))

; find_symbols
(declare-fun |nondet_symex::nondet1| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#2| () (_ BitVec 32) |nondet_symex::nondet1|)

; find_symbols
(declare-fun |c::main::1::coin!0@1#1| () (_ BitVec 1600))
; set_to true
(define-fun |c::main::1::coin!0@1#2| () (_ BitVec 1600) (store |c::main::1::coin!0@1#1| (_ bv0 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#2| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#4| () (_ BitVec 32) (_ bv1 32))

; find_symbols
(declare-fun |nondet_symex::nondet2| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#5| () (_ BitVec 32) |nondet_symex::nondet2|)

; set_to true
(define-fun |c::main::1::coin!0@1#3| () (_ BitVec 1600) (store |c::main::1::coin!0@1#2| (_ bv1 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#5| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#5| () (_ BitVec 32) (_ bv2 32))

; find_symbols
(declare-fun |nondet_symex::nondet3| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#8| () (_ BitVec 32) |nondet_symex::nondet3|)

; set_to true
(define-fun |c::main::1::coin!0@1#4| () (_ BitVec 1600) (store |c::main::1::coin!0@1#3| (_ bv2 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#8| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#6| () (_ BitVec 32) (_ bv3 32))

; find_symbols
(declare-fun |nondet_symex::nondet4| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#11| () (_ BitVec 32) |nondet_symex::nondet4|)

; set_to true
(define-fun |c::main::1::coin!0@1#5| () (_ BitVec 1600) (store |c::main::1::coin!0@1#4| (_ bv3 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#11| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#7| () (_ BitVec 32) (_ bv4 32))

; find_symbols
(declare-fun |nondet_symex::nondet5| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#14| () (_ BitVec 32) |nondet_symex::nondet5|)

; set_to true
(define-fun |c::main::1::coin!0@1#6| () (_ BitVec 1600) (store |c::main::1::coin!0@1#5| (_ bv4 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#14| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#8| () (_ BitVec 32) (_ bv5 32))

; find_symbols
(declare-fun |nondet_symex::nondet6| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#17| () (_ BitVec 32) |nondet_symex::nondet6|)

; set_to true
(define-fun |c::main::1::coin!0@1#7| () (_ BitVec 1600) (store |c::main::1::coin!0@1#6| (_ bv5 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#17| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#9| () (_ BitVec 32) (_ bv6 32))

; find_symbols
(declare-fun |nondet_symex::nondet7| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#20| () (_ BitVec 32) |nondet_symex::nondet7|)

; set_to true
(define-fun |c::main::1::coin!0@1#8| () (_ BitVec 1600) (store |c::main::1::coin!0@1#7| (_ bv6 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#20| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#10| () (_ BitVec 32) (_ bv7 32))

; find_symbols
(declare-fun |nondet_symex::nondet8| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#23| () (_ BitVec 32) |nondet_symex::nondet8|)

; set_to true
(define-fun |c::main::1::coin!0@1#9| () (_ BitVec 1600) (store |c::main::1::coin!0@1#8| (_ bv7 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#23| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#11| () (_ BitVec 32) (_ bv8 32))

; find_symbols
(declare-fun |nondet_symex::nondet9| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#26| () (_ BitVec 32) |nondet_symex::nondet9|)

; set_to true
(define-fun |c::main::1::coin!0@1#10| () (_ BitVec 1600) (store |c::main::1::coin!0@1#9| (_ bv8 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#26| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#12| () (_ BitVec 32) (_ bv9 32))

; find_symbols
(declare-fun |nondet_symex::nondet10| () (_ BitVec 32))
; set_to true
(define-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#29| () (_ BitVec 32) |nondet_symex::nondet10|)

; set_to true
(define-fun |c::main::1::coin!0@1#11| () (_ BitVec 1600) (store |c::main::1::coin!0@1#10| (_ bv9 64) (bvurem |c::main::$tmp::return_value_nondet_uchar$2!0@1#29| (_ bv2 32))))

; set_to true
(define-fun |c::main::1::c!0@1#13| () (_ BitVec 32) (_ bv10 32))

; find_symbols
(declare-fun |c::main::1::N!0@1#1| () (_ BitVec 32))
; convert
(define-fun B0 () Bool (= |c::main::1::N!0@1#1| |c::main::1::N!0@1#1|))

; find_symbols
(declare-fun |c::main::1::Output!0@1#1| () (_ BitVec 32))
; convert
(define-fun B1 () Bool (= |c::main::1::Output!0@1#1| |c::main::1::Output!0@1#1|))

; find_symbols
(declare-fun |c::main::1::coin$array_size0!0@1#1| () (_ BitVec 64))
; convert
(define-fun B2 () Bool (= |c::main::1::coin$array_size0!0@1#1| |c::main::1::coin$array_size0!0@1#1|))

; convert
(define-fun B3 () Bool (= |c::main::1::coin!0@1#1| |c::main::1::coin!0@1#1|))

; find_symbols
(declare-fun |c::main::1::obscoin!0@1#1| () (_ BitVec 64))
; convert
(define-fun B4 () Bool (= |c::main::1::obscoin!0@1#1| |c::main::1::obscoin!0@1#1|))

; find_symbols
(declare-fun |c::main::1::i!0@1#1| () (_ BitVec 32))
; convert
(define-fun B5 () Bool (= |c::main::1::i!0@1#1| |c::main::1::i!0@1#1|))

; find_symbols
(declare-fun |c::main::1::decl$array_size0!0@1#1| () (_ BitVec 64))
; convert
(define-fun B6 () Bool (= |c::main::1::decl$array_size0!0@1#1| |c::main::1::decl$array_size0!0@1#1|))

; find_symbols
(declare-fun |c::main::1::decl!0@1#1| () (_ BitVec 1600))
; convert
(define-fun B7 () Bool (= |c::main::1::decl!0@1#1| |c::main::1::decl!0@1#1|))

; find_symbols
(declare-fun |c::main::1::h!0@1#1| () (_ BitVec 32))
; convert
(define-fun B8 () Bool (= |c::main::1::h!0@1#1| |c::main::1::h!0@1#1|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$1!0@1#1| () (_ BitVec 32))
; convert
(define-fun B9 () Bool (= |c::main::$tmp::return_value_nondet_uchar$1!0@1#1| |c::main::$tmp::return_value_nondet_uchar$1!0@1#1|))

; find_symbols
(declare-fun |c::main::1::c!0@1#1| () (_ BitVec 32))
; convert
(define-fun B10 () Bool (= |c::main::1::c!0@1#1| |c::main::1::c!0@1#1|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#1| () (_ BitVec 32))
; convert
(define-fun B11 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#1| |c::main::$tmp::return_value_nondet_uchar$2!0@1#1|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#4| () (_ BitVec 32))
; convert
(define-fun B12 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#4| |c::main::$tmp::return_value_nondet_uchar$2!0@1#4|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#7| () (_ BitVec 32))
; convert
(define-fun B13 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#7| |c::main::$tmp::return_value_nondet_uchar$2!0@1#7|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#10| () (_ BitVec 32))
; convert
(define-fun B14 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#10| |c::main::$tmp::return_value_nondet_uchar$2!0@1#10|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#13| () (_ BitVec 32))
; convert
(define-fun B15 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#13| |c::main::$tmp::return_value_nondet_uchar$2!0@1#13|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#16| () (_ BitVec 32))
; convert
(define-fun B16 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#16| |c::main::$tmp::return_value_nondet_uchar$2!0@1#16|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#19| () (_ BitVec 32))
; convert
(define-fun B17 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#19| |c::main::$tmp::return_value_nondet_uchar$2!0@1#19|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#22| () (_ BitVec 32))
; convert
(define-fun B18 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#22| |c::main::$tmp::return_value_nondet_uchar$2!0@1#22|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#25| () (_ BitVec 32))
; convert
(define-fun B19 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#25| |c::main::$tmp::return_value_nondet_uchar$2!0@1#25|))

; find_symbols
(declare-fun |c::main::$tmp::return_value_nondet_uchar$2!0@1#28| () (_ BitVec 32))
; convert
(define-fun B20 () Bool (= |c::main::$tmp::return_value_nondet_uchar$2!0@1#28| |c::main::$tmp::return_value_nondet_uchar$2!0@1#28|))

; set_to false
(assert (not false))



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

(assert (= (= #b1 ((_ extract 0 0) |c::main::1::Output!0@1#2|)) p0))
(assert (= (= #b1 ((_ extract 1 1) |c::main::1::Output!0@1#2|)) p1))
(assert (= (= #b1 ((_ extract 2 2) |c::main::1::Output!0@1#2|)) p2))
(assert (= (= #b1 ((_ extract 3 3) |c::main::1::Output!0@1#2|)) p3))
(assert (= (= #b1 ((_ extract 4 4) |c::main::1::Output!0@1#2|)) p4))
(assert (= (= #b1 ((_ extract 5 5) |c::main::1::Output!0@1#2|)) p5))
(assert (= (= #b1 ((_ extract 6 6) |c::main::1::Output!0@1#2|)) p6))
(assert (= (= #b1 ((_ extract 7 7) |c::main::1::Output!0@1#2|)) p7))
(assert (= (= #b1 ((_ extract 8 8) |c::main::1::Output!0@1#2|)) p8))
(assert (= (= #b1 ((_ extract 9 9) |c::main::1::Output!0@1#2|)) p9))
(assert (= (= #b1 ((_ extract 10 10) |c::main::1::Output!0@1#2|)) p10))
(assert (= (= #b1 ((_ extract 11 11) |c::main::1::Output!0@1#2|)) p11))
(assert (= (= #b1 ((_ extract 12 12) |c::main::1::Output!0@1#2|)) p12))
(assert (= (= #b1 ((_ extract 13 13) |c::main::1::Output!0@1#2|)) p13))
(assert (= (= #b1 ((_ extract 14 14) |c::main::1::Output!0@1#2|)) p14))
(assert (= (= #b1 ((_ extract 15 15) |c::main::1::Output!0@1#2|)) p15))
(assert (= (= #b1 ((_ extract 16 16) |c::main::1::Output!0@1#2|)) p16))
(assert (= (= #b1 ((_ extract 17 17) |c::main::1::Output!0@1#2|)) p17))
(assert (= (= #b1 ((_ extract 18 18) |c::main::1::Output!0@1#2|)) p18))
(assert (= (= #b1 ((_ extract 19 19) |c::main::1::Output!0@1#2|)) p19))
(assert (= (= #b1 ((_ extract 20 20) |c::main::1::Output!0@1#2|)) p20))
(assert (= (= #b1 ((_ extract 21 21) |c::main::1::Output!0@1#2|)) p21))
(assert (= (= #b1 ((_ extract 22 22) |c::main::1::Output!0@1#2|)) p22))
(assert (= (= #b1 ((_ extract 23 23) |c::main::1::Output!0@1#2|)) p23))
(assert (= (= #b1 ((_ extract 24 24) |c::main::1::Output!0@1#2|)) p24))
(assert (= (= #b1 ((_ extract 25 25) |c::main::1::Output!0@1#2|)) p25))
(assert (= (= #b1 ((_ extract 26 26) |c::main::1::Output!0@1#2|)) p26))
(assert (= (= #b1 ((_ extract 27 27) |c::main::1::Output!0@1#2|)) p27))
(assert (= (= #b1 ((_ extract 28 28) |c::main::1::Output!0@1#2|)) p28))
(assert (= (= #b1 ((_ extract 29 29) |c::main::1::Output!0@1#2|)) p29))
(assert (= (= #b1 ((_ extract 30 30) |c::main::1::Output!0@1#2|)) p30))
(assert (= (= #b1 ((_ extract 31 31) |c::main::1::Output!0@1#2|)) p31))


(check-allsat (p0 p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 p18 p19 p20 p21 p22 p23 p24 p25 p26 p27 p28 p29 p30 p31))