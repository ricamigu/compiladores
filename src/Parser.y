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
bool                      { TOK_BOOLEAN }
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
'!='                      { TOK_NOT_EQUAL }
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


Stm : string '=' Exp ';' { Assign $1 $3 }
    | int string ';' { InitInt $2 }
    | int string '=' Exp ';' {InitIntAssign $2 $4 }
    | bool string ';' { InitBool $2 }
    | bool string '=' Exp ';' {InitBoolAssign $2 $4 }
    | if Exp '{' Stm '}' Stm { If $2 $4 $6}
    | if Exp '{' Stm '}' { If $2 $4 Skip }
    | Stm Stm { MoreStm $1 $2 }
    | while Exp '{' Stm '}' { While $2 $4}

Exp : num { Num $1 }
    | string { Var $1 }
    | True { Boolean $1}
    | False { Boolean $1}
    | Exp '+' Exp { Add $1 $3 }
    | Exp '-' Exp { Minus $1 $3 }
    | Exp '*' Exp { Mult $1 $3 }
    | Exp '/' Exp { Div $1 $3 }
    | Exp '%' Exp { Mod $1 $3 }
    | Exp '<=' Exp { Less_Equal $1 $3 }
    | Exp '>=' Exp { Greater_Equal $1 $3 }
    | Exp '<' Exp { Less_Than $1 $3 }
    | Exp '>' Exp { Greater_Than $1 $3 }
    | Exp '==' Exp { Equals_Equals $1 $3 }
    | Exp '!=' Exp { Not_Equal $1 $3 }
    | '(' Exp ')' { $2 }

{

data Exp = Num Int
         | Var String
         | Boolean Bool
         | Add Exp Exp
         | Minus Exp Exp
         | Mult Exp Exp
         | Div Exp Exp
         | Mod Exp Exp
         | Less_Equal Exp Exp
         | Greater_Equal Exp Exp
         | Less_Than Exp Exp
         | Greater_Than Exp Exp
         | Equals_Equals Exp Exp
         | Equals Exp Exp
         | Not_Equal Exp Exp
         deriving Show

data Stm = Assign String Exp
         | InitInt String
         | InitIntAssign String Exp
         | InitBool String
         | InitBoolAssign String Exp
         | If Exp Stm Stm
         | While Exp Stm
         | MoreStm Stm Stm
         | Skip
         deriving Show


parseError :: [Token] -> a
parseError toks = error "parse error"
}