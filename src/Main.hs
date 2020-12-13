module Main where

import Parser
import Lexer
import Inter
import Control.Monad.State --State Count
import qualified Data.Map as Map -- tabelas de simbolos

main :: IO ()
main = do
  passed <- getContents -- entrada padrao
  let stm = parser (alexScanTokens passed) -- assumindo que parser retorna um Stm
  --let code = evalState (transStm Map.empty stm) (0,0) -- correr a traducao comecando com tabela vazia e count 0
  print stm -- imprimir codigo intermedio
  --print code