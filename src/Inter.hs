
module Inter where

import Parser
import Lexer
import Control.Monad.State
import qualified Data.Map as Map
import Data.Map (Map)


data Instr = MOVE Temp Temp                        -- temp1 := temp2
           | MOVEI Temp Int                        -- temp1 := num
           | OP BinOp Temp Temp Temp               -- temp1 := temp2 op temp3
           | OPI BinOp Temp Temp Int               -- temp1 := temp2 op num
           | LABEL Label
           | JUMP Label
           | COND Temp BinOp Temp Label Label
           deriving Show

{-
data BinOp = OpAdd 
           | OpMinus 
           | OpTimes 
           | OpDiv
           | OpMod
           | OpLess_Equal
           | OpGreater_Equal 
           | OpLess_Than 
           | OpGreater_Than 
           | OpEquals_Equals 
           | OpNot_Equal 
           | OpAnd 
           | OpOr 
           | OpPlus_Plus 
           | OpMinus_Minus
           deriving Show
-}

type Temp = String
type Label = String
type Table = Map String String
type Count = (Int,Int) -- contadores temporarios e labels


{-
newTemp :: Count -> (Temp,Count)
newTemp (temps,labels) = ("t"++show temps, (temps+1,labels))

newLabel :: Count -> (Label, Count)
newLabel (temps, labels) = ("L"++show labels, (temps, labels+1))
-}

newTemp :: State Count Temp
newTemp = do(temps,labels)<-get
            put (temps+1,labels)
            return ("t"++show temps)

newLabel :: State Count Label
newLabel = do(temps,labels)<-get
             put (temps,labels+1)
             return ("L"++show labels)

transExp :: Exp -> Table -> Temp -> State Count [Instr]
transExp (Num n) table dest = return [MOVEI dest n]
transExp (Op op e1 e2) table dest
   = do t1 <- newTemp
        t2 <- newTemp
        code1 <- transExp e1 table t1
        code2 <- transExp e2 table t2
        return (code1 ++ code2 ++ [OP op dest t1 t2])


transExp1 :: Table -> Exp -> String -> State Count [Instr]
transExp1 tabl (Var x) dest
    = case Map.lookup x tabl of
        Just temp -> return [MOVE dest temp]
        Nothing -> error "invalid variable"

