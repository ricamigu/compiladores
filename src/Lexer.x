{
module Lexer where
}

%wrapper "basic"
$white  = [\ \t\n\r]
$letter = [_a-zA-Z]
$digit  = [0-9]

tokens :-

$white+                   ; -- ignorar carateres brancos
if                        { \s -> TOK_IF }
then                      { \s -> TOK_THEN }
else                      { \s -> TOK_ELSE }
while                     { \s -> TOK_WHILE }
true                      { \s -> TOK_BOOL s }
false                     { \s -> TOK_BOOL s }
$digit+                   { \s -> TOK_NUM (read s) }
$letter($letter|$digit)*  { \s -> TOK_ID s}
"//".*                    ; -- comentario de uma linha
"/*"(\s|.)[^\/]*"*/"      ; -- comentarios compostos
"+"                       { \s -> TOK_PLUS }
"-"                       { \s -> TOK_MINUS }
"*"                       { \s -> TOK_MULT }
"/"                       { \s -> TOK_DIV }
","                       { \s -> TOK_COMMA }
";"                       { \s -> TOK_SEMICOLON }
"."                       { \s -> TOK_DOT }
"("                       { \s -> TOK_LPAREN }
")"                       { \s -> TOK_RPAREN }
"{"                       { \s -> TOK_LBRACE }
"}"                       { \s -> TOK_RBRACE }


{
data Token = TOK_NUM Int
           | TOK_BOOL String
           | TOK_ID String
           | TOK_LPAREN
           | TOK_RPAREN
           | TOK_LBRACE
           | TOK_RBRACE
           | TOK_PLUS
           | TOK_MINUS
           | TOK_MULT
           | TOK_DIV
           | TOK_COMMA
           | TOK_DOT
           | TOK_SEMICOLON
           | TOK_IF
           | TOK_THEN
           | TOK_ELSE
           | TOK_WHILE
           deriving (Eq,Show)
}