(set-info :source "Generated by Symbolic PathFinder v6 with ATGListener")
(set-option :produce-models true)
(set-logic QF_LIA)

(declare-fun a2_4_SYMINT () Int)
(declare-fun a9_11_SYMINT () Int)
(declare-fun a0_2_SYMINT () Int)
(declare-fun a6_8_SYMINT () Int)
(declare-fun a5_7_SYMINT () Int)
(declare-fun a4_6_SYMINT () Int)
(declare-fun a3_5_SYMINT () Int)
(declare-fun a1_3_SYMINT () Int)
(declare-fun a8_10_SYMINT () Int)
(declare-fun this_1_SYMREF () Int)
(declare-fun a7_9_SYMINT () Int)

(declare-fun SPF_BOOL_VAR13 () Bool )
(assert ( = ( =  a6_8_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR13 ))

(declare-fun SPF_BOOL_VAR18 () Bool )
(assert ( = ( =  a1_3_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR18 ))

(declare-fun SPF_BOOL_VAR11 () Bool )
(assert ( = ( =  a8_10_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR11 ))

(declare-fun SPF_BOOL_VAR2 () Bool )
(assert ( = ( not (=  a7_9_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR2 ))

(declare-fun SPF_BOOL_VAR6 () Bool )
(assert ( = ( not (=  a3_5_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR6 ))

(declare-fun SPF_BOOL_VAR16 () Bool )
(assert ( = ( =  a3_5_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR16 ))

(declare-fun SPF_BOOL_VAR14 () Bool )
(assert ( = ( =  a5_7_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR14 ))

(declare-fun SPF_BOOL_VAR0 () Bool )
(assert ( = ( not (=  a9_11_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR0 ))

(declare-fun SPF_BOOL_VAR12 () Bool )
(assert ( = ( =  a7_9_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR12 ))

(declare-fun SPF_BOOL_VAR1 () Bool )
(assert ( = ( not (=  a8_10_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR1 ))

(declare-fun SPF_BOOL_VAR9 () Bool )
(assert ( = ( not (=  a0_2_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR9 ))

(declare-fun SPF_BOOL_VAR3 () Bool )
(assert ( = ( not (=  a6_8_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR3 ))

(declare-fun SPF_BOOL_VAR7 () Bool )
(assert ( = ( not (=  a2_4_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR7 ))

(declare-fun SPF_BOOL_VAR10 () Bool )
(assert ( = ( =  a9_11_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR10 ))

(declare-fun SPF_BOOL_VAR19 () Bool )
(assert ( = ( =  a0_2_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR19 ))

(declare-fun SPF_BOOL_VAR5 () Bool )
(assert ( = ( not (=  a4_6_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR5 ))

(declare-fun SPF_BOOL_VAR17 () Bool )
(assert ( = ( =  a2_4_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR17 ))

(declare-fun SPF_BOOL_VAR4 () Bool )
(assert ( = ( not (=  a5_7_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR4 ))

(declare-fun SPF_BOOL_VAR15 () Bool )
(assert ( = ( =  a4_6_SYMINT   this_1_SYMREF  ) SPF_BOOL_VAR15 ))

(declare-fun SPF_BOOL_VAR8 () Bool )
(assert ( = ( not (=  a1_3_SYMINT   this_1_SYMREF ) ) SPF_BOOL_VAR8 ))

(assert (or 
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR3 SPF_BOOL_VAR2 SPF_BOOL_VAR1 SPF_BOOL_VAR0  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR3 SPF_BOOL_VAR2 SPF_BOOL_VAR1 SPF_BOOL_VAR0  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR3 SPF_BOOL_VAR2 SPF_BOOL_VAR1 SPF_BOOL_VAR10  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR3 SPF_BOOL_VAR2 SPF_BOOL_VAR11  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR3 SPF_BOOL_VAR12  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR4 SPF_BOOL_VAR13  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR5 SPF_BOOL_VAR14  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR6 SPF_BOOL_VAR15  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR7 SPF_BOOL_VAR16  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR8 SPF_BOOL_VAR17  )
( and SPF_BOOL_VAR9 SPF_BOOL_VAR18  )
SPF_BOOL_VAR19 
))

(check-allsat ( SPF_BOOL_VAR13 SPF_BOOL_VAR18 SPF_BOOL_VAR11 SPF_BOOL_VAR2 SPF_BOOL_VAR6 SPF_BOOL_VAR16 SPF_BOOL_VAR14 SPF_BOOL_VAR0 SPF_BOOL_VAR12 SPF_BOOL_VAR1 SPF_BOOL_VAR9 SPF_BOOL_VAR3 SPF_BOOL_VAR7 SPF_BOOL_VAR10 SPF_BOOL_VAR19 SPF_BOOL_VAR5 SPF_BOOL_VAR17 SPF_BOOL_VAR4 SPF_BOOL_VAR15 SPF_BOOL_VAR8 ))
;(allsat-relevant ( a2_4_SYMINT a9_11_SYMINT a0_2_SYMINT a6_8_SYMINT a5_7_SYMINT a4_6_SYMINT a3_5_SYMINT a1_3_SYMINT a8_10_SYMINT this_1_SYMREF a7_9_SYMINT ))