{-# OPTIONS_GHC -w #-}
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.19.11

data HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14
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
	| HappyAbsSyn14 t14

happyExpList :: Happy_Data_Array.Array Int Int
happyExpList = Happy_Data_Array.listArray (0,432) ([16384,544,0,0,4128,1,0,0,0,0,0,32,0,0,8192,0,0,0,0,0,0,0,0,0,32768,1088,0,0,0,0,0,0,0,16,0,0,2048,0,2048,68,0,0,0,1024,0,0,0,4,0,0,0,0,0,36864,0,0,1,0,0,0,0,0,0,0,0,0,17416,0,0,0,0,8,0,7530,1027,0,0,0,0,0,0,0,0,44352,32867,1,32768,0,0,0,0,2048,4,0,0,4,0,50200,513,32,3072,226,4097,0,28934,128,8,0,16384,0,0,0,32,0,54944,16433,0,20480,6379,32,0,0,0,0,0,0,16,0,7530,1027,0,46336,398,6,0,14467,64,4,16768,8220,512,40960,61910,63299,30,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,16384,0,32768,7233,32,2,8384,4110,256,0,57344,31621,15,30120,53500,1981,54272,1594,8,0,57868,256,16,1536,32881,2048,0,0,8224,0,0,0,0,0,0,0,0,0,0,0,12288,904,16388,0,0,57720,990,0,15360,61296,1,0,0,0,0,36864,0,32768,7233,32,2,0,0,0,24576,1808,32776,0,34864,1027,64,6144,452,8194,0,57868,256,16,1536,32881,2048,0,14467,64,4,16768,8220,512,49152,3616,16,1,4192,2055,128,12288,904,16388,0,50200,513,32,3072,226,4097,0,28934,128,8,0,0,0,0,0,0,0,0,0,0,0,0,0,12,0,51440,1981,0,0,4,0,57868,256,16,0,0,0,0,0,56463,123,0,18304,15854,0,0,0,0,0,16384,0,0,0,0,0,0,0,0,0,32768,0,0,0,64,0,0,36864,0,0,0,0,0,0,0,0,0,57344,31617,12,0,49392,1597,0,30720,32,3,0,4156,384,0,7680,49160,0,0,1039,96,0,1920,12290,0,49152,259,24,0,0,3072,0,0,0,6,0,0,768,0,12288,32784,1,0,2072,192,23168,199,1,0,32768,60951,61,8384,4110,256,0,0,4,0,0,0,0,0,30720,57057,3,0,0,0,0,0,0,0,0,0,0,16768,8220,512,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15360,61298,1,36533,513,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Start","Func","FuncAssign","FuncAssignBlock","Stm","ReturnStm","StmBlock","Exp","ExpCall","ExpCallBlock","Type","int","num","id","main","for","if","else","string","text","return","while","bool","true","false","scan_int","print_int","print_str","'+'","'-'","'*'","'/'","','","';'","'('","')'","'{'","'}'","'%'","'!='","'=='","'='","'<='","'>='","'<'","'>'","'!'","'&&'","'||'","'++'","\"--\"","%eof"]
        bit_start = st * 55
        bit_end = (st + 1) * 55
        read_bit = readArrayBit happyExpList
        bits = map read_bit [bit_start..bit_end - 1]
        bits_indexed = zip bits [0..54]
        token_strs_expected = concatMap f bits_indexed
        f (False, _) = []
        f (True, nr) = [token_strs !! nr]

action_0 (15) = happyShift action_4
action_0 (22) = happyShift action_5
action_0 (26) = happyShift action_6
action_0 (4) = happyGoto action_7
action_0 (5) = happyGoto action_2
action_0 (14) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (15) = happyShift action_4
action_1 (22) = happyShift action_5
action_1 (26) = happyShift action_6
action_1 (5) = happyGoto action_2
action_1 (14) = happyGoto action_3
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (17) = happyShift action_10
action_3 _ = happyFail (happyExpListPerState 3)

action_4 (18) = happyShift action_9
action_4 _ = happyReduce_53

action_5 _ = happyReduce_55

action_6 _ = happyReduce_54

action_7 (15) = happyShift action_4
action_7 (22) = happyShift action_5
action_7 (26) = happyShift action_6
action_7 (55) = happyAccept
action_7 (5) = happyGoto action_8
action_7 (14) = happyGoto action_3
action_7 _ = happyFail (happyExpListPerState 7)

action_8 _ = happyReduce_2

action_9 (38) = happyShift action_12
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (38) = happyShift action_11
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (15) = happyShift action_17
action_11 (22) = happyShift action_5
action_11 (26) = happyShift action_6
action_11 (6) = happyGoto action_14
action_11 (7) = happyGoto action_15
action_11 (14) = happyGoto action_16
action_11 _ = happyReduce_7

action_12 (39) = happyShift action_13
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (40) = happyShift action_21
action_13 _ = happyFail (happyExpListPerState 13)

action_14 _ = happyReduce_8

action_15 (36) = happyShift action_19
action_15 (39) = happyShift action_20
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (17) = happyShift action_18
action_16 _ = happyFail (happyExpListPerState 16)

action_17 _ = happyReduce_53

action_18 _ = happyReduce_6

action_19 (15) = happyShift action_17
action_19 (22) = happyShift action_5
action_19 (26) = happyShift action_6
action_19 (6) = happyGoto action_35
action_19 (14) = happyGoto action_16
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (40) = happyShift action_34
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (15) = happyShift action_17
action_21 (17) = happyShift action_26
action_21 (19) = happyShift action_27
action_21 (20) = happyShift action_28
action_21 (22) = happyShift action_5
action_21 (24) = happyShift action_29
action_21 (25) = happyShift action_30
action_21 (26) = happyShift action_6
action_21 (30) = happyShift action_31
action_21 (31) = happyShift action_32
action_21 (40) = happyShift action_33
action_21 (8) = happyGoto action_22
action_21 (9) = happyGoto action_23
action_21 (10) = happyGoto action_24
action_21 (14) = happyGoto action_25
action_21 _ = happyFail (happyExpListPerState 21)

action_22 _ = happyReduce_23

action_23 _ = happyReduce_21

action_24 (15) = happyShift action_17
action_24 (17) = happyShift action_26
action_24 (19) = happyShift action_27
action_24 (20) = happyShift action_28
action_24 (22) = happyShift action_5
action_24 (24) = happyShift action_29
action_24 (25) = happyShift action_30
action_24 (26) = happyShift action_6
action_24 (30) = happyShift action_31
action_24 (31) = happyShift action_32
action_24 (40) = happyShift action_33
action_24 (41) = happyShift action_57
action_24 (8) = happyGoto action_56
action_24 (9) = happyGoto action_23
action_24 (14) = happyGoto action_25
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (17) = happyShift action_55
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (38) = happyShift action_53
action_26 (45) = happyShift action_54
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (38) = happyShift action_52
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (16) = happyShift action_42
action_28 (17) = happyShift action_43
action_28 (23) = happyShift action_44
action_28 (27) = happyShift action_45
action_28 (28) = happyShift action_46
action_28 (29) = happyShift action_47
action_28 (38) = happyShift action_48
action_28 (50) = happyShift action_49
action_28 (11) = happyGoto action_51
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (16) = happyShift action_42
action_29 (17) = happyShift action_43
action_29 (23) = happyShift action_44
action_29 (27) = happyShift action_45
action_29 (28) = happyShift action_46
action_29 (29) = happyShift action_47
action_29 (38) = happyShift action_48
action_29 (50) = happyShift action_49
action_29 (11) = happyGoto action_50
action_29 _ = happyFail (happyExpListPerState 29)

action_30 (16) = happyShift action_42
action_30 (17) = happyShift action_43
action_30 (23) = happyShift action_44
action_30 (27) = happyShift action_45
action_30 (28) = happyShift action_46
action_30 (29) = happyShift action_47
action_30 (38) = happyShift action_48
action_30 (50) = happyShift action_49
action_30 (11) = happyGoto action_41
action_30 _ = happyFail (happyExpListPerState 30)

action_31 (38) = happyShift action_40
action_31 _ = happyFail (happyExpListPerState 31)

action_32 (38) = happyShift action_39
action_32 _ = happyFail (happyExpListPerState 32)

action_33 (15) = happyShift action_17
action_33 (17) = happyShift action_26
action_33 (19) = happyShift action_27
action_33 (20) = happyShift action_28
action_33 (22) = happyShift action_5
action_33 (24) = happyShift action_29
action_33 (25) = happyShift action_30
action_33 (26) = happyShift action_6
action_33 (30) = happyShift action_31
action_33 (31) = happyShift action_32
action_33 (40) = happyShift action_33
action_33 (8) = happyGoto action_22
action_33 (9) = happyGoto action_23
action_33 (10) = happyGoto action_38
action_33 (14) = happyGoto action_25
action_33 _ = happyFail (happyExpListPerState 33)

action_34 (15) = happyShift action_17
action_34 (17) = happyShift action_26
action_34 (19) = happyShift action_27
action_34 (20) = happyShift action_28
action_34 (22) = happyShift action_5
action_34 (24) = happyShift action_29
action_34 (25) = happyShift action_30
action_34 (26) = happyShift action_6
action_34 (30) = happyShift action_31
action_34 (31) = happyShift action_32
action_34 (40) = happyShift action_33
action_34 (8) = happyGoto action_22
action_34 (9) = happyGoto action_36
action_34 (10) = happyGoto action_37
action_34 (14) = happyGoto action_25
action_34 _ = happyFail (happyExpListPerState 34)

action_35 _ = happyReduce_9

action_36 (41) = happyShift action_91
action_36 _ = happyReduce_21

action_37 (15) = happyShift action_17
action_37 (17) = happyShift action_26
action_37 (19) = happyShift action_27
action_37 (20) = happyShift action_28
action_37 (22) = happyShift action_5
action_37 (24) = happyShift action_29
action_37 (25) = happyShift action_30
action_37 (26) = happyShift action_6
action_37 (30) = happyShift action_31
action_37 (31) = happyShift action_32
action_37 (40) = happyShift action_33
action_37 (8) = happyGoto action_56
action_37 (9) = happyGoto action_90
action_37 (14) = happyGoto action_25
action_37 _ = happyFail (happyExpListPerState 37)

action_38 (15) = happyShift action_17
action_38 (17) = happyShift action_26
action_38 (19) = happyShift action_27
action_38 (20) = happyShift action_28
action_38 (22) = happyShift action_5
action_38 (24) = happyShift action_29
action_38 (25) = happyShift action_30
action_38 (26) = happyShift action_6
action_38 (30) = happyShift action_31
action_38 (31) = happyShift action_32
action_38 (40) = happyShift action_33
action_38 (41) = happyShift action_89
action_38 (8) = happyGoto action_56
action_38 (9) = happyGoto action_23
action_38 (14) = happyGoto action_25
action_38 _ = happyFail (happyExpListPerState 38)

action_39 (16) = happyShift action_42
action_39 (17) = happyShift action_43
action_39 (23) = happyShift action_44
action_39 (27) = happyShift action_45
action_39 (28) = happyShift action_46
action_39 (29) = happyShift action_47
action_39 (38) = happyShift action_48
action_39 (50) = happyShift action_49
action_39 (11) = happyGoto action_88
action_39 _ = happyFail (happyExpListPerState 39)

action_40 (16) = happyShift action_42
action_40 (17) = happyShift action_43
action_40 (23) = happyShift action_44
action_40 (27) = happyShift action_45
action_40 (28) = happyShift action_46
action_40 (29) = happyShift action_47
action_40 (38) = happyShift action_48
action_40 (50) = happyShift action_49
action_40 (11) = happyGoto action_87
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (15) = happyShift action_17
action_41 (17) = happyShift action_26
action_41 (19) = happyShift action_27
action_41 (20) = happyShift action_28
action_41 (22) = happyShift action_5
action_41 (24) = happyShift action_29
action_41 (25) = happyShift action_30
action_41 (26) = happyShift action_6
action_41 (30) = happyShift action_31
action_41 (31) = happyShift action_32
action_41 (32) = happyShift action_66
action_41 (33) = happyShift action_67
action_41 (34) = happyShift action_68
action_41 (35) = happyShift action_69
action_41 (40) = happyShift action_33
action_41 (42) = happyShift action_70
action_41 (43) = happyShift action_71
action_41 (44) = happyShift action_72
action_41 (46) = happyShift action_73
action_41 (47) = happyShift action_74
action_41 (48) = happyShift action_75
action_41 (49) = happyShift action_76
action_41 (51) = happyShift action_77
action_41 (52) = happyShift action_78
action_41 (53) = happyShift action_79
action_41 (54) = happyShift action_80
action_41 (8) = happyGoto action_86
action_41 (9) = happyGoto action_23
action_41 (14) = happyGoto action_25
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_25

action_43 (38) = happyShift action_85
action_43 _ = happyReduce_26

action_44 _ = happyReduce_29

action_45 _ = happyReduce_27

action_46 _ = happyReduce_28

action_47 (38) = happyShift action_84
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (16) = happyShift action_42
action_48 (17) = happyShift action_43
action_48 (23) = happyShift action_44
action_48 (27) = happyShift action_45
action_48 (28) = happyShift action_46
action_48 (29) = happyShift action_47
action_48 (38) = happyShift action_48
action_48 (50) = happyShift action_49
action_48 (11) = happyGoto action_83
action_48 _ = happyFail (happyExpListPerState 48)

action_49 (16) = happyShift action_42
action_49 (17) = happyShift action_43
action_49 (23) = happyShift action_44
action_49 (27) = happyShift action_45
action_49 (28) = happyShift action_46
action_49 (29) = happyShift action_47
action_49 (38) = happyShift action_48
action_49 (50) = happyShift action_49
action_49 (11) = happyGoto action_82
action_49 _ = happyFail (happyExpListPerState 49)

action_50 (32) = happyShift action_66
action_50 (33) = happyShift action_67
action_50 (34) = happyShift action_68
action_50 (35) = happyShift action_69
action_50 (37) = happyShift action_81
action_50 (42) = happyShift action_70
action_50 (43) = happyShift action_71
action_50 (44) = happyShift action_72
action_50 (46) = happyShift action_73
action_50 (47) = happyShift action_74
action_50 (48) = happyShift action_75
action_50 (49) = happyShift action_76
action_50 (51) = happyShift action_77
action_50 (52) = happyShift action_78
action_50 (53) = happyShift action_79
action_50 (54) = happyShift action_80
action_50 _ = happyFail (happyExpListPerState 50)

action_51 (15) = happyShift action_17
action_51 (17) = happyShift action_26
action_51 (19) = happyShift action_27
action_51 (20) = happyShift action_28
action_51 (22) = happyShift action_5
action_51 (24) = happyShift action_29
action_51 (25) = happyShift action_30
action_51 (26) = happyShift action_6
action_51 (30) = happyShift action_31
action_51 (31) = happyShift action_32
action_51 (32) = happyShift action_66
action_51 (33) = happyShift action_67
action_51 (34) = happyShift action_68
action_51 (35) = happyShift action_69
action_51 (40) = happyShift action_33
action_51 (42) = happyShift action_70
action_51 (43) = happyShift action_71
action_51 (44) = happyShift action_72
action_51 (46) = happyShift action_73
action_51 (47) = happyShift action_74
action_51 (48) = happyShift action_75
action_51 (49) = happyShift action_76
action_51 (51) = happyShift action_77
action_51 (52) = happyShift action_78
action_51 (53) = happyShift action_79
action_51 (54) = happyShift action_80
action_51 (8) = happyGoto action_65
action_51 (9) = happyGoto action_23
action_51 (14) = happyGoto action_25
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (15) = happyShift action_17
action_52 (17) = happyShift action_26
action_52 (19) = happyShift action_27
action_52 (20) = happyShift action_28
action_52 (22) = happyShift action_5
action_52 (24) = happyShift action_29
action_52 (25) = happyShift action_30
action_52 (26) = happyShift action_6
action_52 (30) = happyShift action_31
action_52 (31) = happyShift action_32
action_52 (40) = happyShift action_33
action_52 (8) = happyGoto action_64
action_52 (9) = happyGoto action_23
action_52 (14) = happyGoto action_25
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (16) = happyShift action_42
action_53 (17) = happyShift action_43
action_53 (23) = happyShift action_44
action_53 (27) = happyShift action_45
action_53 (28) = happyShift action_46
action_53 (29) = happyShift action_47
action_53 (38) = happyShift action_48
action_53 (50) = happyShift action_49
action_53 (11) = happyGoto action_61
action_53 (12) = happyGoto action_62
action_53 (13) = happyGoto action_63
action_53 _ = happyReduce_50

action_54 (16) = happyShift action_42
action_54 (17) = happyShift action_43
action_54 (23) = happyShift action_44
action_54 (27) = happyShift action_45
action_54 (28) = happyShift action_46
action_54 (29) = happyShift action_47
action_54 (38) = happyShift action_48
action_54 (50) = happyShift action_49
action_54 (11) = happyGoto action_60
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (37) = happyShift action_58
action_55 (45) = happyShift action_59
action_55 _ = happyFail (happyExpListPerState 55)

action_56 _ = happyReduce_24

action_57 _ = happyReduce_5

action_58 _ = happyReduce_11

action_59 (16) = happyShift action_42
action_59 (17) = happyShift action_43
action_59 (23) = happyShift action_44
action_59 (27) = happyShift action_45
action_59 (28) = happyShift action_46
action_59 (29) = happyShift action_47
action_59 (38) = happyShift action_48
action_59 (50) = happyShift action_49
action_59 (11) = happyGoto action_116
action_59 _ = happyFail (happyExpListPerState 59)

action_60 (32) = happyShift action_66
action_60 (33) = happyShift action_67
action_60 (34) = happyShift action_68
action_60 (35) = happyShift action_69
action_60 (37) = happyShift action_115
action_60 (42) = happyShift action_70
action_60 (43) = happyShift action_71
action_60 (44) = happyShift action_72
action_60 (46) = happyShift action_73
action_60 (47) = happyShift action_74
action_60 (48) = happyShift action_75
action_60 (49) = happyShift action_76
action_60 (51) = happyShift action_77
action_60 (52) = happyShift action_78
action_60 (53) = happyShift action_79
action_60 (54) = happyShift action_80
action_60 _ = happyFail (happyExpListPerState 60)

action_61 (32) = happyShift action_66
action_61 (33) = happyShift action_67
action_61 (34) = happyShift action_68
action_61 (35) = happyShift action_69
action_61 (42) = happyShift action_70
action_61 (43) = happyShift action_71
action_61 (44) = happyShift action_72
action_61 (46) = happyShift action_73
action_61 (47) = happyShift action_74
action_61 (48) = happyShift action_75
action_61 (49) = happyShift action_76
action_61 (51) = happyShift action_77
action_61 (52) = happyShift action_78
action_61 (53) = happyShift action_79
action_61 (54) = happyShift action_80
action_61 _ = happyReduce_49

action_62 _ = happyReduce_51

action_63 (36) = happyShift action_113
action_63 (39) = happyShift action_114
action_63 _ = happyFail (happyExpListPerState 63)

action_64 (16) = happyShift action_42
action_64 (17) = happyShift action_43
action_64 (23) = happyShift action_44
action_64 (27) = happyShift action_45
action_64 (28) = happyShift action_46
action_64 (29) = happyShift action_47
action_64 (38) = happyShift action_48
action_64 (50) = happyShift action_49
action_64 (11) = happyGoto action_112
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (21) = happyShift action_111
action_65 _ = happyReduce_13

action_66 (16) = happyShift action_42
action_66 (17) = happyShift action_43
action_66 (23) = happyShift action_44
action_66 (27) = happyShift action_45
action_66 (28) = happyShift action_46
action_66 (29) = happyShift action_47
action_66 (38) = happyShift action_48
action_66 (50) = happyShift action_49
action_66 (11) = happyGoto action_110
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (16) = happyShift action_42
action_67 (17) = happyShift action_43
action_67 (23) = happyShift action_44
action_67 (27) = happyShift action_45
action_67 (28) = happyShift action_46
action_67 (29) = happyShift action_47
action_67 (38) = happyShift action_48
action_67 (50) = happyShift action_49
action_67 (11) = happyGoto action_109
action_67 _ = happyFail (happyExpListPerState 67)

action_68 (16) = happyShift action_42
action_68 (17) = happyShift action_43
action_68 (23) = happyShift action_44
action_68 (27) = happyShift action_45
action_68 (28) = happyShift action_46
action_68 (29) = happyShift action_47
action_68 (38) = happyShift action_48
action_68 (50) = happyShift action_49
action_68 (11) = happyGoto action_108
action_68 _ = happyFail (happyExpListPerState 68)

action_69 (16) = happyShift action_42
action_69 (17) = happyShift action_43
action_69 (23) = happyShift action_44
action_69 (27) = happyShift action_45
action_69 (28) = happyShift action_46
action_69 (29) = happyShift action_47
action_69 (38) = happyShift action_48
action_69 (50) = happyShift action_49
action_69 (11) = happyGoto action_107
action_69 _ = happyFail (happyExpListPerState 69)

action_70 (16) = happyShift action_42
action_70 (17) = happyShift action_43
action_70 (23) = happyShift action_44
action_70 (27) = happyShift action_45
action_70 (28) = happyShift action_46
action_70 (29) = happyShift action_47
action_70 (38) = happyShift action_48
action_70 (50) = happyShift action_49
action_70 (11) = happyGoto action_106
action_70 _ = happyFail (happyExpListPerState 70)

action_71 (16) = happyShift action_42
action_71 (17) = happyShift action_43
action_71 (23) = happyShift action_44
action_71 (27) = happyShift action_45
action_71 (28) = happyShift action_46
action_71 (29) = happyShift action_47
action_71 (38) = happyShift action_48
action_71 (50) = happyShift action_49
action_71 (11) = happyGoto action_105
action_71 _ = happyFail (happyExpListPerState 71)

action_72 (16) = happyShift action_42
action_72 (17) = happyShift action_43
action_72 (23) = happyShift action_44
action_72 (27) = happyShift action_45
action_72 (28) = happyShift action_46
action_72 (29) = happyShift action_47
action_72 (38) = happyShift action_48
action_72 (50) = happyShift action_49
action_72 (11) = happyGoto action_104
action_72 _ = happyFail (happyExpListPerState 72)

action_73 (16) = happyShift action_42
action_73 (17) = happyShift action_43
action_73 (23) = happyShift action_44
action_73 (27) = happyShift action_45
action_73 (28) = happyShift action_46
action_73 (29) = happyShift action_47
action_73 (38) = happyShift action_48
action_73 (50) = happyShift action_49
action_73 (11) = happyGoto action_103
action_73 _ = happyFail (happyExpListPerState 73)

action_74 (16) = happyShift action_42
action_74 (17) = happyShift action_43
action_74 (23) = happyShift action_44
action_74 (27) = happyShift action_45
action_74 (28) = happyShift action_46
action_74 (29) = happyShift action_47
action_74 (38) = happyShift action_48
action_74 (50) = happyShift action_49
action_74 (11) = happyGoto action_102
action_74 _ = happyFail (happyExpListPerState 74)

action_75 (16) = happyShift action_42
action_75 (17) = happyShift action_43
action_75 (23) = happyShift action_44
action_75 (27) = happyShift action_45
action_75 (28) = happyShift action_46
action_75 (29) = happyShift action_47
action_75 (38) = happyShift action_48
action_75 (50) = happyShift action_49
action_75 (11) = happyGoto action_101
action_75 _ = happyFail (happyExpListPerState 75)

action_76 (16) = happyShift action_42
action_76 (17) = happyShift action_43
action_76 (23) = happyShift action_44
action_76 (27) = happyShift action_45
action_76 (28) = happyShift action_46
action_76 (29) = happyShift action_47
action_76 (38) = happyShift action_48
action_76 (50) = happyShift action_49
action_76 (11) = happyGoto action_100
action_76 _ = happyFail (happyExpListPerState 76)

action_77 (16) = happyShift action_42
action_77 (17) = happyShift action_43
action_77 (23) = happyShift action_44
action_77 (27) = happyShift action_45
action_77 (28) = happyShift action_46
action_77 (29) = happyShift action_47
action_77 (38) = happyShift action_48
action_77 (50) = happyShift action_49
action_77 (11) = happyGoto action_99
action_77 _ = happyFail (happyExpListPerState 77)

action_78 (16) = happyShift action_42
action_78 (17) = happyShift action_43
action_78 (23) = happyShift action_44
action_78 (27) = happyShift action_45
action_78 (28) = happyShift action_46
action_78 (29) = happyShift action_47
action_78 (38) = happyShift action_48
action_78 (50) = happyShift action_49
action_78 (11) = happyGoto action_98
action_78 _ = happyFail (happyExpListPerState 78)

action_79 _ = happyReduce_44

action_80 _ = happyReduce_45

action_81 _ = happyReduce_22

action_82 (53) = happyShift action_79
action_82 (54) = happyShift action_80
action_82 _ = happyReduce_46

action_83 (32) = happyShift action_66
action_83 (33) = happyShift action_67
action_83 (34) = happyShift action_68
action_83 (35) = happyShift action_69
action_83 (39) = happyShift action_97
action_83 (42) = happyShift action_70
action_83 (43) = happyShift action_71
action_83 (44) = happyShift action_72
action_83 (46) = happyShift action_73
action_83 (47) = happyShift action_74
action_83 (48) = happyShift action_75
action_83 (49) = happyShift action_76
action_83 (51) = happyShift action_77
action_83 (52) = happyShift action_78
action_83 (53) = happyShift action_79
action_83 (54) = happyShift action_80
action_83 _ = happyFail (happyExpListPerState 83)

action_84 (39) = happyShift action_96
action_84 _ = happyFail (happyExpListPerState 84)

action_85 (16) = happyShift action_42
action_85 (17) = happyShift action_43
action_85 (23) = happyShift action_44
action_85 (27) = happyShift action_45
action_85 (28) = happyShift action_46
action_85 (29) = happyShift action_47
action_85 (38) = happyShift action_48
action_85 (50) = happyShift action_49
action_85 (11) = happyGoto action_61
action_85 (12) = happyGoto action_62
action_85 (13) = happyGoto action_95
action_85 _ = happyReduce_50

action_86 _ = happyReduce_15

action_87 (32) = happyShift action_66
action_87 (33) = happyShift action_67
action_87 (34) = happyShift action_68
action_87 (35) = happyShift action_69
action_87 (39) = happyShift action_94
action_87 (42) = happyShift action_70
action_87 (43) = happyShift action_71
action_87 (44) = happyShift action_72
action_87 (46) = happyShift action_73
action_87 (47) = happyShift action_74
action_87 (48) = happyShift action_75
action_87 (49) = happyShift action_76
action_87 (51) = happyShift action_77
action_87 (52) = happyShift action_78
action_87 (53) = happyShift action_79
action_87 (54) = happyShift action_80
action_87 _ = happyFail (happyExpListPerState 87)

action_88 (32) = happyShift action_66
action_88 (33) = happyShift action_67
action_88 (34) = happyShift action_68
action_88 (35) = happyShift action_69
action_88 (39) = happyShift action_93
action_88 (42) = happyShift action_70
action_88 (43) = happyShift action_71
action_88 (44) = happyShift action_72
action_88 (46) = happyShift action_73
action_88 (47) = happyShift action_74
action_88 (48) = happyShift action_75
action_88 (49) = happyShift action_76
action_88 (51) = happyShift action_77
action_88 (52) = happyShift action_78
action_88 (53) = happyShift action_79
action_88 (54) = happyShift action_80
action_88 _ = happyFail (happyExpListPerState 88)

action_89 _ = happyReduce_17

action_90 (41) = happyShift action_92
action_90 _ = happyReduce_21

action_91 _ = happyReduce_4

action_92 _ = happyReduce_3

action_93 (37) = happyShift action_124
action_93 _ = happyFail (happyExpListPerState 93)

action_94 (37) = happyShift action_123
action_94 _ = happyFail (happyExpListPerState 94)

action_95 (36) = happyShift action_113
action_95 (39) = happyShift action_122
action_95 _ = happyFail (happyExpListPerState 95)

action_96 _ = happyReduce_48

action_97 _ = happyReduce_30

action_98 (32) = happyShift action_66
action_98 (33) = happyShift action_67
action_98 (34) = happyShift action_68
action_98 (35) = happyShift action_69
action_98 (42) = happyShift action_70
action_98 (43) = happyShift action_71
action_98 (44) = happyShift action_72
action_98 (46) = happyShift action_73
action_98 (47) = happyShift action_74
action_98 (48) = happyShift action_75
action_98 (49) = happyShift action_76
action_98 (53) = happyShift action_79
action_98 (54) = happyShift action_80
action_98 _ = happyReduce_43

action_99 (32) = happyShift action_66
action_99 (33) = happyShift action_67
action_99 (34) = happyShift action_68
action_99 (35) = happyShift action_69
action_99 (42) = happyShift action_70
action_99 (43) = happyShift action_71
action_99 (44) = happyShift action_72
action_99 (46) = happyShift action_73
action_99 (47) = happyShift action_74
action_99 (48) = happyShift action_75
action_99 (49) = happyShift action_76
action_99 (53) = happyShift action_79
action_99 (54) = happyShift action_80
action_99 _ = happyReduce_42

action_100 (32) = happyShift action_66
action_100 (33) = happyShift action_67
action_100 (34) = happyShift action_68
action_100 (35) = happyShift action_69
action_100 (42) = happyShift action_70
action_100 (43) = happyFail []
action_100 (44) = happyFail []
action_100 (46) = happyFail []
action_100 (47) = happyFail []
action_100 (48) = happyFail []
action_100 (49) = happyFail []
action_100 (53) = happyShift action_79
action_100 (54) = happyShift action_80
action_100 _ = happyReduce_39

action_101 (32) = happyShift action_66
action_101 (33) = happyShift action_67
action_101 (34) = happyShift action_68
action_101 (35) = happyShift action_69
action_101 (42) = happyShift action_70
action_101 (43) = happyFail []
action_101 (44) = happyFail []
action_101 (46) = happyFail []
action_101 (47) = happyFail []
action_101 (48) = happyFail []
action_101 (49) = happyFail []
action_101 (53) = happyShift action_79
action_101 (54) = happyShift action_80
action_101 _ = happyReduce_38

action_102 (32) = happyShift action_66
action_102 (33) = happyShift action_67
action_102 (34) = happyShift action_68
action_102 (35) = happyShift action_69
action_102 (42) = happyShift action_70
action_102 (43) = happyFail []
action_102 (44) = happyFail []
action_102 (46) = happyFail []
action_102 (47) = happyFail []
action_102 (48) = happyFail []
action_102 (49) = happyFail []
action_102 (53) = happyShift action_79
action_102 (54) = happyShift action_80
action_102 _ = happyReduce_37

action_103 (32) = happyShift action_66
action_103 (33) = happyShift action_67
action_103 (34) = happyShift action_68
action_103 (35) = happyShift action_69
action_103 (42) = happyShift action_70
action_103 (43) = happyFail []
action_103 (44) = happyFail []
action_103 (46) = happyFail []
action_103 (47) = happyFail []
action_103 (48) = happyFail []
action_103 (49) = happyFail []
action_103 (53) = happyShift action_79
action_103 (54) = happyShift action_80
action_103 _ = happyReduce_36

action_104 (32) = happyShift action_66
action_104 (33) = happyShift action_67
action_104 (34) = happyShift action_68
action_104 (35) = happyShift action_69
action_104 (42) = happyShift action_70
action_104 (43) = happyFail []
action_104 (44) = happyFail []
action_104 (46) = happyFail []
action_104 (47) = happyFail []
action_104 (48) = happyFail []
action_104 (49) = happyFail []
action_104 (53) = happyShift action_79
action_104 (54) = happyShift action_80
action_104 _ = happyReduce_40

action_105 (32) = happyShift action_66
action_105 (33) = happyShift action_67
action_105 (34) = happyShift action_68
action_105 (35) = happyShift action_69
action_105 (42) = happyShift action_70
action_105 (43) = happyFail []
action_105 (44) = happyFail []
action_105 (46) = happyFail []
action_105 (47) = happyFail []
action_105 (48) = happyFail []
action_105 (49) = happyFail []
action_105 (53) = happyShift action_79
action_105 (54) = happyShift action_80
action_105 _ = happyReduce_41

action_106 (53) = happyShift action_79
action_106 (54) = happyShift action_80
action_106 _ = happyReduce_35

action_107 (53) = happyShift action_79
action_107 (54) = happyShift action_80
action_107 _ = happyReduce_34

action_108 (53) = happyShift action_79
action_108 (54) = happyShift action_80
action_108 _ = happyReduce_33

action_109 (34) = happyShift action_68
action_109 (35) = happyShift action_69
action_109 (42) = happyShift action_70
action_109 (53) = happyShift action_79
action_109 (54) = happyShift action_80
action_109 _ = happyReduce_32

action_110 (34) = happyShift action_68
action_110 (35) = happyShift action_69
action_110 (42) = happyShift action_70
action_110 (53) = happyShift action_79
action_110 (54) = happyShift action_80
action_110 _ = happyReduce_31

action_111 (15) = happyShift action_17
action_111 (17) = happyShift action_26
action_111 (19) = happyShift action_27
action_111 (20) = happyShift action_28
action_111 (22) = happyShift action_5
action_111 (24) = happyShift action_29
action_111 (25) = happyShift action_30
action_111 (26) = happyShift action_6
action_111 (30) = happyShift action_31
action_111 (31) = happyShift action_32
action_111 (40) = happyShift action_33
action_111 (8) = happyGoto action_121
action_111 (9) = happyGoto action_23
action_111 (14) = happyGoto action_25
action_111 _ = happyFail (happyExpListPerState 111)

action_112 (32) = happyShift action_66
action_112 (33) = happyShift action_67
action_112 (34) = happyShift action_68
action_112 (35) = happyShift action_69
action_112 (37) = happyShift action_120
action_112 (42) = happyShift action_70
action_112 (43) = happyShift action_71
action_112 (44) = happyShift action_72
action_112 (46) = happyShift action_73
action_112 (47) = happyShift action_74
action_112 (48) = happyShift action_75
action_112 (49) = happyShift action_76
action_112 (51) = happyShift action_77
action_112 (52) = happyShift action_78
action_112 (53) = happyShift action_79
action_112 (54) = happyShift action_80
action_112 _ = happyFail (happyExpListPerState 112)

action_113 (16) = happyShift action_42
action_113 (17) = happyShift action_43
action_113 (23) = happyShift action_44
action_113 (27) = happyShift action_45
action_113 (28) = happyShift action_46
action_113 (29) = happyShift action_47
action_113 (38) = happyShift action_48
action_113 (50) = happyShift action_49
action_113 (11) = happyGoto action_61
action_113 (12) = happyGoto action_119
action_113 _ = happyFail (happyExpListPerState 113)

action_114 (37) = happyShift action_118
action_114 _ = happyFail (happyExpListPerState 114)

action_115 _ = happyReduce_10

action_116 (32) = happyShift action_66
action_116 (33) = happyShift action_67
action_116 (34) = happyShift action_68
action_116 (35) = happyShift action_69
action_116 (37) = happyShift action_117
action_116 (42) = happyShift action_70
action_116 (43) = happyShift action_71
action_116 (44) = happyShift action_72
action_116 (46) = happyShift action_73
action_116 (47) = happyShift action_74
action_116 (48) = happyShift action_75
action_116 (49) = happyShift action_76
action_116 (51) = happyShift action_77
action_116 (52) = happyShift action_78
action_116 (53) = happyShift action_79
action_116 (54) = happyShift action_80
action_116 _ = happyFail (happyExpListPerState 116)

action_117 _ = happyReduce_12

action_118 _ = happyReduce_18

action_119 _ = happyReduce_52

action_120 (16) = happyShift action_42
action_120 (17) = happyShift action_43
action_120 (23) = happyShift action_44
action_120 (27) = happyShift action_45
action_120 (28) = happyShift action_46
action_120 (29) = happyShift action_47
action_120 (38) = happyShift action_48
action_120 (50) = happyShift action_49
action_120 (11) = happyGoto action_125
action_120 _ = happyFail (happyExpListPerState 120)

action_121 _ = happyReduce_14

action_122 _ = happyReduce_47

action_123 _ = happyReduce_19

action_124 _ = happyReduce_20

action_125 (32) = happyShift action_66
action_125 (33) = happyShift action_67
action_125 (34) = happyShift action_68
action_125 (35) = happyShift action_69
action_125 (39) = happyShift action_126
action_125 (42) = happyShift action_70
action_125 (43) = happyShift action_71
action_125 (44) = happyShift action_72
action_125 (46) = happyShift action_73
action_125 (47) = happyShift action_74
action_125 (48) = happyShift action_75
action_125 (49) = happyShift action_76
action_125 (51) = happyShift action_77
action_125 (52) = happyShift action_78
action_125 (53) = happyShift action_79
action_125 (54) = happyShift action_80
action_125 _ = happyFail (happyExpListPerState 125)

action_126 (15) = happyShift action_17
action_126 (17) = happyShift action_26
action_126 (19) = happyShift action_27
action_126 (20) = happyShift action_28
action_126 (22) = happyShift action_5
action_126 (24) = happyShift action_29
action_126 (25) = happyShift action_30
action_126 (26) = happyShift action_6
action_126 (30) = happyShift action_31
action_126 (31) = happyShift action_32
action_126 (40) = happyShift action_33
action_126 (8) = happyGoto action_22
action_126 (9) = happyGoto action_23
action_126 (10) = happyGoto action_127
action_126 (14) = happyGoto action_25
action_126 _ = happyFail (happyExpListPerState 126)

action_127 (15) = happyShift action_17
action_127 (17) = happyShift action_26
action_127 (19) = happyShift action_27
action_127 (20) = happyShift action_28
action_127 (22) = happyShift action_5
action_127 (24) = happyShift action_29
action_127 (25) = happyShift action_30
action_127 (26) = happyShift action_6
action_127 (30) = happyShift action_31
action_127 (31) = happyShift action_32
action_127 (40) = happyShift action_33
action_127 (8) = happyGoto action_56
action_127 (9) = happyGoto action_23
action_127 (14) = happyGoto action_25
action_127 _ = happyReduce_16

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
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitFunc happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest

happyReduce_4 = happyReduce 8 5 happyReduction_4
happyReduction_4 (_ `HappyStk`
	(HappyAbsSyn9  happy_var_7) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn7  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (InitFuncE happy_var_1 happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest

happyReduce_5 = happyReduce 7 5 happyReduction_5
happyReduction_5 (_ `HappyStk`
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

happyReduce_6 = happySpecReduce_2  6 happyReduction_6
happyReduction_6 (HappyTerminal (TOK_ID happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn6
		 (FuncAssign happy_var_1 happy_var_2
	)
happyReduction_6 _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_0  7 happyReduction_7
happyReduction_7  =  HappyAbsSyn7
		 ([]
	)

happyReduce_8 = happySpecReduce_1  7 happyReduction_8
happyReduction_8 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_8 _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  7 happyReduction_9
happyReduction_9 (HappyAbsSyn6  happy_var_3)
	_
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happyReduce 4 8 happyReduction_10
happyReduction_10 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_11 = happySpecReduce_3  8 happyReduction_11
happyReduction_11 _
	(HappyTerminal (TOK_ID happy_var_2))
	(HappyAbsSyn14  happy_var_1)
	 =  HappyAbsSyn8
		 (Init happy_var_1 happy_var_2
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happyReduce 5 8 happyReduction_12
happyReduction_12 (_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_2)) `HappyStk`
	(HappyAbsSyn14  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (InitAssign happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_13 = happySpecReduce_3  8 happyReduction_13
happyReduction_13 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (If happy_var_2 happy_var_3 Skip
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happyReduce 5 8 happyReduction_14
happyReduction_14 ((HappyAbsSyn8  happy_var_5) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	(HappyAbsSyn11  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (If happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest

happyReduce_15 = happySpecReduce_3  8 happyReduction_15
happyReduction_15 (HappyAbsSyn8  happy_var_3)
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (While happy_var_2 happy_var_3
	)
happyReduction_15 _ _ _  = notHappyAtAll 

happyReduce_16 = happyReduce 8 8 happyReduction_16
happyReduction_16 ((HappyAbsSyn10  happy_var_8) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_4) `HappyStk`
	(HappyAbsSyn8  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (For happy_var_3 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest

happyReduce_17 = happySpecReduce_3  8 happyReduction_17
happyReduction_17 _
	(HappyAbsSyn10  happy_var_2)
	_
	 =  HappyAbsSyn8
		 (Block happy_var_2
	)
happyReduction_17 _ _ _  = notHappyAtAll 

happyReduce_18 = happyReduce 5 8 happyReduction_18
happyReduction_18 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (FuncCallStm happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_19 = happyReduce 5 8 happyReduction_19
happyReduction_19 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintInt happy_var_3
	) `HappyStk` happyRest

happyReduce_20 = happyReduce 5 8 happyReduction_20
happyReduction_20 (_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn11  happy_var_3) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn8
		 (PrintStr happy_var_3
	) `HappyStk` happyRest

happyReduce_21 = happySpecReduce_1  8 happyReduction_21
happyReduction_21 (HappyAbsSyn9  happy_var_1)
	 =  HappyAbsSyn8
		 (Return happy_var_1
	)
happyReduction_21 _  = notHappyAtAll 

happyReduce_22 = happySpecReduce_3  9 happyReduction_22
happyReduction_22 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn9
		 (ReturnExp happy_var_2
	)
happyReduction_22 _ _ _  = notHappyAtAll 

happyReduce_23 = happySpecReduce_1  10 happyReduction_23
happyReduction_23 (HappyAbsSyn8  happy_var_1)
	 =  HappyAbsSyn10
		 ([happy_var_1]
	)
happyReduction_23 _  = notHappyAtAll 

happyReduce_24 = happySpecReduce_2  10 happyReduction_24
happyReduction_24 (HappyAbsSyn8  happy_var_2)
	(HappyAbsSyn10  happy_var_1)
	 =  HappyAbsSyn10
		 (happy_var_1 ++ [happy_var_2]
	)
happyReduction_24 _ _  = notHappyAtAll 

happyReduce_25 = happySpecReduce_1  11 happyReduction_25
happyReduction_25 (HappyTerminal (TOK_NUM happy_var_1))
	 =  HappyAbsSyn11
		 (Num happy_var_1
	)
happyReduction_25 _  = notHappyAtAll 

happyReduce_26 = happySpecReduce_1  11 happyReduction_26
happyReduction_26 (HappyTerminal (TOK_ID happy_var_1))
	 =  HappyAbsSyn11
		 (Var happy_var_1
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_1  11 happyReduction_27
happyReduction_27 (HappyTerminal (TOK_BOOL happy_var_1))
	 =  HappyAbsSyn11
		 (Boolean happy_var_1
	)
happyReduction_27 _  = notHappyAtAll 

happyReduce_28 = happySpecReduce_1  11 happyReduction_28
happyReduction_28 (HappyTerminal (TOK_BOOL happy_var_1))
	 =  HappyAbsSyn11
		 (Boolean happy_var_1
	)
happyReduction_28 _  = notHappyAtAll 

happyReduce_29 = happySpecReduce_1  11 happyReduction_29
happyReduction_29 (HappyTerminal (TOK_TEXT happy_var_1))
	 =  HappyAbsSyn11
		 (Text happy_var_1
	)
happyReduction_29 _  = notHappyAtAll 

happyReduce_30 = happySpecReduce_3  11 happyReduction_30
happyReduction_30 _
	(HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (happy_var_2
	)
happyReduction_30 _ _ _  = notHappyAtAll 

happyReduce_31 = happySpecReduce_3  11 happyReduction_31
happyReduction_31 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Add happy_var_1 happy_var_3
	)
happyReduction_31 _ _ _  = notHappyAtAll 

happyReduce_32 = happySpecReduce_3  11 happyReduction_32
happyReduction_32 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus happy_var_1 happy_var_3
	)
happyReduction_32 _ _ _  = notHappyAtAll 

happyReduce_33 = happySpecReduce_3  11 happyReduction_33
happyReduction_33 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mult happy_var_1 happy_var_3
	)
happyReduction_33 _ _ _  = notHappyAtAll 

happyReduce_34 = happySpecReduce_3  11 happyReduction_34
happyReduction_34 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Div happy_var_1 happy_var_3
	)
happyReduction_34 _ _ _  = notHappyAtAll 

happyReduce_35 = happySpecReduce_3  11 happyReduction_35
happyReduction_35 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Mod happy_var_1 happy_var_3
	)
happyReduction_35 _ _ _  = notHappyAtAll 

happyReduce_36 = happySpecReduce_3  11 happyReduction_36
happyReduction_36 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Equal happy_var_1 happy_var_3
	)
happyReduction_36 _ _ _  = notHappyAtAll 

happyReduce_37 = happySpecReduce_3  11 happyReduction_37
happyReduction_37 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Equal happy_var_1 happy_var_3
	)
happyReduction_37 _ _ _  = notHappyAtAll 

happyReduce_38 = happySpecReduce_3  11 happyReduction_38
happyReduction_38 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Less_Than happy_var_1 happy_var_3
	)
happyReduction_38 _ _ _  = notHappyAtAll 

happyReduce_39 = happySpecReduce_3  11 happyReduction_39
happyReduction_39 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Greater_Than happy_var_1 happy_var_3
	)
happyReduction_39 _ _ _  = notHappyAtAll 

happyReduce_40 = happySpecReduce_3  11 happyReduction_40
happyReduction_40 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Equals_Equals happy_var_1 happy_var_3
	)
happyReduction_40 _ _ _  = notHappyAtAll 

happyReduce_41 = happySpecReduce_3  11 happyReduction_41
happyReduction_41 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Not_Equal happy_var_1 happy_var_3
	)
happyReduction_41 _ _ _  = notHappyAtAll 

happyReduce_42 = happySpecReduce_3  11 happyReduction_42
happyReduction_42 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (And happy_var_1 happy_var_3
	)
happyReduction_42 _ _ _  = notHappyAtAll 

happyReduce_43 = happySpecReduce_3  11 happyReduction_43
happyReduction_43 (HappyAbsSyn11  happy_var_3)
	_
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Or happy_var_1 happy_var_3
	)
happyReduction_43 _ _ _  = notHappyAtAll 

happyReduce_44 = happySpecReduce_2  11 happyReduction_44
happyReduction_44 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Plus_Plus happy_var_1
	)
happyReduction_44 _ _  = notHappyAtAll 

happyReduce_45 = happySpecReduce_2  11 happyReduction_45
happyReduction_45 _
	(HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn11
		 (Minus_Minus happy_var_1
	)
happyReduction_45 _ _  = notHappyAtAll 

happyReduce_46 = happySpecReduce_2  11 happyReduction_46
happyReduction_46 (HappyAbsSyn11  happy_var_2)
	_
	 =  HappyAbsSyn11
		 (Not happy_var_2
	)
happyReduction_46 _ _  = notHappyAtAll 

happyReduce_47 = happyReduce 4 11 happyReduction_47
happyReduction_47 (_ `HappyStk`
	(HappyAbsSyn13  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TOK_ID happy_var_1)) `HappyStk`
	happyRest)
	 = HappyAbsSyn11
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_48 = happySpecReduce_3  11 happyReduction_48
happyReduction_48 _
	_
	_
	 =  HappyAbsSyn11
		 (Scan
	)

happyReduce_49 = happySpecReduce_1  12 happyReduction_49
happyReduction_49 (HappyAbsSyn11  happy_var_1)
	 =  HappyAbsSyn12
		 (ExpSend happy_var_1
	)
happyReduction_49 _  = notHappyAtAll 

happyReduce_50 = happySpecReduce_0  13 happyReduction_50
happyReduction_50  =  HappyAbsSyn13
		 ([]
	)

happyReduce_51 = happySpecReduce_1  13 happyReduction_51
happyReduction_51 (HappyAbsSyn12  happy_var_1)
	 =  HappyAbsSyn13
		 ([happy_var_1]
	)
happyReduction_51 _  = notHappyAtAll 

happyReduce_52 = happySpecReduce_3  13 happyReduction_52
happyReduction_52 (HappyAbsSyn12  happy_var_3)
	_
	(HappyAbsSyn13  happy_var_1)
	 =  HappyAbsSyn13
		 (happy_var_1 ++ [happy_var_3]
	)
happyReduction_52 _ _ _  = notHappyAtAll 

happyReduce_53 = happySpecReduce_1  14 happyReduction_53
happyReduction_53 _
	 =  HappyAbsSyn14
		 (Type_Int
	)

happyReduce_54 = happySpecReduce_1  14 happyReduction_54
happyReduction_54 _
	 =  HappyAbsSyn14
		 (Type_Bool
	)

happyReduce_55 = happySpecReduce_1  14 happyReduction_55
happyReduction_55 _
	 =  HappyAbsSyn14
		 (Type_String
	)

happyNewToken action sts stk [] =
	action 55 55 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TOK_INT -> cont 15;
	TOK_NUM happy_dollar_dollar -> cont 16;
	TOK_ID happy_dollar_dollar -> cont 17;
	TOK_MAIN_FUNC -> cont 18;
	TOK_FOR -> cont 19;
	TOK_IF -> cont 20;
	TOK_ELSE -> cont 21;
	TOK_STRING -> cont 22;
	TOK_TEXT happy_dollar_dollar -> cont 23;
	TOK_RETURN -> cont 24;
	TOK_WHILE -> cont 25;
	TOK_BOOLEAN -> cont 26;
	TOK_BOOL happy_dollar_dollar -> cont 27;
	TOK_BOOL happy_dollar_dollar -> cont 28;
	TOK_SCAN_INT -> cont 29;
	TOK_PRINT_INT -> cont 30;
	TOK_PRINT_STR -> cont 31;
	TOK_PLUS -> cont 32;
	TOK_MINUS -> cont 33;
	TOK_MULT -> cont 34;
	TOK_DIV -> cont 35;
	TOK_COMMA -> cont 36;
	TOK_SEMICOLON -> cont 37;
	TOK_LPAREN -> cont 38;
	TOK_RPAREN -> cont 39;
	TOK_LBRACE -> cont 40;
	TOK_RBRACE -> cont 41;
	TOK_MOD -> cont 42;
	TOK_NOT_EQUAL -> cont 43;
	TOK_EQUALS_EQUALS -> cont 44;
	TOK_EQUALS -> cont 45;
	TOK_LESS_OR_EQUAL -> cont 46;
	TOK_GREATER_OR_EQUAL -> cont 47;
	TOK_LESS_THAN -> cont 48;
	TOK_GREATER_THAN -> cont 49;
	TOK_NOT -> cont 50;
	TOK_AND -> cont 51;
	TOK_OR -> cont 52;
	TOK_PLUS_PLUS -> cont 53;
	TOK_MINUS_MINUS -> cont 54;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 55 tk tks = happyError' (tks, explist)
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


data Type = Type_Int
          | Type_Bool
          | Type_String
          deriving Show

data Start = Func
           deriving Show

data Func = InitFunc Type String [FuncAssign] [Stm] ReturnStm
          | InitFuncE Type String [FuncAssign] ReturnStm
          | MainFunc [Stm]
          deriving Show

data FuncAssign = FuncAssign Type String
                deriving Show

data Exp = Num Int
         | Var String
         | Boolean Bool
         | Text String
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
         | And Exp Exp
         | Or Exp Exp
         | Not Exp
         | Plus_Plus Exp
         | Minus_Minus Exp
         deriving Show

data ExpCall = ExpSend Exp
             | ExpBlock [ExpCall]
             deriving Show

data ExpCallBlock = ExpCall
                  deriving Show         

data Stm = Assign String Exp
         | Init Type String
         | InitAssign Type String Exp
         | If Exp Stm Stm
         | While Exp Stm
         | Block [Stm]
         | Skip
         | For Stm Exp Exp [Stm]
         | FuncCallStm String [ExpCall] 
         | Return ReturnStm
         | PrintInt Exp
         | PrintStr Exp
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
