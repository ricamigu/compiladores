
module Inter where

import Parser
import Lexer
import Control.Monad.State
import qualified Data.Map as Map
import Data.Map (Map)


data Instr = MOVE Temp Temp                        -- temp1 := temp2
           | MOVEI Temp Int                        -- temp1 := num
           | MOVEB Temp Bool                       -- temp1 := bool ?
           | MOVES Temp String
           | OP BinOp Temp Temp Temp               -- temp1 := temp2 op temp3
           | OPI BinOp Temp Temp Int               -- temp1 := temp2 op num
           | LABEL Label
           | JUMP Label
           | COND Temp BinOp Temp Label Label
           | SCAN
           | PRINTI Temp
           | PRINTS Temp
           | RETURN Temp
           deriving Show


type Temp = String
type Label = String
type Table = Map String String
type Count = (Int,Int) -- contadores temporarios e labels


-- criar novo temporario
newTemp :: State Count Temp 
newTemp = do(temps,labels)<-get
            put (temps+1,labels)
            return ("t"++show temps)

-- criar novo label
newLabel :: State Count Label
newLabel = do(temps,labels)<-get
             put (temps,labels+1)
             return ("L"++show labels)


transExp :: Exp -> Table -> Temp -> State Count [Instr]
transExp (Num n) tabl dest     = return [MOVEI dest n]    -- int
transExp (Boolean b) tabl dest = return [MOVEB dest b]    -- bool
transExp (Text s) tabl dest    = return [MOVES dest s]    -- strings
transExp (Var x) tabl dest                                -- var 
   = do temp <- newTemp
        return [MOVE dest temp]

transExp (Op op e1 e2) tabl dest                          -- operações
   = do t1 <- newTemp
        t2 <- newTemp
        code1 <- transExp e1 tabl t1
        code2 <- transExp e2 tabl t2
        return (code1 ++ code2 ++ [OP op dest t1 t2])

transExp (Scan) tabl dest = return [SCAN]
        

transCond :: Exp -> Table -> Label -> Label -> State Count [Instr]
transCond (cond) tabl labelt labelf = case cond of
          (Op op e1 e2)  -> do t1 <- newTemp
                               t2 <- newTemp
                               code1 <- transExp e1 tabl t1
                               code2 <- transExp e2 tabl t2
                               return (code1  ++ code2 ++ [COND t1 op t2 labelt labelf])
          (Boolean True) -> return [JUMP labelt]
          (Boolean False)-> return [JUMP labelf]
          (Not cond)     -> do code <- transCond cond tabl labelf labelt
                               return (code)


{-
transCond (Op cond e1 e2) tabl labelt labelf
        = do t1     <- newTemp
             t2     <- newTemp 
             code1  <- transExp e1 tabl t1
             code2  <- transExp e2 tabl t2
             return (code1 ++ code2 ++ [COND t1 cond t2 labelt labelf])
-}
--transCond (Not cond) tabl labelt labelf

transStm :: Stm -> Table -> State Count [Instr]
transStm (Assign x expr) tabl
       = case Map.lookup x tabl of
           Nothing -> error "undefined variable"
           Just dest -> do temp <- newTemp
                           code <- transExp expr tabl temp
                           return (code ++ [MOVE dest temp])

transStm (Init tp x) tabl
       = case Map.lookup x tabl of
           Nothing -> error "undefined variable"
           Just dest -> do temp <- newTemp
                           return ([MOVE dest temp])

transStm (InitAssign tp x expr) tabl
       = case Map.lookup x tabl of
           Nothing -> error "undefined variable"
           Just dest -> do temp <- newTemp
                           code <- transExp expr tabl temp
                           return (code ++ [MOVE dest temp])

transStm (PrintInt i) tabl
       = do temp <- newTemp
            code <- transExp i tabl temp
            return (code ++ [PRINTI temp])

transStm (PrintStr s) tabl
       = do temp <- newTemp
            code <- transExp s tabl temp
            return (code ++ [PRINTS temp])

transStm (Return exp) tabl
      = do temp <- newTemp
           code <- transExp exp tabl temp
           return (code ++ [RETURN temp])


transStm (If cond stm Skip) tabl
       = do ltrue  <- newLabel
            lfalse <- newLabel
            code0  <- transCond cond tabl ltrue lfalse
            code1  <- transStm stm tabl
            return (code0 ++ [LABEL ltrue] ++ code1 ++ [LABEL lfalse])

transStm (If cond stm1 stm2) tabl
       = do ltrue  <- newLabel
            lfalse <- newLabel
            lend   <- newLabel
            code0  <- transCond cond tabl ltrue lfalse
            code1  <- transStm stm1 tabl
            code2  <- transStm stm2 tabl
            return (code0 ++ [LABEL ltrue] ++ code1 ++ [JUMP lend,LABEL lfalse] ++ code2 ++ [LABEL lend])

transStm (While cond stm) tabl
       = do label1 <- newLabel
            label2 <- newLabel
            label3 <- newLabel
            code1  <- transCond cond tabl label2 label3
            code2  <- transStm stm tabl
            return ([LABEL label1] ++ code1 ++ [LABEL label2] ++ code2 ++ [JUMP label1, LABEL label3])

--for '(' Stm Exp ';' Exp ')' Stm { For $3 $4 $6 $8}
transStm (For stm1 cond exp stm2) tabl
       = do label1 <- newLabel
            label2 <- newLabel
            label3 <- newLabel
            temp   <- newTemp
            code0  <- transStm stm1 tabl
            code1  <- transCond cond tabl label2 label3
            code2  <- transExp exp tabl temp
            code3  <- transStm stm2 tabl
            return (code0 ++ [LABEL label1] ++ code1 ++ [LABEL label2] ++ code3 ++ code2 ++ [JUMP label1, LABEL label3])


transStm (Block x) tabl
       = do code <- transStmBlock x tabl
            return (code)


transStmBlock :: [Stm] -> Table -> State Count [Instr]
transStmBlock ([Block []]) tabl
            = return []

transStmBlock ([Block [x]]) tabl
            = do code <- transStm x tabl
                 return (code)

transStmBlock ([Block (x:xs)]) tabl
            = do code0 <- transStm x tabl
                 code1 <- transStmBlock xs tabl
                 return (code0 ++ code1)