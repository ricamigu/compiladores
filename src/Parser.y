{
module Parser where
import Lexer
}

%name parser
%tokentype { Token }
%error { parseError }

%token

int                       { TOK_INT }
num                       { TOK_NUM $$ }
string                    { TOK_ID $$ }
if                        { TOK_IF }
then                      { TOK_THEN }
else                      { TOK_ELSE }
return                    { TOK_RETURN }
while                     { TOK_WHILE }
True                      { TOK_BOOL $$ }
False                     { TOK_BOOL $$ }
'+'                       { TOK_PLUS }
'-'                       { TOK_MINUS }
'*'                       { TOK_MULT }
'/'                       { TOK_DIV }
','                       { TOK_COMMA }
';'                       { TOK_SEMICOLON }
'.'                       { TOK_DOT }
'('                       { TOK_LPAREN }
')'                       { TOK_RPAREN }
'{'                       { TOK_LBRACE }
'}'                       { TOK_RBRACE }
'%'                       { TOK_MOD } 
'=='                      { TOK_EQUALS_EQUALS } 
'='                       { TOK_EQUALS }  
'<='                      { TOK_LESS_OR_EQUAL } 
'>='                      { TOK_GREATER_OR_EQUAL }  
'<'                       { TOK_LESS_THAN }  
'>'                       { TOK_GREATER_THAN } 

%nonassoc '<=' '>=' '<' '>' '==' '='
%left '+' '-'
%left '*' '/'

%% -- gramatica

Start : Exp { $1 }

Exp : num { Num $1 }
    | string { Var $1 }
    | True { Boolean $1}
    | False { Boolean $1}
    | Exp '+' Exp { Add $1 $3 }
    | Exp '-' Exp { Minus $1 $3 }
    | Exp '*' Exp { Mult $1 $3 }
    | Exp '/' Exp { Div $1 $3 }
    | Exp '<=' Exp { Less_Equal $1 $3 }
    | Exp '>=' Exp { Greater_Equal $1 $3 }
    | Exp '<' Exp { Less_Than $1 $3 }
    | Exp '>' Exp { Greater_Than $1 $3 }
    | Exp '==' Exp { Equals_Equals $1 $3 }
    | Exp '=' Exp { Equals $1 $3 }
    | '(' Exp ')' { $2 }

{

data Stm = Exp

data Exp = Num Int
         | Var String
         | Boolean Bool
         | Add Exp Exp
         | Minus Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Less_Equal Exp Exp
         | Greater_Equal Exp Exp
         | Less_Than Exp Exp
         | Greater_Than Exp Exp
         | Equals_Equals Exp Exp
         | Equals Exp Exp
         deriving Show

parseError :: [Token] -> a
parseError toks = error "parse error"
}