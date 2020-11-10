{
module Lexer where
}

%wrapper "basic"
$white  = [\ \t\n\r]
$letter = [_a-zA-Z]
$digit  = [0-9]
$quote = [\"]

tokens :-

$white+                   ; -- ignorar carateres brancos
int                       { \s -> TOK_INT } -- testar
if                        { \s -> TOK_IF }
then                      { \s -> TOK_THEN }
else                      { \s -> TOK_ELSE }
return                    { \s -> TOK_RETURN }
while                     { \s -> TOK_WHILE }
bool                      { \s -> TOK_BOOLS } -- testar
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
"%"                       { \s -> TOK_MOD }
"=="                      { \s -> TOK_EQUALS_EQUALS }
"="                       { \s -> TOK_EQUALS }
"<="                      { \s -> TOK_LESS_OR_EQUAL }
">="                      { \s -> TOK_GREATER_OR_EQUAL }
"<"                       { \s -> TOK_LESS_THAN }
">"                       { \s -> TOK_GREATER_THAN }
--$quote($white)*.*(white)*.*$quote  { \s -> TOK_STRING s }
$quote                    { \s -> TOK_DOUBLE_QUOTES}
{
data Token = TOK_NUM Int
           | TOK_BOOLS
           | TOK_BOOL String
           | TOK_STRING String
           | TOK_ID String
           | TOK_INT
           | TOK_DOUBLE_QUOTES
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
           | TOK_EQUALS
           | TOK_LESS_OR_EQUAL
           | TOK_GREATER_OR_EQUAL
           | TOK_LESS_THAN
           | TOK_GREATER_THAN
           | TOK_EQUALS_EQUALS
           | TOK_MOD
           | TOK_RETURN
           deriving (Eq,Show)
}