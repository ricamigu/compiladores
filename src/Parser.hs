{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.12

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13
	= HappyTerminal (Token)
	| HappyErrorToken Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7
	| HappyAbsSyn8 t8
	| HappyAbsSyn9 t9
	| HappyAbsSyn10 t10
	| HappyAbsSyn11 t11
	| HappyAbsSyn12 t12
	| HappyAbsSyn13 t13

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,281) ([8192,64,0,4096,32,0,0,0,0,12288,0,0,2048,0,0,256,2,0,0,0,0,0,2048,0,0,1024,0,0,512,0,0,512,0,2052,0,0,1026,0,0,0,0,0,0,34,0,1,0,32768,0,0,0,16384,4,0,0,4,21504,142,2,512,4,0,0,32768,0,0,0,0,0,0,0,0,4096,0,14672,2050,0,7336,1025,0,0,0,0,0,0,0,0,0,32768,4554,192,0,1,0,0,0,516,24576,448,2,12288,224,1,6144,32880,0,2048,0,0,0,8192,0,51840,16401,0,58688,24584,0,32960,1027,0,0,128,1,7336,29727,15,0,0,0,0,64,0,0,0,0,0,0,0,0,8,49152,896,4,0,48128,7904,43008,7964,3956,6144,32880,0,3072,16440,0,0,2048,16,0,0,0,0,0,0,0,8192,0,14672,2050,0,0,2048,0,36436,512,0,0,512,0,0,0,0,0,128,0,0,0,0,0,0,24576,448,2,0,24064,3952,0,3840,1976,0,0,0,0,17408,0,0,0,0,384,2055,0,32960,1027,0,49248,513,0,57392,256,0,28696,128,0,14348,64,0,7174,32,0,3587,16,32768,1793,8,49152,896,4,24576,448,2,0,0,0,0,3840,1977,0,32768,0,1536,8220,0,0,0,0,0,0,0,32960,1027,0,0,58428,30,0,0,0,0,32,0,32768,56343,3,0,68,0,0,0,0,0,0,0,30720,64,0,15360,32,0,7680,16,0,3840,8,0,1920,4,0,960,2,0,0,0,0,0,0,0,0,0,0,8240,0,0,4120,0,36436,512,0,14348,64,0,0,8,0,0,0,0,61440,31618,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Start","Func","FuncAssign","FuncAssignBlock","Stm","ReturnStm","StmBlock","Exp","ExpCall","ExpCallBlock","int","num","string","main","if","then","else","return","while","bool","true","false","scan_int","print_int","'+'","'-'","'*'","'/'","','","';'","'.'","'('","')'","'{'","'}'","'%'","'!='","'=='","'='","'<='","'>='","'<'","'>'","%eof"]
        bit_start = st * 47
        bit_end = (st + 1) * 47
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..46]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_3
action_0 (23) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_3
action_1 (23) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (16) = happyShift action_8
action_3 (17) = happyShift action_9
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (16) = happyShift action_7
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (14) = happyShift action_3
action_5 (23) = happyShift action_4
action_5 (47) = happyAccept
action_5 (5) = happyGoto action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 (35) = happyShift action_12
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (35) = happyShift action_11
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (35) = happyShift action_10
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (36) = happyShift action_18
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (14) = happyShift action_15
action_11 (23) = happyShift action_16
action_11 (6) = happyGoto action_13
action_11 (7) = happyGoto action_17
action_11 _ = happyReduce_10

action_12 (14) = happyShift action_15
action_12 (23) = happyShift action_16
action_12 (6) = happyGoto action_13
action_12 (7) = happyGoto action_14
action_12 _ = happyReduce_10

action_13 _ = happyReduce_11

action_14 (32) = happyShift action_20
action_14 (36) = happyShift action_24
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (16) = happyShift action_23
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (16) = happyShift action_22
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (32) = happyShift action_20
action_17 (36) = happyShift action_21
action_17 _ = happyFail (happyExpListPerState 17)

action_18 (37) = happyShift action_19
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (14) = happyShift action_31
action_19 (16) = happyShift action_32
action_19 (18) = happyShift action_33
action_19 (21) = happyShift action_34
action_19 (22) = happyShift action_35
action_19 (23) = happyShift action_36
action_19 (27) = happyShift action_37
action_19 (37) = happyShift action_38
action_19 (8) = happyGoto action_28
action_19 (9) = happyGoto action_29
action_19 (10) = happyGoto action_30
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (14) = happyShift action_15
action_20 (23) = happyShift action_16
action_20 (6) = happyGoto action_27
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (37) = happyShift action_26
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_9

action_23 _ = happyReduce_8

action_24 (37) = happyShift action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (14) = happyShift action_31
action_25 (16) = happyShift action_32
action_25 (18) = happyShift action_33
action_25 (21) = happyShift action_34
action_25 (22) = happyShift action_35
action_25 (23) = happyShift action_36
action_25 (27) = happyShift action_37
action_25 (37) = happyShift action_38
action_25 (8) = happyGoto action_28
action_25 (9) = happyGoto action_58
action_25 (10) = happyGoto action_59
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (14) = happyShift action_31
action_26 (16) = happyShift action_32
action_26 (18) = happyShift action_33
action_26 (21) = happyShift action_34
action_26 (22) = happyShift action_35
action_26 (23) = happyShift action_36
action_26 (27) = happyShift action_37
action_26 (37) = happyShift action_38
action_26 (8) = happyGoto action_28
action_26 (9) = happyGoto action_56
action_26 (10) = happyGoto action_57
action_26 _ = happyFail (happyExpListPerState 26)

action_27 _ = happyReduce_12

action_28 _ = happyReduce_26

action_29 _ = happyReduce_24

action_30 (14) = happyShift action_31
action_30 (16) = happyShift action_32
action_30 (18) = happyShift action_33
action_30 (21) = happyShift action_34
action_30 (22) = happyShift action_35
action_30 (23) = happyShift action_36
action_30 (27) = happyShift action_37
action_30 (37) = happyShift action_38
action_30 (38) = happyShift action_55
action_30 (8) = happyGoto action_54
action_30 (9) = happyGoto action_29
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (16) = happyShift action_53
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (35) = happyShift action_51
action_32 (42) = happyShift action_52
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_43
action_33 (16) = happyShift action_44
action_33 (24) = happyShift action_45
action_33 (25) = happyShift action_46
action_33 (26) = happyShift action_47
action_33 (35) = happyShift action_48
action_33 (11) = happyGoto action_50
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_43
action_34 (16) = happyShift action_44
action_34 (24) = happyShift action_45
action_34 (25) = happyShift action_46
action_34 (26) = happyShift action_47
action_34 (35) = happyShift action_48
action_34 (11) = happyGoto action_49
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (15) = happyShift action_43
action_35 (16) = happyShift action_44
action_35 (24) = happyShift action_45
action_35 (25) = happyShift action_46
action_35 (26) = happyShift action_47
action_35 (35) = happyShift action_48
action_35 (11) = happyGoto action_42
action_35 _ = happyFail (happyExpListPerState 35)

action_36 (16) = happyShift action_41
action_36 _ = happyFail (happyExpListPerState 36)

action_37 (35) = happyShift action_40
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (14) = happyShift action_31
action_38 (16) = happyShift action_32
action_38 (18) = happyShift action_33
action_38 (21) = happyShift action_34
action_38 (22) = happyShift action_35
action_38 (23) = happyShift action_36
action_38 (27) = happyShift action_37
action_38 (37) = happyShift action_38
action_38 (8) = happyGoto action_28
action_38 (9) = happyGoto action_29
action_38 (10) = happyGoto action_39
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (14) = happyShift action_31
action_39 (16) = happyShift action_32
action_39 (18) = happyShift action_33
action_39 (21) = happyShift action_34
action_39 (22) = happyShift action_35
action_39 (23) = happyShift action_36
action_39 (27) = happyShift action_37
action_39 (37) = happyShift action_38
action_39 (38) = happyShift action_90
action_39 (8) = happyGoto action_54
action_39 (9) = happyGoto action_29
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (15) = happyShift action_43
action_40 (16) = happyShift action_44
action_40 (24) = happyShift action_45
action_40 (25) = happyShift action_46
action_40 (26) = happyShift action_47
action_40 (35) = happyShift action_48
action_40 (11) = happyGoto action_89
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (33) = happyShift action_87
action_41 (42) = happyShift action_88
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (14) = happyShift action_31
action_42 (16) = happyShift action_32
action_42 (18) = happyShift action_33
action_42 (21) = happyShift action_34
action_42 (22) = happyShift action_35
action_42 (23) = happyShift action_36
action_42 (27) = happyShift action_37
action_42 (28) = happyShift action_71
action_42 (29) = happyShift action_72
action_42 (30) = happyShift action_73
action_42 (31) = happyShift action_74
action_42 (37) = happyShift action_38
action_42 (39) = happyShift action_75
action_42 (40) = happyShift action_76
action_42 (41) = happyShift action_77
action_42 (43) = happyShift action_78
action_42 (44) = happyShift action_79
action_42 (45) = happyShift action_80
action_42 (46) = happyShift action_81
action_42 (8) = happyGoto action_86
action_42 (9) = happyGoto action_29
action_42 _ = happyFail (happyExpListPerState 42)

action_43 _ = happyReduce_28

action_44 (35) = happyShift action_85
action_44 _ = happyReduce_29

action_45 _ = happyReduce_30

action_46 _ = happyReduce_31

action_47 (35) = happyShift action_84
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (15) = happyShift action_43
action_48 (16) = happyShift action_44
action_48 (24) = happyShift action_45
action_48 (25) = happyShift action_46
action_48 (26) = happyShift action_47
action_48 (35) = happyShift action_48
action_48 (11) = happyGoto action_83
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (28) = happyShift action_71
action_49 (29) = happyShift action_72
action_49 (30) = happyShift action_73
action_49 (31) = happyShift action_74
action_49 (33) = happyShift action_82
action_49 (39) = happyShift action_75
action_49 (40) = happyShift action_76
action_49 (41) = happyShift action_77
action_49 (43) = happyShift action_78
action_49 (44) = happyShift action_79
action_49 (45) = happyShift action_80
action_49 (46) = happyShift action_81
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (14) = happyShift action_31
action_50 (16) = happyShift action_32
action_50 (18) = happyShift action_33
action_50 (21) = happyShift action_34
action_50 (22) = happyShift action_35
action_50 (23) = happyShift action_36
action_50 (27) = happyShift action_37
action_50 (28) = happyShift action_71
action_50 (29) = happyShift action_72
action_50 (30) = happyShift action_73
action_50 (31) = happyShift action_74
action_50 (37) = happyShift action_38
action_50 (39) = happyShift action_75
action_50 (40) = happyShift action_76
action_50 (41) = happyShift action_77
action_50 (43) = happyShift action_78
action_50 (44) = happyShift action_79
action_50 (45) = happyShift action_80
action_50 (46) = happyShift action_81
action_50 (8) = happyGoto action_70
action_50 (9) = happyGoto action_29
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (15) = happyShift action_43
action_51 (16) = happyShift action_44
action_51 (24) = happyShift action_45
action_51 (25) = happyShift action_46
action_51 (26) = happyShift action_47
action_51 (35) = happyShift action_48
action_51 (11) = happyGoto action_67
action_51 (12) = happyGoto action_68
action_51 (13) = happyGoto action_69
action_51 _ = happyReduce_47

action_52 (15) = happyShift action_43
action_52 (16) = happyShift action_44
action_52 (24) = happyShift action_45
action_52 (25) = happyShift action_46
action_52 (26) = happyShift action_47
action_52 (35) = happyShift action_48
action_52 (11) = happyGoto action_66
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (33) = happyShift action_64
action_53 (42) = happyShift action_65
action_53 _ = happyFail (happyExpListPerState 53)

action_54 _ = happyReduce_27

action_55 _ = happyReduce_7

action_56 (38) = happyShift action_63
action_56 _ = happyReduce_24

action_57 (14) = happyShift action_31
action_57 (16) = happyShift action_32
action_57 (18) = happyShift action_33
action_57 (21) = happyShift action_34
action_57 (22) = happyShift action_35
action_57 (23) = happyShift action_36
action_57 (27) = happyShift action_37
action_57 (37) = happyShift action_38
action_57 (8) = happyGoto action_54
action_57 (9) = happyGoto action_62
action_57 _ = happyFail (happyExpListPerState 57)

action_58 (38) = happyShift action_61
action_58 _ = happyReduce_24

action_59 (14) = happyShift action_31
action_59 (16) = happyShift action_32
action_59 (18) = happyShift action_33
action_59 (21) = happyShift action_34
action_59 (22) = happyShift action_35
action_59 (23) = happyShift action_36
action_59 (27) = happyShift action_37
action_59 (37) = happyShift action_38
action_59 (8) = happyGoto action_54
action_59 (9) = happyGoto action_60
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (38) = happyShift action_113
action_60 _ = happyReduce_24

action_61 _ = happyReduce_6

action_62 (38) = happyShift action_112
action_62 _ = happyReduce_24

action_63 _ = happyReduce_5

action_64 _ = happyReduce_14

action_65 (15) = happyShift action_43
action_65 (16) = happyShift action_44
action_65 (24) = happyShift action_45
action_65 (25) = happyShift action_46
action_65 (26) = happyShift action_47
action_65 (35) = happyShift action_48
action_65 (11) = happyGoto action_111
action_65 _ = happyFail (happyExpListPerState 65)

action_66 (28) = happyShift action_71
action_66 (29) = happyShift action_72
action_66 (30) = happyShift action_73
action_66 (31) = happyShift action_74
action_66 (33) = happyShift action_110
action_66 (39) = happyShift action_75
action_66 (40) = happyShift action_76
action_66 (41) = happyShift action_77
action_66 (43) = happyShift action_78
action_66 (44) = happyShift action_79
action_66 (45) = happyShift action_80
action_66 (46) = happyShift action_81
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (28) = happyShift action_71
action_67 (29) = happyShift action_72
action_67 (30) = happyShift action_73
action_67 (31) = happyShift action_74
action_67 (39) = happyShift action_75
action_67 (40) = happyShift action_76
action_67 (41) = happyShift action_77
action_67 (43) = happyShift action_78
action_67 (44) = happyShift action_79
action_67 (45) = happyShift action_80
action_67 (46) = happyShift action_81
action_67 _ = happyReduce_46

action_68 _ = happyReduce_48

action_69 (32) = happyShift action_108
action_69 (36) = happyShift action_109
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (20) = happyShift action_107
action_70 _ = happyReduce_18

action_71 (15) = happyShift action_43
action_71 (16) = happyShift action_44
action_71 (24) = happyShift action_45
action_71 (25) = happyShift action_46
action_71 (26) = happyShift action_47
action_71 (35) = happyShift action_48
action_71 (11) = happyGoto action_106
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (15) = happyShift action_43
action_72 (16) = happyShift action_44
action_72 (24) = happyShift action_45
action_72 (25) = happyShift action_46
action_72 (26) = happyShift action_47
action_72 (35) = happyShift action_48
action_72 (11) = happyGoto action_105
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (15) = happyShift action_43
action_73 (16) = happyShift action_44
action_73 (24) = happyShift action_45
action_73 (25) = happyShift action_46
action_73 (26) = happyShift action_47
action_73 (35) = happyShift action_48
action_73 (11) = happyGoto action_104
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (15) = happyShift action_43
action_74 (16) = happyShift action_44
action_74 (24) = happyShift action_45
action_74 (25) = happyShift action_46
action_74 (26) = happyShift action_47
action_74 (35) = happyShift action_48
action_74 (11) = happyGoto action_103
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (15) = happyShift action_43
action_75 (16) = happyShift action_44
action_75 (24) = happyShift action_45
action_75 (25) = happyShift action_46
action_75 (26) = happyShift action_47
action_75 (35) = happyShift action_48
action_75 (11) = happyGoto action_102
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (15) = happyShift action_43
action_76 (16) = happyShift action_44
action_76 (24) = happyShift action_45
action_76 (25) = happyShift action_46
action_76 (26) = happyShift action_47
action_76 (35) = happyShift action_48
action_76 (11) = happyGoto action_101
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (15) = happyShift action_43
action_77 (16) = happyShift action_44
action_77 (24) = happyShift action_45
action_77 (25) = happyShift action_46
action_77 (26) = happyShift action_47
action_77 (35) = happyShift action_48
action_77 (11) = happyGoto action_100
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (15) = happyShift action_43
action_78 (16) = happyShift action_44
action_78 (24) = happyShift action_45
action_78 (25) = happyShift action_46
action_78 (26) = happyShift action_47
action_78 (35) = happyShift action_48
action_78 (11) = happyGoto action_99
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (15) = happyShift action_43
action_79 (16) = happyShift action_44
action_79 (24) = happyShift action_45
action_79 (25) = happyShift action_46
action_79 (26) = happyShift action_47
action_79 (35) = happyShift action_48
action_79 (11) = happyGoto action_98
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (15) = happyShift action_43
action_80 (16) = happyShift action_44
action_80 (24) = happyShift action_45
action_80 (25) = happyShift action_46
action_80 (26) = happyShift action_47
action_80 (35) = happyShift action_48
action_80 (11) = happyGoto action_97
action_80 _ = happyFail (happyExpListPerState 80)

action_81 (15) = happyShift action_43
action_81 (16) = happyShift action_44
action_81 (24) = happyShift action_45
action_81 (25) = happyShift action_46
action_81 (26) = happyShift action_47
action_81 (35) = happyShift action_48
action_81 (11) = happyGoto action_96
action_81 _ = happyFail (happyExpListPerState 81)

action_82 _ = happyReduce_25

action_83 (28) = happyShift action_71
action_83 (29) = happyShift action_72
action_83 (30) = happyShift action_73
action_83 (31) = happyShift action_74
action_83 (36) = happyShift action_95
action_83 (39) = happyShift action_75
action_83 (40) = happyShift action_76
action_83 (41) = happyShift action_77
action_83 (43) = happyShift action_78
action_83 (44) = happyShift action_79
action_83 (45) = happyShift action_80
action_83 (46) = happyShift action_81
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (36) = happyShift action_94
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (15) = happyShift action_43
action_85 (16) = happyShift action_44
action_85 (24) = happyShift action_45
action_85 (25) = happyShift action_46
action_85 (26) = happyShift action_47
action_85 (35) = happyShift action_48
action_85 (11) = happyGoto action_67
action_85 (12) = happyGoto action_68
action_85 (13) = happyGoto action_93
action_85 _ = happyReduce_47

action_86 _ = happyReduce_20

action_87 _ = happyReduce_16

action_88 (15) = happyShift action_43
action_88 (16) = happyShift action_44
action_88 (24) = happyShift action_45
action_88 (25) = happyShift action_46
action_88 (26) = happyShift action_47
action_88 (35) = happyShift action_48
action_88 (11) = happyGoto action_92
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (28) = happyShift action_71
action_89 (29) = happyShift action_72
action_89 (30) = happyShift action_73
action_89 (31) = happyShift action_74
action_89 (36) = happyShift action_91
action_89 (39) = happyShift action_75
action_89 (40) = happyShift action_76
action_89 (41) = happyShift action_77
action_89 (43) = happyShift action_78
action_89 (44) = happyShift action_79
action_89 (45) = happyShift action_80
action_89 (46) = happyShift action_81
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_21

action_91 (33) = happyShift action_120
action_91 _ = happyFail (happyExpListPerState 91)

action_92 (28) = happyShift action_71
action_92 (29) = happyShift action_72
action_92 (30) = happyShift action_73
action_92 (31) = happyShift action_74
action_92 (33) = happyShift action_119
action_92 (39) = happyShift action_75
action_92 (40) = happyShift action_76
action_92 (41) = happyShift action_77
action_92 (43) = happyShift action_78
action_92 (44) = happyShift action_79
action_92 (45) = happyShift action_80
action_92 (46) = happyShift action_81
action_92 _ = happyFail (happyExpListPerState 92)

action_93 (32) = happyShift action_108
action_93 (36) = happyShift action_118
action_93 _ = happyFail (happyExpListPerState 93)

action_94 _ = happyReduce_45

action_95 _ = happyReduce_32

action_96 (28) = happyShift action_71
action_96 (29) = happyShift action_72
action_96 (30) = happyShift action_73
action_96 (31) = happyShift action_74
action_96 (39) = happyShift action_75
action_96 (40) = happyFail []
action_96 (41) = happyFail []
action_96 (43) = happyFail []
action_96 (44) = happyFail []
action_96 (45) = happyFail []
action_96 (46) = happyFail []
action_96 _ = happyReduce_41

action_97 (28) = happyShift action_71
action_97 (29) = happyShift action_72
action_97 (30) = happyShift action_73
action_97 (31) = happyShift action_74
action_97 (39) = happyShift action_75
action_97 (40) = happyFail []
action_97 (41) = happyFail []
action_97 (43) = happyFail []
action_97 (44) = happyFail []
action_97 (45) = happyFail []
action_97 (46) = happyFail []
action_97 _ = happyReduce_40

action_98 (28) = happyShift action_71
action_98 (29) = happyShift action_72
action_98 (30) = happyShift action_73
action_98 (31) = happyShift action_74
action_98 (39) = happyShift action_75
action_98 (40) = happyFail []
action_98 (41) = happyFail []
action_98 (43) = happyFail []
action_98 (44) = happyFail []
action_98 (45) = happyFail []
action_98 (46) = happyFail []
action_98 _ = happyReduce_39

action_99 (28) = happyShift action_71
action_99 (29) = happyShift action_72
action_99 (30) = happyShift action_73
action_99 (31) = happyShift action_74
action_99 (39) = happyShift action_75
action_99 (40) = happyFail []
action_99 (41) = happyFail []
action_99 (43) = happyFail []
action_99 (44) = happyFail []
action_99 (45) = happyFail []
action_99 (46) = happyFail []
action_99 _ = happyReduce_38

action_100 (28) = happyShift action_71
action_100 (29) = happyShift action_72
action_100 (30) = happyShift action_73
action_100 (31) = happyShift action_74
action_100 (39) = happyShift action_75
action_100 (40) = happyFail []
action_100 (41) = happyFail []
action_100 (43) = happyFail []
action_100 (44) = happyFail []
action_100 (45) = happyFail []
action_100 (46) = happyFail []
action_100 _ = happyReduce_42

action_101 (28) = happyShift action_71
action_101 (29) = happyShift action_72
action_101 (30) = happyShift action_73
action_101 (31) = happyShift action_74
action_101 (39) = happyShift action_75
action_101 (40) = happyFail []
action_101 (41) = happyFail []
action_101 (43) = happyFail []
action_101 (44) = happyFail []
action_101 (45) = happyFail []
action_101 (46) = happyFail []
action_101 _ = happyReduce_43

action_102 _ = happyReduce_37

action_103 _ = happyReduce_36

action_104 _ = happyReduce_35

action_105 (30) = happyShift action_73
action_105 (31) = happyShift action_74
action_105 (39) = happyShift action_75
action_105 _ = happyReduce_34

action_106 (30) = happyShift action_73
action_106 (31) = happyShift action_74
action_106 (39) = happyShift action_75
action_106 _ = happyReduce_33

action_107 (14) = happyShift action_31
action_107 (16) = happyShift action_32
action_107 (18) = happyShift action_33
action_107 (21) = happyShift action_34
action_107 (22) = happyShift action_35
action_107 (23) = happyShift action_36
action_107 (27) = happyShift action_37
action_107 (37) = happyShift action_38
action_107 (8) = happyGoto action_117
action_107 (9) = happyGoto action_29
action_107 _ = happyFail (happyExpListPerState 107)

action_108 (15) = happyShift action_43
action_108 (16) = happyShift action_44
action_108 (24) = happyShift action_45
action_108 (25) = happyShift action_46
action_108 (26) = happyShift action_47
action_108 (35) = happyShift action_48
action_108 (11) = happyGoto action_67
action_108 (12) = happyGoto action_116
action_108 _ = happyFail (happyExpListPerState 108)

action_109 (33) = happyShift action_115
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_13

action_111 (28) = happyShift action_71
action_111 (29) = happyShift action_72
action_111 (30) = happyShift action_73
action_111 (31) = happyShift action_74
action_111 (33) = happyShift action_114
action_111 (39) = happyShift action_75
action_111 (40) = happyShift action_76
action_111 (41) = happyShift action_77
action_111 (43) = happyShift action_78
action_111 (44) = happyShift action_79
action_111 (45) = happyShift action_80
action_111 (46) = happyShift action_81
action_111 _ = happyFail (happyExpListPerState 111)

action_112 _ = happyReduce_3

action_113 _ = happyReduce_4

action_114 _ = happyReduce_15

action_115 _ = happyReduce_22

action_116 _ = happyReduce_49

action_117 _ = happyReduce_19

action_118 _ = happyReduce_44

action_119 _ = happyReduce_17

action_120 _ = happyReduce_23

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyAbsSyn5  happy_var_1)
	 =  HappyAbsSyn4
		 ([happy_var_1]
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_2  4 happyReduction_2
happyReduction_2 (HappyAbsSyn5  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_2 _ _  = notHappyAtAll 

happyReduce_3 = happyReduce 9 5 happyReduction_3
happyReduction_3 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_8) `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitIntFunc happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 9 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_8) `HappyStk`
	(HappyAbsSyn10  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitBoolFunc happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 8 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitIntFuncE happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_6 = happyReduce 8 5 happyReduction_6
happyReduction_6 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitBoolFuncE happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_7 = happyReduce 7 5 happyReduction_7
happyReduction_7 (_ `HappyStk`
	(HappyAbsSyn10  happy_var_6) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (MainFunc happy_var_6
	) `HappyStk` happyRest

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn6
		 (FuncIntAssign happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_2  6 happyReduction_9
happyReduction_9 (HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn6
		 (FuncBoolAssign happy_var_2
	)
happyReduction_9 _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_0  7 happyReduction_10
happyReduction_10  =  HappyAbsSyn7
		 ([]
	)

happyReduce_11 = happySpecReduce_1  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_11 _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  7 happyReduction_12
happyReduction_12 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happyReduce 4 8 happyReduction_13
happyReduction_13 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_14 = happySpecReduce_3  8 happyReduction_14
happyReduction_14 _
	(HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn8
		 (InitInt happy_var_2
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 5 8 happyReduction_15
happyReduction_15 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InitIntAssign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_3  8 happyReduction_16
happyReduction_16 _
	(HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn8
		 (InitBool happy_var_2
	)
happyReduction_16 _ _ _  = notHappyAtAll 

happyReduce_17 = happyReduce 5 8 happyReduction_17
happyReduction_17 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InitBoolAssign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_3  8 happyReduction_18
happyReduction_18 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (If happy_var_2 happy_var_3 Skip
	)
happyReduction_18 _ _ _  = notHappyAtAll 

happyReduce_19 = happyReduce 5 8 happyReduction_19
happyReduction_19 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (If happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_20 = happySpecReduce_3  8 happyReduction_20
happyReduction_20 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (While happy_var_2 happy_var_3
	)
happyReduction_20 _ _ _  = notHappyAtAll 

happyReduce_21 = happySpecReduce_3  8 happyReduction_21
happyReduction_21 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Block happy_var_2
	)
happyReduction_21 _ _ _  = notHappyAtAll 

happyReduce_22 = happyReduce 5 8 happyReduction_22
happyReduction_22 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallStm happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_23 = happyReduce 5 8 happyReduction_23
happyReduction_23 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_24 = happySpecReduce_1  8 happyReduction_24
happyReduction_24 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Return happy_var_1
	)
happyReduction_24 _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_3  9 happyReduction_25
happyReduction_25 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (ReturnExp happy_var_2
	)
happyReduction_25 _ _ _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  10 happyReduction_26
happyReduction_26 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  10 happyReduction_27
happyReduction_27 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_27 _ _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 (HappyTerminal (TOK_NUM happy_var_1))
	 =  HappyAbsSyn11
		 (Num happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 (HappyTerminal (TOK_ID happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_1  11 happyReduction_30
happyReduction_30 (HappyTerminal (TOK_BOOL happy_var_1))
	 =  HappyAbsSyn11
		 (Boolean happy_var_1
	)
happyReduction_30 _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_1  11 happyReduction_31
happyReduction_31 (HappyTerminal (TOK_BOOL happy_var_1))
	 =  HappyAbsSyn11
		 (Boolean happy_var_1
	)
happyReduction_31 _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Add happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Div happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Equal happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Equal happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Than happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Than happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Equals_Equals happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  11 happyReduction_43
happyReduction_43 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Not_Equal happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happyReduce 4 11 happyReduction_44
happyReduction_44 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_45 = happySpecReduce_3  11 happyReduction_45
happyReduction_45 _
	_
	_
	 =  HappyAbsSyn11
		 (Scan
	)

happyReduce_46 = happySpecReduce_1  12 happyReduction_46
happyReduction_46 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (ExpSend happy_var_1
	)
happyReduction_46 _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_0  13 happyReduction_47
happyReduction_47  =  HappyAbsSyn13
		 ([]
	)

happyReduce_48 = happySpecReduce_1  13 happyReduction_48
happyReduction_48 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_48 _  = notHappyAtAll 

happyReduce_49 = happySpecReduce_3  13 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_49 _ _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 47 47 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TOK_INT -> cont 14;
	TOK_NUM happy_dollar_dollar -> cont 15;
	TOK_ID happy_dollar_dollar -> cont 16;
	TOK_MAIN_FUNC -> cont 17;
	TOK_IF -> cont 18;
	TOK_THEN -> cont 19;
	TOK_ELSE -> cont 20;
	TOK_RETURN -> cont 21;
	TOK_WHILE -> cont 22;
	TOK_BOOLEAN -> cont 23;
	TOK_BOOL happy_dollar_dollar -> cont 24;
	TOK_BOOL happy_dollar_dollar -> cont 25;
	TOK_SCAN_INT -> cont 26;
	TOK_PRINT_INT -> cont 27;
	TOK_PLUS -> cont 28;
	TOK_MINUS -> cont 29;
	TOK_MULT -> cont 30;
	TOK_DIV -> cont 31;
	TOK_COMMA -> cont 32;
	TOK_SEMICOLON -> cont 33;
	TOK_DOT -> cont 34;
	TOK_LPAREN -> cont 35;
	TOK_RPAREN -> cont 36;
	TOK_LBRACE -> cont 37;
	TOK_RBRACE -> cont 38;
	TOK_MOD -> cont 39;
	TOK_NOT_EQUAL -> cont 40;
	TOK_EQUALS_EQUALS -> cont 41;
	TOK_EQUALS -> cont 42;
	TOK_LESS_OR_EQUAL -> cont 43;
	TOK_GREATER_OR_EQUAL -> cont 44;
	TOK_LESS_THAN -> cont 45;
	TOK_GREATER_THAN -> cont 46;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 47 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (return)
happyThen1 m k tks = (>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (return) a
happyError' :: () => ([(Token)], [String]) -> HappyIdentity a
happyError' = HappyIdentity . (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


data Start = Func
           deriving Show

data Func = InitIntFunc String [FuncAssign] [Stm] ReturnStm
          | InitBoolFunc String [FuncAssign] [Stm] ReturnStm
          | InitIntFuncE String [FuncAssign] ReturnStm
          | InitBoolFuncE String [FuncAssign] ReturnStm
          | MainFunc [Stm]
          deriving Show

data FuncAssign = FuncIntAssign String
                | FuncBoolAssign String
                deriving Show

data Exp = Num Int
         | Var String
         | Boolean Bool
         | Add Exp Exp
         | Minus Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | Less_Equal Exp Exp
         | Greater_Equal Exp Exp
         | Less_Than Exp Exp
         | Greater_Than Exp Exp
         | Equals_Equals Exp Exp
         | Equals Exp Exp
         | Not_Equal Exp Exp
         | FuncCall String [ExpCall]
         | Scan
         deriving Show

data ExpCall = ExpSend Exp
             | ExpBlock [ExpCall]
             deriving Show

data ExpCallBlock = ExpCall
                  deriving Show         

data Stm = Assign String Exp
         | InitInt String
         | InitIntAssign String Exp
         | InitBool String
         | InitBoolAssign String Exp
         | If Exp Stm Stm
         | While Exp Stm
         | Block [Stm]
         | Skip
         | FuncCallStm String [ExpCall] 
         | Return ReturnStm
         | PrintInt Exp
         deriving Show

data StmBlock = Stm
              deriving Show

data ReturnStm = ReturnExp Exp
               deriving Show          

parseError :: [Token] -> a
parseError toks = error "parse error"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x < y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `div` 16)) (bit `mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Int ->                    -- token number
         Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k - ((1) :: Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n - ((1) :: Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n - ((1)::Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
