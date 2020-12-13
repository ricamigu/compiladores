
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
transExp (Num n) tabl dest = return [MOVEI dest n]
transExp (Var x) tabl dest
   = do temp <- newTemp
        return [MOVE dest temp]

transExp (Op op e1 e2) tabl dest
   = do t1 <- newTemp
        t2 <- newTemp
        code1 <- transExp e1 tabl t1
        code2 <- transExp e2 tabl t2
        return (code1 ++ code2 ++ [OP op dest t1 t2])


transCond :: Exp -> Table -> Label -> Label -> State Count [Instr]
transCond (Op cond e1 e2) tabl labelt labelf
        = do t1     <- newTemp
             t2     <- newTemp 
             code1  <- transExp e1 tabl t1
             code2  <- transExp e2 tabl t2
             return (code1 ++ code2 ++ [COND t1 cond t2 labelt labelf])


transStm :: Stm -> Table -> State Count [Instr]
transStm (Assign var expr) tabl
       = case Map.lookup var tabl of
           Nothing -> error "undefined variable"
           Just dest -> do temp <- newTemp
                           code <- transExp expr tabl temp
                           return (code ++ [MOVE dest temp])
--transStm tabl (x:xs)
--       = do code <- transStm tabl x ++ transStm tabl xs
--            return code

--COND Temp BinOp Temp Label Label
--transStm  :: Table -> Stm -> State Count [Instr]




{-
transStm tabl (If cond stm Skip)
       = do ltrue  <- newLabel
            lfalse <- newLabel
            code0  <- transCond tabl cond ltrue lfalse
            code1  <- transStm tabl stm
            return (code0 ++ [LABEL ltrue] ++ code1 ++ [LABEL lfalse])

trasnsStm tabl (If cond stm1 stm2)
       = do ltrue  <- newLabel
            lfalse <- newLabel
            lend   <- newLabel
            code0  <- transCond tabl cond ltrue lfalse
            code1  <- transStm tabl stm1
            code2  <- transStm tabl stm2
            return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend,LABEL lfalse] ++ code2 ++ [LABEL lend])


--COND Temp BinOp Temp Label Label
--transStm  :: Table -> Stm -> State Count [Instr]
transCond :: Table -> Temp -> Exp -> Temp -> Label -> Label -> State Count [Instr]
transCond tabl (Op cond e1 e2) 
transCond tabl (Op cond e1 e2) label1 label2
        = do ltrue  <- newLabel
             lfalse <- newLabel
             t1     <- newTemp
             t2     <- newTemp 
             code1  <- 

-}