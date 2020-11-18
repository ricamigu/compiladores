{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

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
happyExpList = Happy_Data_Array.listArray (0,287) ([8192,32,0,2048,8,0,0,0,0,512,0,0,128,0,0,2056,0,0,0,0,0,0,8,0,0,2,2048,8,0,512,2,0,0,0,0,0,1088,0,32,0,0,8,0,0,0,17,8192,32,0,0,0,2,0,0,0,0,0,0,0,2048,0,36456,512,0,9114,128,0,0,0,0,0,0,0,0,4,39424,32803,0,512,0,0,0,512,1,28720,128,0,7180,32,0,1795,8,32768,0,0,0,32768,0,39424,32803,0,0,16384,0,14752,2050,0,0,0,0,0,256,0,0,0,0,0,0,26624,142,6,3072,8220,0,0,512,4,14752,59454,30,0,0,0,0,0,0,0,0,0,0,0,0,32768,0,3072,8220,0,0,33520,123,14752,59454,30,0,0,0,7180,32,0,0,1026,0,0,16,0,0,0,0,0,0,0,0,0,49344,513,0,0,47151,7,49152,60935,1,0,0,49152,448,6,0,0,0,3072,8220,0,768,2055,0,49344,513,0,28720,128,0,7180,32,0,1795,8,49152,448,2,12288,32880,0,3072,8220,0,768,2055,0,49344,513,0,0,0,0,49152,60995,1,0,16,0,0,0,0,0,0,0,0,0,768,2055,0,0,58428,30,0,0,0,0,0,0,0,2,0,48128,7904,12288,32880,1,0,0,0,0,0,0,0,8252,0,0,2063,0,49152,515,0,61440,128,0,15360,32,0,3840,8,0,0,0,0,0,0,0,0,0,0,2060,0,0,515,0,0,0,40960,569,8,0,0,0,0,2048,0,0,0,0,0,0,0,0,47151,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Start","Func","FuncAssign","FuncAssignBlock","Stm","ReturnStm","StmBlock","Exp","ExpCall","ExpCallBlock","int","num","string","if","then","else","return","while","bool","true","false","scan_int","print_int","'+'","'-'","'*'","'/'","','","';'","'.'","'('","')'","'{'","'}'","'%'","'!='","'=='","'='","'<='","'>='","'<'","'>'","%eof"]
        bit_start = st * 46
        bit_end = (st + 1) * 46
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..45]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (14) = happyShift action_3
action_0 (22) = happyShift action_4
action_0 (4) = happyGoto action_5
action_0 (5) = happyGoto action_2
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (14) = happyShift action_3
action_1 (22) = happyShift action_4
action_1 (5) = happyGoto action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (16) = happyShift action_8
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (16) = happyShift action_7
action_4 _ = happyFail (happyExpListPerState 4)

action_5 (14) = happyShift action_3
action_5 (22) = happyShift action_4
action_5 (46) = happyAccept
action_5 (5) = happyGoto action_6
action_5 _ = happyFail (happyExpListPerState 5)

action_6 _ = happyReduce_2

action_7 (34) = happyShift action_10
action_7 _ = happyFail (happyExpListPerState 7)

action_8 (34) = happyShift action_9
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (14) = happyShift action_13
action_9 (22) = happyShift action_14
action_9 (6) = happyGoto action_11
action_9 (7) = happyGoto action_15
action_9 _ = happyReduce_9

action_10 (14) = happyShift action_13
action_10 (22) = happyShift action_14
action_10 (6) = happyGoto action_11
action_10 (7) = happyGoto action_12
action_10 _ = happyReduce_9

action_11 _ = happyReduce_10

action_12 (31) = happyShift action_16
action_12 (35) = happyShift action_20
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (16) = happyShift action_19
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (16) = happyShift action_18
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (31) = happyShift action_16
action_15 (35) = happyShift action_17
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (14) = happyShift action_13
action_16 (22) = happyShift action_14
action_16 (6) = happyGoto action_23
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (36) = happyShift action_22
action_17 _ = happyFail (happyExpListPerState 17)

action_18 _ = happyReduce_8

action_19 _ = happyReduce_7

action_20 (36) = happyShift action_21
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (14) = happyShift action_27
action_21 (16) = happyShift action_28
action_21 (17) = happyShift action_29
action_21 (20) = happyShift action_30
action_21 (21) = happyShift action_31
action_21 (22) = happyShift action_32
action_21 (26) = happyShift action_33
action_21 (36) = happyShift action_34
action_21 (8) = happyGoto action_24
action_21 (9) = happyGoto action_35
action_21 (10) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (14) = happyShift action_27
action_22 (16) = happyShift action_28
action_22 (17) = happyShift action_29
action_22 (20) = happyShift action_30
action_22 (21) = happyShift action_31
action_22 (22) = happyShift action_32
action_22 (26) = happyShift action_33
action_22 (36) = happyShift action_34
action_22 (8) = happyGoto action_24
action_22 (9) = happyGoto action_25
action_22 (10) = happyGoto action_26
action_22 _ = happyFail (happyExpListPerState 22)

action_23 _ = happyReduce_11

action_24 _ = happyReduce_26

action_25 (37) = happyShift action_57
action_25 _ = happyReduce_24

action_26 (14) = happyShift action_27
action_26 (16) = happyShift action_28
action_26 (17) = happyShift action_29
action_26 (20) = happyShift action_30
action_26 (21) = happyShift action_31
action_26 (22) = happyShift action_32
action_26 (26) = happyShift action_33
action_26 (36) = happyShift action_34
action_26 (8) = happyGoto action_37
action_26 (9) = happyGoto action_56
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (16) = happyShift action_55
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (34) = happyShift action_53
action_28 (41) = happyShift action_54
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (15) = happyShift action_45
action_29 (16) = happyShift action_46
action_29 (23) = happyShift action_47
action_29 (24) = happyShift action_48
action_29 (25) = happyShift action_49
action_29 (34) = happyShift action_50
action_29 (11) = happyGoto action_52
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (15) = happyShift action_45
action_30 (16) = happyShift action_46
action_30 (23) = happyShift action_47
action_30 (24) = happyShift action_48
action_30 (25) = happyShift action_49
action_30 (34) = happyShift action_50
action_30 (11) = happyGoto action_51
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (15) = happyShift action_45
action_31 (16) = happyShift action_46
action_31 (23) = happyShift action_47
action_31 (24) = happyShift action_48
action_31 (25) = happyShift action_49
action_31 (34) = happyShift action_50
action_31 (11) = happyGoto action_44
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (16) = happyShift action_43
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (34) = happyShift action_42
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (14) = happyShift action_27
action_34 (16) = happyShift action_28
action_34 (17) = happyShift action_29
action_34 (20) = happyShift action_30
action_34 (21) = happyShift action_31
action_34 (22) = happyShift action_32
action_34 (26) = happyShift action_33
action_34 (36) = happyShift action_34
action_34 (8) = happyGoto action_24
action_34 (9) = happyGoto action_40
action_34 (10) = happyGoto action_41
action_34 _ = happyFail (happyExpListPerState 34)

action_35 (37) = happyShift action_39
action_35 _ = happyReduce_24

action_36 (14) = happyShift action_27
action_36 (16) = happyShift action_28
action_36 (17) = happyShift action_29
action_36 (20) = happyShift action_30
action_36 (21) = happyShift action_31
action_36 (22) = happyShift action_32
action_36 (26) = happyShift action_33
action_36 (36) = happyShift action_34
action_36 (8) = happyGoto action_37
action_36 (9) = happyGoto action_38
action_36 _ = happyFail (happyExpListPerState 36)

action_37 _ = happyReduce_27

action_38 (37) = happyShift action_86
action_38 _ = happyReduce_24

action_39 _ = happyReduce_6

action_40 _ = happyReduce_24

action_41 (14) = happyShift action_27
action_41 (16) = happyShift action_28
action_41 (17) = happyShift action_29
action_41 (20) = happyShift action_30
action_41 (21) = happyShift action_31
action_41 (22) = happyShift action_32
action_41 (26) = happyShift action_33
action_41 (36) = happyShift action_34
action_41 (37) = happyShift action_85
action_41 (8) = happyGoto action_37
action_41 (9) = happyGoto action_40
action_41 _ = happyFail (happyExpListPerState 41)

action_42 (15) = happyShift action_45
action_42 (16) = happyShift action_46
action_42 (23) = happyShift action_47
action_42 (24) = happyShift action_48
action_42 (25) = happyShift action_49
action_42 (34) = happyShift action_50
action_42 (11) = happyGoto action_84
action_42 _ = happyFail (happyExpListPerState 42)

action_43 (32) = happyShift action_82
action_43 (41) = happyShift action_83
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (14) = happyShift action_27
action_44 (16) = happyShift action_28
action_44 (17) = happyShift action_29
action_44 (20) = happyShift action_30
action_44 (21) = happyShift action_31
action_44 (22) = happyShift action_32
action_44 (26) = happyShift action_33
action_44 (27) = happyShift action_66
action_44 (28) = happyShift action_67
action_44 (29) = happyShift action_68
action_44 (30) = happyShift action_69
action_44 (36) = happyShift action_34
action_44 (38) = happyShift action_70
action_44 (39) = happyShift action_71
action_44 (40) = happyShift action_72
action_44 (42) = happyShift action_73
action_44 (43) = happyShift action_74
action_44 (44) = happyShift action_75
action_44 (45) = happyShift action_76
action_44 (8) = happyGoto action_81
action_44 (9) = happyGoto action_40
action_44 _ = happyFail (happyExpListPerState 44)

action_45 _ = happyReduce_28

action_46 (34) = happyShift action_80
action_46 _ = happyReduce_29

action_47 _ = happyReduce_30

action_48 _ = happyReduce_31

action_49 (34) = happyShift action_79
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (15) = happyShift action_45
action_50 (16) = happyShift action_46
action_50 (23) = happyShift action_47
action_50 (24) = happyShift action_48
action_50 (25) = happyShift action_49
action_50 (34) = happyShift action_50
action_50 (11) = happyGoto action_78
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (27) = happyShift action_66
action_51 (28) = happyShift action_67
action_51 (29) = happyShift action_68
action_51 (30) = happyShift action_69
action_51 (32) = happyShift action_77
action_51 (38) = happyShift action_70
action_51 (39) = happyShift action_71
action_51 (40) = happyShift action_72
action_51 (42) = happyShift action_73
action_51 (43) = happyShift action_74
action_51 (44) = happyShift action_75
action_51 (45) = happyShift action_76
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (14) = happyShift action_27
action_52 (16) = happyShift action_28
action_52 (17) = happyShift action_29
action_52 (20) = happyShift action_30
action_52 (21) = happyShift action_31
action_52 (22) = happyShift action_32
action_52 (26) = happyShift action_33
action_52 (27) = happyShift action_66
action_52 (28) = happyShift action_67
action_52 (29) = happyShift action_68
action_52 (30) = happyShift action_69
action_52 (36) = happyShift action_34
action_52 (38) = happyShift action_70
action_52 (39) = happyShift action_71
action_52 (40) = happyShift action_72
action_52 (42) = happyShift action_73
action_52 (43) = happyShift action_74
action_52 (44) = happyShift action_75
action_52 (45) = happyShift action_76
action_52 (8) = happyGoto action_65
action_52 (9) = happyGoto action_40
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (15) = happyShift action_45
action_53 (16) = happyShift action_46
action_53 (23) = happyShift action_47
action_53 (24) = happyShift action_48
action_53 (25) = happyShift action_49
action_53 (34) = happyShift action_50
action_53 (11) = happyGoto action_62
action_53 (12) = happyGoto action_63
action_53 (13) = happyGoto action_64
action_53 _ = happyReduce_48

action_54 (15) = happyShift action_45
action_54 (16) = happyShift action_46
action_54 (23) = happyShift action_47
action_54 (24) = happyShift action_48
action_54 (25) = happyShift action_49
action_54 (34) = happyShift action_50
action_54 (11) = happyGoto action_61
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (32) = happyShift action_59
action_55 (41) = happyShift action_60
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (37) = happyShift action_58
action_56 _ = happyReduce_24

action_57 _ = happyReduce_5

action_58 _ = happyReduce_3

action_59 _ = happyReduce_13

action_60 (15) = happyShift action_45
action_60 (16) = happyShift action_46
action_60 (23) = happyShift action_47
action_60 (24) = happyShift action_48
action_60 (25) = happyShift action_49
action_60 (34) = happyShift action_50
action_60 (11) = happyGoto action_109
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (27) = happyShift action_66
action_61 (28) = happyShift action_67
action_61 (29) = happyShift action_68
action_61 (30) = happyShift action_69
action_61 (32) = happyShift action_108
action_61 (38) = happyShift action_70
action_61 (39) = happyShift action_71
action_61 (40) = happyShift action_72
action_61 (42) = happyShift action_73
action_61 (43) = happyShift action_74
action_61 (44) = happyShift action_75
action_61 (45) = happyShift action_76
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (27) = happyShift action_66
action_62 (28) = happyShift action_67
action_62 (29) = happyShift action_68
action_62 (30) = happyShift action_69
action_62 (31) = happyShift action_107
action_62 (38) = happyShift action_70
action_62 (39) = happyShift action_71
action_62 (40) = happyShift action_72
action_62 (42) = happyShift action_73
action_62 (43) = happyShift action_74
action_62 (44) = happyShift action_75
action_62 (45) = happyShift action_76
action_62 _ = happyReduce_47

action_63 _ = happyReduce_49

action_64 (15) = happyShift action_45
action_64 (16) = happyShift action_46
action_64 (23) = happyShift action_47
action_64 (24) = happyShift action_48
action_64 (25) = happyShift action_49
action_64 (34) = happyShift action_50
action_64 (35) = happyShift action_106
action_64 (11) = happyGoto action_62
action_64 (12) = happyGoto action_105
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (14) = happyShift action_27
action_65 (16) = happyShift action_28
action_65 (17) = happyShift action_29
action_65 (19) = happyShift action_104
action_65 (20) = happyShift action_30
action_65 (21) = happyShift action_31
action_65 (22) = happyShift action_32
action_65 (26) = happyShift action_33
action_65 (36) = happyShift action_34
action_65 (8) = happyGoto action_103
action_65 (9) = happyGoto action_40
action_65 _ = happyReduce_18

action_66 (15) = happyShift action_45
action_66 (16) = happyShift action_46
action_66 (23) = happyShift action_47
action_66 (24) = happyShift action_48
action_66 (25) = happyShift action_49
action_66 (34) = happyShift action_50
action_66 (11) = happyGoto action_102
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (15) = happyShift action_45
action_67 (16) = happyShift action_46
action_67 (23) = happyShift action_47
action_67 (24) = happyShift action_48
action_67 (25) = happyShift action_49
action_67 (34) = happyShift action_50
action_67 (11) = happyGoto action_101
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (15) = happyShift action_45
action_68 (16) = happyShift action_46
action_68 (23) = happyShift action_47
action_68 (24) = happyShift action_48
action_68 (25) = happyShift action_49
action_68 (34) = happyShift action_50
action_68 (11) = happyGoto action_100
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (15) = happyShift action_45
action_69 (16) = happyShift action_46
action_69 (23) = happyShift action_47
action_69 (24) = happyShift action_48
action_69 (25) = happyShift action_49
action_69 (34) = happyShift action_50
action_69 (11) = happyGoto action_99
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (15) = happyShift action_45
action_70 (16) = happyShift action_46
action_70 (23) = happyShift action_47
action_70 (24) = happyShift action_48
action_70 (25) = happyShift action_49
action_70 (34) = happyShift action_50
action_70 (11) = happyGoto action_98
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (15) = happyShift action_45
action_71 (16) = happyShift action_46
action_71 (23) = happyShift action_47
action_71 (24) = happyShift action_48
action_71 (25) = happyShift action_49
action_71 (34) = happyShift action_50
action_71 (11) = happyGoto action_97
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (15) = happyShift action_45
action_72 (16) = happyShift action_46
action_72 (23) = happyShift action_47
action_72 (24) = happyShift action_48
action_72 (25) = happyShift action_49
action_72 (34) = happyShift action_50
action_72 (11) = happyGoto action_96
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (15) = happyShift action_45
action_73 (16) = happyShift action_46
action_73 (23) = happyShift action_47
action_73 (24) = happyShift action_48
action_73 (25) = happyShift action_49
action_73 (34) = happyShift action_50
action_73 (11) = happyGoto action_95
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (15) = happyShift action_45
action_74 (16) = happyShift action_46
action_74 (23) = happyShift action_47
action_74 (24) = happyShift action_48
action_74 (25) = happyShift action_49
action_74 (34) = happyShift action_50
action_74 (11) = happyGoto action_94
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (15) = happyShift action_45
action_75 (16) = happyShift action_46
action_75 (23) = happyShift action_47
action_75 (24) = happyShift action_48
action_75 (25) = happyShift action_49
action_75 (34) = happyShift action_50
action_75 (11) = happyGoto action_93
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (15) = happyShift action_45
action_76 (16) = happyShift action_46
action_76 (23) = happyShift action_47
action_76 (24) = happyShift action_48
action_76 (25) = happyShift action_49
action_76 (34) = happyShift action_50
action_76 (11) = happyGoto action_92
action_76 _ = happyFail (happyExpListPerState 76)

action_77 _ = happyReduce_25

action_78 (27) = happyShift action_66
action_78 (28) = happyShift action_67
action_78 (29) = happyShift action_68
action_78 (30) = happyShift action_69
action_78 (35) = happyShift action_91
action_78 (38) = happyShift action_70
action_78 (39) = happyShift action_71
action_78 (40) = happyShift action_72
action_78 (42) = happyShift action_73
action_78 (43) = happyShift action_74
action_78 (44) = happyShift action_75
action_78 (45) = happyShift action_76
action_78 _ = happyFail (happyExpListPerState 78)

action_79 (35) = happyShift action_90
action_79 _ = happyFail (happyExpListPerState 79)

action_80 (15) = happyShift action_45
action_80 (16) = happyShift action_46
action_80 (23) = happyShift action_47
action_80 (24) = happyShift action_48
action_80 (25) = happyShift action_49
action_80 (34) = happyShift action_50
action_80 (11) = happyGoto action_62
action_80 (12) = happyGoto action_63
action_80 (13) = happyGoto action_89
action_80 _ = happyReduce_48

action_81 _ = happyReduce_20

action_82 _ = happyReduce_15

action_83 (15) = happyShift action_45
action_83 (16) = happyShift action_46
action_83 (23) = happyShift action_47
action_83 (24) = happyShift action_48
action_83 (25) = happyShift action_49
action_83 (34) = happyShift action_50
action_83 (11) = happyGoto action_88
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (27) = happyShift action_66
action_84 (28) = happyShift action_67
action_84 (29) = happyShift action_68
action_84 (30) = happyShift action_69
action_84 (35) = happyShift action_87
action_84 (38) = happyShift action_70
action_84 (39) = happyShift action_71
action_84 (40) = happyShift action_72
action_84 (42) = happyShift action_73
action_84 (43) = happyShift action_74
action_84 (44) = happyShift action_75
action_84 (45) = happyShift action_76
action_84 _ = happyFail (happyExpListPerState 84)

action_85 _ = happyReduce_21

action_86 _ = happyReduce_4

action_87 (32) = happyShift action_115
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (27) = happyShift action_66
action_88 (28) = happyShift action_67
action_88 (29) = happyShift action_68
action_88 (30) = happyShift action_69
action_88 (32) = happyShift action_114
action_88 (38) = happyShift action_70
action_88 (39) = happyShift action_71
action_88 (40) = happyShift action_72
action_88 (42) = happyShift action_73
action_88 (43) = happyShift action_74
action_88 (44) = happyShift action_75
action_88 (45) = happyShift action_76
action_88 _ = happyFail (happyExpListPerState 88)

action_89 (15) = happyShift action_45
action_89 (16) = happyShift action_46
action_89 (23) = happyShift action_47
action_89 (24) = happyShift action_48
action_89 (25) = happyShift action_49
action_89 (34) = happyShift action_50
action_89 (35) = happyShift action_113
action_89 (11) = happyGoto action_62
action_89 (12) = happyGoto action_105
action_89 _ = happyFail (happyExpListPerState 89)

action_90 _ = happyReduce_44

action_91 _ = happyReduce_45

action_92 (27) = happyShift action_66
action_92 (28) = happyShift action_67
action_92 (29) = happyShift action_68
action_92 (30) = happyShift action_69
action_92 (38) = happyShift action_70
action_92 (39) = happyFail []
action_92 (40) = happyFail []
action_92 (42) = happyFail []
action_92 (43) = happyFail []
action_92 (44) = happyFail []
action_92 (45) = happyFail []
action_92 _ = happyReduce_40

action_93 (27) = happyShift action_66
action_93 (28) = happyShift action_67
action_93 (29) = happyShift action_68
action_93 (30) = happyShift action_69
action_93 (38) = happyShift action_70
action_93 (39) = happyFail []
action_93 (40) = happyFail []
action_93 (42) = happyFail []
action_93 (43) = happyFail []
action_93 (44) = happyFail []
action_93 (45) = happyFail []
action_93 _ = happyReduce_39

action_94 (27) = happyShift action_66
action_94 (28) = happyShift action_67
action_94 (29) = happyShift action_68
action_94 (30) = happyShift action_69
action_94 (38) = happyShift action_70
action_94 (39) = happyFail []
action_94 (40) = happyFail []
action_94 (42) = happyFail []
action_94 (43) = happyFail []
action_94 (44) = happyFail []
action_94 (45) = happyFail []
action_94 _ = happyReduce_38

action_95 (27) = happyShift action_66
action_95 (28) = happyShift action_67
action_95 (29) = happyShift action_68
action_95 (30) = happyShift action_69
action_95 (38) = happyShift action_70
action_95 (39) = happyFail []
action_95 (40) = happyFail []
action_95 (42) = happyFail []
action_95 (43) = happyFail []
action_95 (44) = happyFail []
action_95 (45) = happyFail []
action_95 _ = happyReduce_37

action_96 (27) = happyShift action_66
action_96 (28) = happyShift action_67
action_96 (29) = happyShift action_68
action_96 (30) = happyShift action_69
action_96 (38) = happyShift action_70
action_96 (39) = happyFail []
action_96 (40) = happyFail []
action_96 (42) = happyFail []
action_96 (43) = happyFail []
action_96 (44) = happyFail []
action_96 (45) = happyFail []
action_96 _ = happyReduce_41

action_97 (27) = happyShift action_66
action_97 (28) = happyShift action_67
action_97 (29) = happyShift action_68
action_97 (30) = happyShift action_69
action_97 (38) = happyShift action_70
action_97 (39) = happyFail []
action_97 (40) = happyFail []
action_97 (42) = happyFail []
action_97 (43) = happyFail []
action_97 (44) = happyFail []
action_97 (45) = happyFail []
action_97 _ = happyReduce_42

action_98 _ = happyReduce_36

action_99 _ = happyReduce_35

action_100 _ = happyReduce_34

action_101 (29) = happyShift action_68
action_101 (30) = happyShift action_69
action_101 (38) = happyShift action_70
action_101 _ = happyReduce_33

action_102 (29) = happyShift action_68
action_102 (30) = happyShift action_69
action_102 (38) = happyShift action_70
action_102 _ = happyReduce_32

action_103 _ = happyReduce_17

action_104 (14) = happyShift action_27
action_104 (16) = happyShift action_28
action_104 (17) = happyShift action_29
action_104 (20) = happyShift action_30
action_104 (21) = happyShift action_31
action_104 (22) = happyShift action_32
action_104 (26) = happyShift action_33
action_104 (36) = happyShift action_34
action_104 (8) = happyGoto action_112
action_104 (9) = happyGoto action_40
action_104 _ = happyFail (happyExpListPerState 104)

action_105 _ = happyReduce_50

action_106 (32) = happyShift action_111
action_106 _ = happyFail (happyExpListPerState 106)

action_107 _ = happyReduce_46

action_108 _ = happyReduce_12

action_109 (27) = happyShift action_66
action_109 (28) = happyShift action_67
action_109 (29) = happyShift action_68
action_109 (30) = happyShift action_69
action_109 (32) = happyShift action_110
action_109 (38) = happyShift action_70
action_109 (39) = happyShift action_71
action_109 (40) = happyShift action_72
action_109 (42) = happyShift action_73
action_109 (43) = happyShift action_74
action_109 (44) = happyShift action_75
action_109 (45) = happyShift action_76
action_109 _ = happyFail (happyExpListPerState 109)

action_110 _ = happyReduce_14

action_111 _ = happyReduce_22

action_112 _ = happyReduce_19

action_113 _ = happyReduce_43

action_114 _ = happyReduce_16

action_115 _ = happyReduce_23

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

happyReduce_7 = happySpecReduce_2  6 happyReduction_7
happyReduction_7 (HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn6
		 (FuncIntAssign happy_var_2
	)
happyReduction_7 _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_2  6 happyReduction_8
happyReduction_8 (HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn6
		 (FuncBoolAssign happy_var_2
	)
happyReduction_8 _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_0  7 happyReduction_9
happyReduction_9  =  HappyAbsSyn7
		 ([]
	)

happyReduce_10 = happySpecReduce_1  7 happyReduction_10
happyReduction_10 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_10 _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  7 happyReduction_11
happyReduction_11 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 4 8 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 _
	(HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn8
		 (InitInt happy_var_2
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 5 8 happyReduction_14
happyReduction_14 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InitIntAssign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 _
	(HappyTerminal (TOK_ID happy_var_2))
	_
	 =  HappyAbsSyn8
		 (InitBool happy_var_2
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 5 8 happyReduction_16
happyReduction_16 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InitBoolAssign happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_17 = happyReduce 4 8 happyReduction_17
happyReduction_17 ((HappyAbsSyn8  happy_var_4) `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (If happy_var_2 happy_var_3 happy_var_4
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
happyReduction_32 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Add happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Div happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Equal happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Equal happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Than happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Than happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Equals_Equals happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Not_Equal happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happyReduce 4 11 happyReduction_43
happyReduction_43 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_44 = happySpecReduce_3  11 happyReduction_44
happyReduction_44 _
	_
	_
	 =  HappyAbsSyn11
		 (Scan
	)

happyReduce_45 = happySpecReduce_3  11 happyReduction_45
happyReduction_45 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_45 _ _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  12 happyReduction_46
happyReduction_46 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (ExpSend happy_var_1
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happySpecReduce_1  12 happyReduction_47
happyReduction_47 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (ExpSend happy_var_1
	)
happyReduction_47 _  = notHappyAtAll 

happyReduce_48 = happySpecReduce_0  13 happyReduction_48
happyReduction_48  =  HappyAbsSyn13
		 ([]
	)

happyReduce_49 = happySpecReduce_1  13 happyReduction_49
happyReduction_49 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_2  13 happyReduction_50
happyReduction_50 (HappyAbsSyn12  happy_var_2)
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_50 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 46 46 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TOK_INT -> cont 14;
	TOK_NUM happy_dollar_dollar -> cont 15;
	TOK_ID happy_dollar_dollar -> cont 16;
	TOK_IF -> cont 17;
	TOK_THEN -> cont 18;
	TOK_ELSE -> cont 19;
	TOK_RETURN -> cont 20;
	TOK_WHILE -> cont 21;
	TOK_BOOLEAN -> cont 22;
	TOK_BOOL happy_dollar_dollar -> cont 23;
	TOK_BOOL happy_dollar_dollar -> cont 24;
	TOK_SCAN_INT -> cont 25;
	TOK_PRINT_INT -> cont 26;
	TOK_PLUS -> cont 27;
	TOK_MINUS -> cont 28;
	TOK_MULT -> cont 29;
	TOK_DIV -> cont 30;
	TOK_COMMA -> cont 31;
	TOK_SEMICOLON -> cont 32;
	TOK_DOT -> cont 33;
	TOK_LPAREN -> cont 34;
	TOK_RPAREN -> cont 35;
	TOK_LBRACE -> cont 36;
	TOK_RBRACE -> cont 37;
	TOK_MOD -> cont 38;
	TOK_NOT_EQUAL -> cont 39;
	TOK_EQUALS_EQUALS -> cont 40;
	TOK_EQUALS -> cont 41;
	TOK_LESS_OR_EQUAL -> cont 42;
	TOK_GREATER_OR_EQUAL -> cont 43;
	TOK_LESS_THAN -> cont 44;
	TOK_GREATER_THAN -> cont 45;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 46 tk tks = happyError' (tks, explist)
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
{-# LINE 1 "templates/GenericTemplate.hs" #-}
{-# LINE 1 "<built-in>" #-}
{-# LINE 1 "<command-line>" #-}







# 1 "/usr/include/stdc-predef.h" 1 3 4

# 17 "/usr/include/stdc-predef.h" 3 4











































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/usr/lib/ghc/include/ghcversion.h" #-}















{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "/tmp/ghc8336_0/ghc_2.h" #-}
































































































































































































{-# LINE 7 "<command-line>" #-}
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp 









{-# LINE 43 "templates/GenericTemplate.hs" #-}

data Happy_IntList = HappyCons Int Happy_IntList







{-# LINE 65 "templates/GenericTemplate.hs" #-}

{-# LINE 75 "templates/GenericTemplate.hs" #-}

{-# LINE 84 "templates/GenericTemplate.hs" #-}

infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is (1), it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action

{-# LINE 137 "templates/GenericTemplate.hs" #-}

{-# LINE 147 "templates/GenericTemplate.hs" #-}
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

{-# LINE 267 "templates/GenericTemplate.hs" #-}
happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery ((1) is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  (1) tk old_st (((HappyState (action))):(sts)) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        action (1) (1) tk (HappyState (action)) sts ((saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ( (HappyErrorToken (i)) `HappyStk` stk)

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

{-# LINE 333 "templates/GenericTemplate.hs" #-}
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
