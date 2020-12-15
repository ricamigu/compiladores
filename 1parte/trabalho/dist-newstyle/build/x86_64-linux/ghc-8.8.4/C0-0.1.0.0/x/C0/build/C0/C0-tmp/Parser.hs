{-# OPTIONS_GHC -w #-}
{-# OPTIONS -XMagicHash -XBangPatterns -XTypeSynonymInstances -XFlexibleInstances -cpp #-}
#if __GLASGOW_HASKELL__ >= 710
{-# OPTIONS_GHC -XPartialTypeSignatures #-}
#endif
module Parser where
import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import qualified GHC.Exts as Happy_GHC_Exts
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

newtype HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14 = HappyAbsSyn HappyAny
#if __GLASGOW_HASKELL__ >= 607
type HappyAny = Happy_GHC_Exts.Any
#else
type HappyAny = forall a . a
#endif
happyIn4 :: t4 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn4 #-}
happyOut4 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t4
happyOut4 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut4 #-}
happyIn5 :: t5 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn5 #-}
happyOut5 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t5
happyOut5 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut5 #-}
happyIn6 :: t6 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn6 #-}
happyOut6 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t6
happyOut6 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut6 #-}
happyIn7 :: t7 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn7 #-}
happyOut7 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t7
happyOut7 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut7 #-}
happyIn8 :: t8 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn8 #-}
happyOut8 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t8
happyOut8 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut8 #-}
happyIn9 :: t9 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn9 #-}
happyOut9 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t9
happyOut9 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut9 #-}
happyIn10 :: t10 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn10 #-}
happyOut10 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t10
happyOut10 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut10 #-}
happyIn11 :: t11 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn11 #-}
happyOut11 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t11
happyOut11 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut11 #-}
happyIn12 :: t12 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn12 #-}
happyOut12 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t12
happyOut12 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut12 #-}
happyIn13 :: t13 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn13 #-}
happyOut13 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t13
happyOut13 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut13 #-}
happyIn14 :: t14 -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyIn14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyIn14 #-}
happyOut14 :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> t14
happyOut14 x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOut14 #-}
happyInTok :: (Token) -> (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14)
happyInTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyInTok #-}
happyOutTok :: (HappyAbsSyn t4 t5 t6 t7 t8 t9 t10 t11 t12 t13 t14) -> (Token)
happyOutTok x = Happy_GHC_Exts.unsafeCoerce# x
{-# INLINE happyOutTok #-}


happyExpList :: HappyAddr
happyExpList = HappyA# "\x00\x40\x20\x02\x00\x00\x00\x00\x20\x10\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x40\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x08\x44\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x00\x00\x00\x00\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x44\x00\x00\x00\x00\x00\x00\x00\x00\x08\x00\x00\x00\x6a\x1d\x03\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\xad\x63\x80\x01\x00\x00\x80\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x04\x00\x00\x00\x00\x00\x04\x00\x00\x00\x18\xc4\x01\x02\x20\x00\x00\x0c\xe2\x00\x01\x10\x00\x00\x06\x71\x80\x00\x08\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x20\x00\x00\x00\xa0\xd6\x31\x40\x00\x00\x00\x50\xeb\x18\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x10\x00\x00\x00\x6a\x1d\x03\x04\x00\x00\x00\xb5\x8e\x01\x06\x00\x00\x00\x83\x38\x40\x00\x04\x00\x80\x41\x1c\x20\x00\x02\x00\xa0\xd6\xf1\x43\xf7\x1e\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x80\x41\x1c\x20\x00\x02\x00\xc0\x20\x0e\x10\x00\x01\x00\x00\x00\xe0\x85\x7b\x0f\x00\xa8\x75\xfc\xd0\xbd\x07\x00\xd4\x3a\x06\x08\x00\x00\x00\x0c\xe2\x00\x01\x10\x00\x00\x06\x71\x80\x00\x08\x00\x00\x00\x00\x20\x20\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x30\x88\x03\x04\x40\x00\x00\x00\x00\x78\xe1\xde\x03\x00\x00\x00\x3c\x70\xef\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x90\x00\x00\x00\x80\x41\x1c\x20\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x60\x10\x07\x08\x80\x00\x00\x30\x88\x03\x04\x40\x00\x00\x18\xc4\x01\x02\x20\x00\x00\x0c\xe2\x00\x01\x10\x00\x00\x06\x71\x80\x00\x08\x00\x00\x83\x38\x40\x00\x04\x00\x80\x41\x1c\x20\x00\x02\x00\xc0\x20\x0e\x10\x00\x01\x00\x60\x10\x07\x08\x80\x00\x00\x30\x88\x03\x04\x40\x00\x00\x18\xc4\x01\x02\x20\x00\x00\x0c\xe2\x00\x01\x10\x00\x00\x06\x71\x80\x00\x08\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\xf0\xc8\xbd\x07\x00\x00\x00\x00\x04\x00\x00\x00\x0c\xe2\x00\x01\x10\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x8f\xdc\x7b\x00\x00\x00\x80\x47\xee\x3d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x00\x00\x00\x00\x00\x00\x40\x00\x00\x00\x00\x00\x00\x90\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe0\x81\x7b\x0c\x00\x00\x00\xf0\xc0\x3d\x06\x00\x00\x00\x78\x20\x00\x03\x00\x00\x00\x3c\x10\x80\x01\x00\x00\x00\x1e\x08\xc0\x00\x00\x00\x00\x0f\x04\x60\x00\x00\x00\x80\x07\x02\x30\x00\x00\x00\xc0\x03\x01\x18\x00\x00\x00\x00\x00\x00\x0c\x00\x00\x00\x00\x00\x00\x06\x00\x00\x00\x00\x00\x00\x03\x00\x00\x00\x30\x10\x80\x01\x00\x00\x00\x18\x08\xc0\x00\x80\x5a\xc7\x00\x01\x00\x00\x00\x00\x80\x17\xee\x3d\x00\xc0\x20\x0e\x10\x00\x01\x00\x00\x00\x00\x04\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x78\xe1\xde\x03\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x80\x41\x1c\x20\x00\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3c\x72\xef\x01\x00\xb5\x8e\x01\x02\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Start","Func","FuncAssign","FuncAssignBlock","Stm","ReturnStm","StmBlock","Exp","ExpCall","ExpCallBlock","Type","int","num","id","main","for","if","else","string","text","return","while","bool","true","false","scan_int","print_int","print_str","'+'","'-'","'*'","'/'","','","';'","'('","')'","'{'","'}'","'%'","'!='","'=='","'='","'<='","'>='","'<'","'>'","'!'","'&&'","'||'","'++'","\"--\"","%eof"]
        bit_start = st Prelude.* 55
        bit_end = (st Prelude.+ 1) Prelude.* 55
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..54]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

happyActOffsets :: HappyAddr
happyActOffsets = HappyA# "\x03\x00\x03\x00\x00\x00\x02\x00\x10\x00\x00\x00\x00\x00\x01\x00\x00\x00\xef\xff\x09\x00\x2e\x00\x0d\x00\x0a\x00\x00\x00\xed\xff\x40\x00\x00\x00\x00\x00\x2e\x00\x24\x00\x77\x00\x00\x00\x00\x00\x41\x00\x45\x00\xe9\xff\x36\x00\x32\x00\x32\x00\x32\x00\x42\x00\x46\x00\x77\x00\x77\x00\x00\x00\x48\x00\x77\x00\x5c\x00\x32\x00\x32\x00\x0b\x00\x00\x00\x63\x00\x00\x00\x00\x00\x00\x00\x66\x00\x32\x00\x32\x00\x78\x00\x0b\x00\x77\x00\x32\x00\x32\x00\xf3\xff\x00\x00\x00\x00\x00\x00\x32\x00\x8f\x00\x30\x01\x00\x00\x5a\x00\x32\x00\x5e\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x32\x00\x00\x00\x00\x00\x00\x00\x6b\x00\xa6\x00\x55\x00\x32\x00\x00\x00\xbd\x00\xd4\x00\x00\x00\x73\x00\x00\x00\x00\x00\x69\x00\x79\x00\x70\x00\x00\x00\x00\x00\x47\x01\x47\x01\x5e\x01\x5e\x01\x5e\x01\x5e\x01\x5e\x01\x5e\x01\x6b\x00\x6b\x00\x6b\x00\x5d\x00\x5d\x00\x77\x00\xeb\x00\x32\x00\x80\x00\x00\x00\x02\x01\x00\x00\x00\x00\x00\x00\x32\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x01\x77\x00\x00\x00\x00\x00"#

happyGotoOffsets :: HappyAddr
happyGotoOffsets = HappyA# "\x18\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x3b\x00\x00\x00\x00\x00\x00\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x56\x00\x00\x00\x33\x00\x00\x00\x00\x00\xa4\x00\x00\x00\x00\x00\x00\x00\x95\x00\x9e\x00\xa0\x00\x00\x00\x00\x00\x4f\x00\x65\x00\x00\x00\x00\x00\x00\x01\x17\x01\xa3\x00\xac\x00\x45\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xb9\x00\xba\x00\x00\x00\x5c\x01\x73\x01\xb5\x00\xbe\x00\x00\x00\x00\x00\x00\x00\x00\x00\xc3\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd0\x00\x00\x00\xd1\x00\xd5\x00\xda\x00\xe3\x00\xe4\x00\xe5\x00\xe7\x00\xe8\x00\xec\x00\xf1\x00\xfa\x00\xfc\x00\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcc\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x7e\x01\x00\x00\x6d\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x08\x01\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x85\x01\x00\x00\x00\x00"#

happyAdjustOffset :: Happy_GHC_Exts.Int# -> Happy_GHC_Exts.Int#
happyAdjustOffset off = off

happyDefActions :: HappyAddr
happyDefActions = HappyA# "\x00\x00\x00\x00\xfe\xff\x00\x00\xca\xff\xc8\xff\xc9\xff\x00\x00\xfd\xff\x00\x00\x00\x00\xf8\xff\x00\x00\x00\x00\xf7\xff\x00\x00\x00\x00\xca\xff\xf9\xff\x00\x00\x00\x00\x00\x00\xe8\xff\xea\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xf6\xff\xea\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xe6\xff\xe5\xff\xe2\xff\xe4\xff\xe3\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xcd\xff\x00\x00\x00\x00\xe7\xff\xfa\xff\xf4\xff\x00\x00\x00\x00\xce\xff\xcc\xff\x00\x00\x00\x00\xf2\xff\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\xd3\xff\xd2\xff\xe9\xff\xd1\xff\x00\x00\x00\x00\xcd\xff\xf0\xff\x00\x00\x00\x00\xee\xff\xea\xff\xfb\xff\xfc\xff\x00\x00\x00\x00\x00\x00\xcf\xff\xe1\xff\xd4\xff\xd5\xff\xd8\xff\xd9\xff\xda\xff\xdb\xff\xd7\xff\xd6\xff\xdc\xff\xdd\xff\xde\xff\xdf\xff\xe0\xff\x00\x00\x00\x00\x00\x00\x00\x00\xf5\xff\x00\x00\xf3\xff\xed\xff\xcb\xff\x00\x00\xf1\xff\xd0\xff\xec\xff\xeb\xff\x00\x00\x00\x00\xef\xff"#

happyCheck :: HappyAddr
happyCheck = HappyA# "\xff\xff\x18\x00\x01\x00\x16\x00\x01\x00\x03\x00\x19\x00\x18\x00\x1f\x00\x08\x00\x17\x00\x08\x00\x01\x00\x0c\x00\x03\x00\x0c\x00\x05\x00\x06\x00\x1f\x00\x08\x00\x04\x00\x0a\x00\x0b\x00\x0c\x00\x00\x00\x01\x00\x01\x00\x10\x00\x11\x00\x12\x00\x13\x00\x14\x00\x15\x00\x18\x00\x0a\x00\x0a\x00\x1a\x00\x1a\x00\x19\x00\x1c\x00\x1d\x00\x1e\x00\x29\x00\x20\x00\x21\x00\x22\x00\x23\x00\x01\x00\x25\x00\x26\x00\x27\x00\x28\x00\x02\x00\x03\x00\x08\x00\x04\x00\x05\x00\x06\x00\x0c\x00\x09\x00\x01\x00\x0a\x00\x1a\x00\x0d\x00\x0e\x00\x0f\x00\x01\x00\x03\x00\x03\x00\x0a\x00\x05\x00\x06\x00\x03\x00\x08\x00\x18\x00\x0a\x00\x0b\x00\x0c\x00\x18\x00\x02\x00\x03\x00\x10\x00\x11\x00\x04\x00\x05\x00\x06\x00\x24\x00\x0a\x00\x02\x00\x0a\x00\x18\x00\x1a\x00\x1b\x00\x01\x00\x18\x00\x03\x00\x0a\x00\x05\x00\x06\x00\x1b\x00\x08\x00\x07\x00\x0a\x00\x0b\x00\x0c\x00\x04\x00\x05\x00\x06\x00\x10\x00\x11\x00\x19\x00\x0a\x00\x16\x00\x14\x00\x15\x00\x19\x00\x07\x00\x08\x00\x1a\x00\x1b\x00\x01\x00\x1c\x00\x03\x00\x18\x00\x05\x00\x06\x00\x18\x00\x08\x00\x17\x00\x0a\x00\x0b\x00\x0c\x00\x27\x00\x28\x00\x16\x00\x10\x00\x11\x00\x19\x00\x12\x00\x13\x00\x14\x00\x15\x00\x1b\x00\x17\x00\x17\x00\x1a\x00\x27\x00\x28\x00\x1c\x00\x1d\x00\x1e\x00\x17\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\x07\x00\x17\x00\x07\x00\x04\x00\x05\x00\x07\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\x07\x00\x08\x00\x09\x00\x19\x00\x07\x00\x07\x00\x1c\x00\x1d\x00\x1e\x00\x07\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\x07\x00\x08\x00\x09\x00\x19\x00\x07\x00\x07\x00\x1c\x00\x1d\x00\x1e\x00\x07\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\x07\x00\x07\x00\x07\x00\x19\x00\x07\x00\x07\x00\x1c\x00\x1d\x00\x1e\x00\x07\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\x07\x00\x17\x00\x07\x00\x04\x00\x05\x00\x07\x00\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\x07\x00\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\x17\x00\xff\xff\x04\x00\x05\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x19\x00\xff\xff\xff\xff\x1c\x00\x1d\x00\x1e\x00\xff\xff\x20\x00\x21\x00\x22\x00\x23\x00\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x04\x00\x05\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\xff\xff\x25\x00\x26\x00\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x04\x00\x05\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\xff\xff\xff\xff\xff\xff\x27\x00\x28\x00\x12\x00\x13\x00\x14\x00\x15\x00\xff\xff\xff\xff\xff\xff\x04\x00\x05\x00\xff\xff\x1c\x00\x1d\x00\x1e\x00\x0a\x00\x20\x00\x21\x00\x22\x00\x23\x00\x04\x00\x05\x00\xff\xff\x27\x00\x28\x00\xff\xff\x0a\x00\x04\x00\x05\x00\xff\xff\xff\xff\xff\xff\xff\xff\x0a\x00\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff"#

happyTable :: HappyAddr
happyTable = HappyA# "\x00\x00\x36\x00\x05\x00\x14\x00\x05\x00\x0b\x00\x15\x00\x0d\x00\x37\x00\x06\x00\x3b\x00\x06\x00\x12\x00\x07\x00\x1b\x00\x07\x00\x1c\x00\x1d\x00\x3c\x00\x06\x00\x0a\x00\x1e\x00\x1f\x00\x07\x00\x07\x00\x02\x00\x02\x00\x20\x00\x21\x00\x43\x00\x44\x00\x45\x00\x46\x00\x0c\x00\x03\x00\x03\x00\x16\x00\x22\x00\x0e\x00\x47\x00\x48\x00\x49\x00\xff\xff\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x12\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x2b\x00\x2c\x00\x06\x00\x16\x00\x17\x00\x18\x00\x07\x00\x2d\x00\x08\x00\x19\x00\x23\x00\x2e\x00\x2f\x00\x30\x00\x12\x00\x13\x00\x1b\x00\x03\x00\x1c\x00\x1d\x00\x38\x00\x06\x00\x31\x00\x1e\x00\x1f\x00\x07\x00\x35\x00\x0e\x00\x0f\x00\x20\x00\x21\x00\x16\x00\x17\x00\x26\x00\x32\x00\x10\x00\x23\x00\x19\x00\x29\x00\x22\x00\x3a\x00\x12\x00\x28\x00\x1b\x00\x10\x00\x1c\x00\x1d\x00\x5c\x00\x06\x00\x70\x00\x1e\x00\x1f\x00\x07\x00\x16\x00\x24\x00\x25\x00\x20\x00\x21\x00\x61\x00\x19\x00\x72\x00\x45\x00\x46\x00\x73\x00\x3d\x00\x77\x00\x22\x00\x5a\x00\x12\x00\x47\x00\x1b\x00\x56\x00\x1c\x00\x1d\x00\x55\x00\x06\x00\x7d\x00\x1e\x00\x1f\x00\x07\x00\x50\x00\x51\x00\x72\x00\x20\x00\x21\x00\x7b\x00\x43\x00\x44\x00\x45\x00\x46\x00\x5d\x00\x52\x00\x7c\x00\x22\x00\x50\x00\x51\x00\x47\x00\x48\x00\x49\x00\x77\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x33\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x32\x00\x74\x00\x29\x00\x38\x00\x17\x00\x58\x00\x47\x00\x48\x00\x49\x00\x19\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x57\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x3d\x00\x3e\x00\x3f\x00\x62\x00\x53\x00\x52\x00\x47\x00\x48\x00\x49\x00\x3c\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x74\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x3d\x00\x3e\x00\x5f\x00\x5f\x00\x70\x00\x6e\x00\x47\x00\x48\x00\x49\x00\x6d\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x6c\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x6b\x00\x6a\x00\x69\x00\x5e\x00\x68\x00\x67\x00\x47\x00\x48\x00\x49\x00\x66\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x65\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x64\x00\x79\x00\x63\x00\x38\x00\x5a\x00\x62\x00\x47\x00\x48\x00\x49\x00\x19\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x7d\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x00\x00\x76\x00\x00\x00\x38\x00\x17\x00\x00\x00\x47\x00\x48\x00\x49\x00\x19\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x00\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x7f\x00\x00\x00\x00\x00\x47\x00\x48\x00\x49\x00\x00\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x00\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x56\x00\x17\x00\x00\x00\x47\x00\x48\x00\x49\x00\x19\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x00\x00\x4e\x00\x4f\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x41\x00\x17\x00\x00\x00\x47\x00\x48\x00\x49\x00\x19\x00\x4a\x00\x4b\x00\x4c\x00\x4d\x00\x00\x00\x00\x00\x00\x00\x50\x00\x51\x00\x43\x00\x44\x00\x45\x00\x46\x00\x00\x00\x00\x00\x00\x00\x40\x00\x17\x00\x00\x00\x47\x00\x00\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x79\x00\x17\x00\x00\x00\x50\x00\x51\x00\x00\x00\x19\x00\x7f\x00\x17\x00\x00\x00\x00\x00\x00\x00\x00\x00\x19\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00"#

happyReduceArr = Happy_Data_Array.array (1, 55) [
	(1 , happyReduce_1),
	(2 , happyReduce_2),
	(3 , happyReduce_3),
	(4 , happyReduce_4),
	(5 , happyReduce_5),
	(6 , happyReduce_6),
	(7 , happyReduce_7),
	(8 , happyReduce_8),
	(9 , happyReduce_9),
	(10 , happyReduce_10),
	(11 , happyReduce_11),
	(12 , happyReduce_12),
	(13 , happyReduce_13),
	(14 , happyReduce_14),
	(15 , happyReduce_15),
	(16 , happyReduce_16),
	(17 , happyReduce_17),
	(18 , happyReduce_18),
	(19 , happyReduce_19),
	(20 , happyReduce_20),
	(21 , happyReduce_21),
	(22 , happyReduce_22),
	(23 , happyReduce_23),
	(24 , happyReduce_24),
	(25 , happyReduce_25),
	(26 , happyReduce_26),
	(27 , happyReduce_27),
	(28 , happyReduce_28),
	(29 , happyReduce_29),
	(30 , happyReduce_30),
	(31 , happyReduce_31),
	(32 , happyReduce_32),
	(33 , happyReduce_33),
	(34 , happyReduce_34),
	(35 , happyReduce_35),
	(36 , happyReduce_36),
	(37 , happyReduce_37),
	(38 , happyReduce_38),
	(39 , happyReduce_39),
	(40 , happyReduce_40),
	(41 , happyReduce_41),
	(42 , happyReduce_42),
	(43 , happyReduce_43),
	(44 , happyReduce_44),
	(45 , happyReduce_45),
	(46 , happyReduce_46),
	(47 , happyReduce_47),
	(48 , happyReduce_48),
	(49 , happyReduce_49),
	(50 , happyReduce_50),
	(51 , happyReduce_51),
	(52 , happyReduce_52),
	(53 , happyReduce_53),
	(54 , happyReduce_54),
	(55 , happyReduce_55)
	]

happy_n_terms = 42 :: Prelude.Int
happy_n_nonterms = 11 :: Prelude.Int

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_1 = happySpecReduce_1  0# happyReduction_1
happyReduction_1 happy_x_1
	 =  case happyOut5 happy_x_1 of { happy_var_1 -> 
	happyIn4
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_2 = happySpecReduce_2  0# happyReduction_2
happyReduction_2 happy_x_2
	happy_x_1
	 =  case happyOut4 happy_x_1 of { happy_var_1 -> 
	case happyOut5 happy_x_2 of { happy_var_2 -> 
	happyIn4
		 (happy_var_1 ++ [happy_var_2]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_3 = happyReduce 9# 1# happyReduction_3
happyReduction_3 (happy_x_9 `HappyStk`
	happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (TOK_ID happy_var_2) -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	case happyOut10 happy_x_7 of { happy_var_7 -> 
	case happyOut9 happy_x_8 of { happy_var_8 -> 
	happyIn5
		 (InitFunc happy_var_1 happy_var_2 happy_var_4 happy_var_7 happy_var_8
	) `HappyStk` happyRest}}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_4 = happyReduce 8# 1# happyReduction_4
happyReduction_4 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (TOK_ID happy_var_2) -> 
	case happyOut7 happy_x_4 of { happy_var_4 -> 
	case happyOut9 happy_x_7 of { happy_var_7 -> 
	happyIn5
		 (InitFuncE happy_var_1 happy_var_2 happy_var_4 happy_var_7
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_5 = happyReduce 7# 1# happyReduction_5
happyReduction_5 (happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut10 happy_x_6 of { happy_var_6 -> 
	happyIn5
		 (MainFunc happy_var_6
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_6 = happySpecReduce_2  2# happyReduction_6
happyReduction_6 happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (TOK_ID happy_var_2) -> 
	happyIn6
		 (FuncAssign happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_7 = happySpecReduce_0  3# happyReduction_7
happyReduction_7  =  happyIn7
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_8 = happySpecReduce_1  3# happyReduction_8
happyReduction_8 happy_x_1
	 =  case happyOut6 happy_x_1 of { happy_var_1 -> 
	happyIn7
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_9 = happySpecReduce_3  3# happyReduction_9
happyReduction_9 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut7 happy_x_1 of { happy_var_1 -> 
	case happyOut6 happy_x_3 of { happy_var_3 -> 
	happyIn7
		 (happy_var_1 ++ [happy_var_3]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_10 = happyReduce 4# 4# happyReduction_10
happyReduction_10 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (TOK_ID happy_var_1) -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (Assign happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_11 = happySpecReduce_3  4# happyReduction_11
happyReduction_11 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (TOK_ID happy_var_2) -> 
	happyIn8
		 (Init happy_var_1 happy_var_2
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_12 = happyReduce 5# 4# happyReduction_12
happyReduction_12 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut14 happy_x_1 of { happy_var_1 -> 
	case happyOutTok happy_x_2 of { (TOK_ID happy_var_2) -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	happyIn8
		 (InitAssign happy_var_1 happy_var_2 happy_var_4
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_13 = happySpecReduce_3  4# happyReduction_13
happyReduction_13 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (If happy_var_2 happy_var_3 Skip
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_14 = happyReduce 5# 4# happyReduction_14
happyReduction_14 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	case happyOut8 happy_x_5 of { happy_var_5 -> 
	happyIn8
		 (If happy_var_2 happy_var_3 happy_var_5
	) `HappyStk` happyRest}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_15 = happySpecReduce_3  4# happyReduction_15
happyReduction_15 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	case happyOut8 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (While happy_var_2 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_16 = happyReduce 8# 4# happyReduction_16
happyReduction_16 (happy_x_8 `HappyStk`
	happy_x_7 `HappyStk`
	happy_x_6 `HappyStk`
	happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut8 happy_x_3 of { happy_var_3 -> 
	case happyOut11 happy_x_4 of { happy_var_4 -> 
	case happyOut11 happy_x_6 of { happy_var_6 -> 
	case happyOut8 happy_x_8 of { happy_var_8 -> 
	happyIn8
		 (For happy_var_3 happy_var_4 happy_var_6 happy_var_8
	) `HappyStk` happyRest}}}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_17 = happySpecReduce_3  4# happyReduction_17
happyReduction_17 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_2 of { happy_var_2 -> 
	happyIn8
		 (Block happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_18 = happyReduce 5# 4# happyReduction_18
happyReduction_18 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (TOK_ID happy_var_1) -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (FuncCallStm happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_19 = happyReduce 5# 4# happyReduction_19
happyReduction_19 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (PrintInt happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_20 = happyReduce 5# 4# happyReduction_20
happyReduction_20 (happy_x_5 `HappyStk`
	happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn8
		 (PrintStr happy_var_3
	) `HappyStk` happyRest}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_21 = happySpecReduce_1  4# happyReduction_21
happyReduction_21 happy_x_1
	 =  case happyOut9 happy_x_1 of { happy_var_1 -> 
	happyIn8
		 (Return happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_22 = happySpecReduce_3  5# happyReduction_22
happyReduction_22 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn9
		 (ReturnExp happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_23 = happySpecReduce_1  6# happyReduction_23
happyReduction_23 happy_x_1
	 =  case happyOut8 happy_x_1 of { happy_var_1 -> 
	happyIn10
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_24 = happySpecReduce_2  6# happyReduction_24
happyReduction_24 happy_x_2
	happy_x_1
	 =  case happyOut10 happy_x_1 of { happy_var_1 -> 
	case happyOut8 happy_x_2 of { happy_var_2 -> 
	happyIn10
		 (happy_var_1 ++ [happy_var_2]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_25 = happySpecReduce_1  7# happyReduction_25
happyReduction_25 happy_x_1
	 =  case happyOutTok happy_x_1 of { (TOK_NUM happy_var_1) -> 
	happyIn11
		 (Num happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_26 = happySpecReduce_1  7# happyReduction_26
happyReduction_26 happy_x_1
	 =  case happyOutTok happy_x_1 of { (TOK_ID happy_var_1) -> 
	happyIn11
		 (Var happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_27 = happySpecReduce_1  7# happyReduction_27
happyReduction_27 happy_x_1
	 =  case happyOutTok happy_x_1 of { (TOK_BOOL happy_var_1) -> 
	happyIn11
		 (Boolean happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_28 = happySpecReduce_1  7# happyReduction_28
happyReduction_28 happy_x_1
	 =  case happyOutTok happy_x_1 of { (TOK_BOOL happy_var_1) -> 
	happyIn11
		 (Boolean happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_29 = happySpecReduce_1  7# happyReduction_29
happyReduction_29 happy_x_1
	 =  case happyOutTok happy_x_1 of { (TOK_TEXT happy_var_1) -> 
	happyIn11
		 (Text happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_30 = happySpecReduce_3  7# happyReduction_30
happyReduction_30 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn11
		 (happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_31 = happySpecReduce_3  7# happyReduction_31
happyReduction_31 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Add happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_32 = happySpecReduce_3  7# happyReduction_32
happyReduction_32 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Minus happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_33 = happySpecReduce_3  7# happyReduction_33
happyReduction_33 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Mult happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_34 = happySpecReduce_3  7# happyReduction_34
happyReduction_34 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Div happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_35 = happySpecReduce_3  7# happyReduction_35
happyReduction_35 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Mod happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_36 = happySpecReduce_3  7# happyReduction_36
happyReduction_36 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Less_Equal happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_37 = happySpecReduce_3  7# happyReduction_37
happyReduction_37 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Greater_Equal happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_38 = happySpecReduce_3  7# happyReduction_38
happyReduction_38 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Less_Than happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_39 = happySpecReduce_3  7# happyReduction_39
happyReduction_39 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Greater_Than happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_40 = happySpecReduce_3  7# happyReduction_40
happyReduction_40 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Equals_Equals happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_41 = happySpecReduce_3  7# happyReduction_41
happyReduction_41 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Not_Equal happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_42 = happySpecReduce_3  7# happyReduction_42
happyReduction_42 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op And happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_43 = happySpecReduce_3  7# happyReduction_43
happyReduction_43 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	case happyOut11 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (Op Or happy_var_1 happy_var_3
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_44 = happySpecReduce_2  7# happyReduction_44
happyReduction_44 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (Plus_Plus happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_45 = happySpecReduce_2  7# happyReduction_45
happyReduction_45 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn11
		 (Minus_Minus happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_46 = happySpecReduce_2  7# happyReduction_46
happyReduction_46 happy_x_2
	happy_x_1
	 =  case happyOut11 happy_x_2 of { happy_var_2 -> 
	happyIn11
		 (Not happy_var_2
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_47 = happyReduce 4# 7# happyReduction_47
happyReduction_47 (happy_x_4 `HappyStk`
	happy_x_3 `HappyStk`
	happy_x_2 `HappyStk`
	happy_x_1 `HappyStk`
	happyRest)
	 = case happyOutTok happy_x_1 of { (TOK_ID happy_var_1) -> 
	case happyOut13 happy_x_3 of { happy_var_3 -> 
	happyIn11
		 (FuncCall happy_var_1 happy_var_3
	) `HappyStk` happyRest}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_48 = happySpecReduce_3  7# happyReduction_48
happyReduction_48 happy_x_3
	happy_x_2
	happy_x_1
	 =  happyIn11
		 (Scan
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_49 = happySpecReduce_1  8# happyReduction_49
happyReduction_49 happy_x_1
	 =  case happyOut11 happy_x_1 of { happy_var_1 -> 
	happyIn12
		 (ExpSend happy_var_1
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_50 = happySpecReduce_0  9# happyReduction_50
happyReduction_50  =  happyIn13
		 ([]
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_51 = happySpecReduce_1  9# happyReduction_51
happyReduction_51 happy_x_1
	 =  case happyOut12 happy_x_1 of { happy_var_1 -> 
	happyIn13
		 ([happy_var_1]
	)}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_52 = happySpecReduce_3  9# happyReduction_52
happyReduction_52 happy_x_3
	happy_x_2
	happy_x_1
	 =  case happyOut13 happy_x_1 of { happy_var_1 -> 
	case happyOut12 happy_x_3 of { happy_var_3 -> 
	happyIn13
		 (happy_var_1 ++ [happy_var_3]
	)}}

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_53 = happySpecReduce_1  10# happyReduction_53
happyReduction_53 happy_x_1
	 =  happyIn14
		 (Type_Int
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_54 = happySpecReduce_1  10# happyReduction_54
happyReduction_54 happy_x_1
	 =  happyIn14
		 (Type_Bool
	)

#if __GLASGOW_HASKELL__ >= 710
#endif
happyReduce_55 = happySpecReduce_1  10# happyReduction_55
happyReduction_55 happy_x_1
	 =  happyIn14
		 (Type_String
	)

happyNewToken action sts stk [] =
	happyDoAction 41# notHappyAtAll action sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = happyDoAction i tk action sts stk tks in
	case tk of {
	TOK_INT -> cont 1#;
	TOK_NUM happy_dollar_dollar -> cont 2#;
	TOK_ID happy_dollar_dollar -> cont 3#;
	TOK_MAIN_FUNC -> cont 4#;
	TOK_FOR -> cont 5#;
	TOK_IF -> cont 6#;
	TOK_ELSE -> cont 7#;
	TOK_STRING -> cont 8#;
	TOK_TEXT happy_dollar_dollar -> cont 9#;
	TOK_RETURN -> cont 10#;
	TOK_WHILE -> cont 11#;
	TOK_BOOLEAN -> cont 12#;
	TOK_BOOL happy_dollar_dollar -> cont 13#;
	TOK_BOOL happy_dollar_dollar -> cont 14#;
	TOK_SCAN_INT -> cont 15#;
	TOK_PRINT_INT -> cont 16#;
	TOK_PRINT_STR -> cont 17#;
	TOK_PLUS -> cont 18#;
	TOK_MINUS -> cont 19#;
	TOK_MULT -> cont 20#;
	TOK_DIV -> cont 21#;
	TOK_COMMA -> cont 22#;
	TOK_SEMICOLON -> cont 23#;
	TOK_LPAREN -> cont 24#;
	TOK_RPAREN -> cont 25#;
	TOK_LBRACE -> cont 26#;
	TOK_RBRACE -> cont 27#;
	TOK_MOD -> cont 28#;
	TOK_NOT_EQUAL -> cont 29#;
	TOK_EQUALS_EQUALS -> cont 30#;
	TOK_EQUALS -> cont 31#;
	TOK_LESS_OR_EQUAL -> cont 32#;
	TOK_GREATER_OR_EQUAL -> cont 33#;
	TOK_LESS_THAN -> cont 34#;
	TOK_GREATER_THAN -> cont 35#;
	TOK_NOT -> cont 36#;
	TOK_AND -> cont 37#;
	TOK_OR -> cont 38#;
	TOK_PLUS_PLUS -> cont 39#;
	TOK_MINUS_MINUS -> cont 40#;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 41# tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parseError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse 0# tks) (\x -> happyReturn (let {x' = happyOut4 x} in x'))

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
         | Op BinOp Exp Exp
         | FuncCall String [ExpCall]
         | Scan
         | Not Exp
         | Plus_Plus Exp
         | Minus_Minus Exp
         deriving Show

data BinOp = Add 
           | Minus 
           | Times
           | Mult
           | Div
           | Mod
           | Less_Equal
           | Greater_Equal 
           | Less_Than 
           | Greater_Than 
           | Equals_Equals 
           | Not_Equal 
           | And 
           | Or 
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
         | For Stm Exp Exp Stm
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
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $













-- Do not remove this comment. Required to fix CPP parsing when using GCC and a clang-compiled alex.
#if __GLASGOW_HASKELL__ > 706
#define LT(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.<# m)) :: Prelude.Bool)
#define GTE(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.>=# m)) :: Prelude.Bool)
#define EQ(n,m) ((Happy_GHC_Exts.tagToEnum# (n Happy_GHC_Exts.==# m)) :: Prelude.Bool)
#else
#define LT(n,m) (n Happy_GHC_Exts.<# m)
#define GTE(n,m) (n Happy_GHC_Exts.>=# m)
#define EQ(n,m) (n Happy_GHC_Exts.==# m)
#endif



















data Happy_IntList = HappyCons Happy_GHC_Exts.Int# Happy_IntList








































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
happyAccept 0# tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
        (happyTcHack j (happyTcHack st)) (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action



happyDoAction i tk st
        = {- nothing -}
          case action of
                0#           -> {- nothing -}
                                     happyFail (happyExpListPerState ((Happy_GHC_Exts.I# (st)) :: Prelude.Int)) i tk st
                -1#          -> {- nothing -}
                                     happyAccept i tk st
                n | LT(n,(0# :: Happy_GHC_Exts.Int#)) -> {- nothing -}
                                                   (happyReduceArr Happy_Data_Array.! rule) i tk st
                                                   where rule = (Happy_GHC_Exts.I# ((Happy_GHC_Exts.negateInt# ((n Happy_GHC_Exts.+# (1# :: Happy_GHC_Exts.Int#))))))
                n                 -> {- nothing -}
                                     happyShift new_state i tk st
                                     where new_state = (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#))
   where off    = happyAdjustOffset (indexShortOffAddr happyActOffsets st)
         off_i  = (off Happy_GHC_Exts.+# i)
         check  = if GTE(off_i,(0# :: Happy_GHC_Exts.Int#))
                  then EQ(indexShortOffAddr happyCheck off_i, i)
                  else Prelude.False
         action
          | check     = indexShortOffAddr happyTable off_i
          | Prelude.otherwise = indexShortOffAddr happyDefActions st




indexShortOffAddr (HappyA# arr) off =
        Happy_GHC_Exts.narrow16Int# i
  where
        i = Happy_GHC_Exts.word2Int# (Happy_GHC_Exts.or# (Happy_GHC_Exts.uncheckedShiftL# high 8#) low)
        high = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr (off' Happy_GHC_Exts.+# 1#)))
        low  = Happy_GHC_Exts.int2Word# (Happy_GHC_Exts.ord# (Happy_GHC_Exts.indexCharOffAddr# arr off'))
        off' = off Happy_GHC_Exts.*# 2#




{-# INLINE happyLt #-}
happyLt x y = LT(x,y)


readArrayBit arr bit =
    Bits.testBit (Happy_GHC_Exts.I# (indexShortOffAddr arr ((unbox_int bit) `Happy_GHC_Exts.iShiftRA#` 4#))) (bit `Prelude.mod` 16)
  where unbox_int (Happy_GHC_Exts.I# x) = x






data HappyAddr = HappyA# Happy_GHC_Exts.Addr#


-----------------------------------------------------------------------------
-- HappyState data type (not arrays)













-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state 0# tk st sts stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
--     trace "shifting the error token" $
     happyDoAction i tk new_state (HappyCons (st) (sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state (HappyCons (st) (sts)) ((happyInTok (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_0 nt fn j tk st@((action)) sts stk
     = happyGoto nt j tk st (HappyCons (st) (sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@((HappyCons (st@(action)) (_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_2 nt fn j tk _ (HappyCons (_) (sts@((HappyCons (st@(action)) (_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happySpecReduce_3 nt fn j tk _ (HappyCons (_) ((HappyCons (_) (sts@((HappyCons (st@(action)) (_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (happyGoto nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) sts of
         sts1@((HappyCons (st1@(action)) (_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (happyGoto nt j tk st1 sts1 r)

happyMonadReduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> happyGoto nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn 0# tk st sts stk
     = happyFail [] 0# tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k (HappyCons (st) (sts)) of
        sts1@((HappyCons (st1@(action)) (_))) ->
         let drop_stk = happyDropStk k stk

             off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st1)
             off_i = (off Happy_GHC_Exts.+# nt)
             new_state = indexShortOffAddr happyTable off_i




          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop 0# l = l
happyDrop n (HappyCons (_) (t)) = happyDrop (n Happy_GHC_Exts.-# (1# :: Happy_GHC_Exts.Int#)) t

happyDropStk 0# l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Happy_GHC_Exts.-# (1#::Happy_GHC_Exts.Int#)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction


happyGoto nt j tk st = 
   {- nothing -}
   happyDoAction j tk new_state
   where off = happyAdjustOffset (indexShortOffAddr happyGotoOffsets st)
         off_i = (off Happy_GHC_Exts.+# nt)
         new_state = indexShortOffAddr happyTable off_i




-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist 0# tk old_st _ stk@(x `HappyStk` _) =
     let i = (case Happy_GHC_Exts.unsafeCoerce# x of { (Happy_GHC_Exts.I# (i)) -> i }) in
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
happyFail explist i tk (action) sts stk =
--      trace "entering error recovery" $
        happyDoAction 0# tk action sts ((Happy_GHC_Exts.unsafeCoerce# (Happy_GHC_Exts.I# (i))) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions


happyTcHack :: Happy_GHC_Exts.Int# -> a -> a
happyTcHack x y = y
{-# INLINE happyTcHack #-}


-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.


{-# NOINLINE happyDoAction #-}
{-# NOINLINE happyTable #-}
{-# NOINLINE happyCheck #-}
{-# NOINLINE happyActOffsets #-}
{-# NOINLINE happyGotoOffsets #-}
{-# NOINLINE happyDefActions #-}

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
