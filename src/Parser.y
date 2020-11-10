{
module Parser where
import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token

num                       { TOK_NUM $$ }
if                        { TOK_IF }
then                      { TOK_THEN }
else                      { TOK_ELSE }
return                    { TOK_RETURN }
while                     { TOK_WHILE }
'+'                       { TOK_PLUS }
'-'                       { TOK_MINUS }
'*'                       { TOK_MULT }
'/'                       { TOK_DIV }
'('                       { TOK_LPAREN }
')'                       { TOK_RPAREN }

%left '+' '-'
%left '*' '/'

%% -- gramatica

Stm : Exp { $1 }

Exp : num { Num $1 }
    | Exp '+' Exp { Add $1 $3 }
    | Exp '-' Exp { Minus $1 $3 }
    | Exp '*' Exp { Mult $1 $3 }
    | Exp '/' Exp { Div $1 $3 }
    | '(' Exp ')' { $2 }

{

data Stm = Exp

data Exp = Num Int
         | Add Exp Exp
         | Minus Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
}