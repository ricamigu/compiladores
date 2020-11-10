module Main where

import Parser
import Lexer

main :: IO ()
main = do
  passed <- getContents
  print (parser $ alexScanTokens passed)
