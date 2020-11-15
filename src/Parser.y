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
true                      { TOK_BOOL $$ }
false                     { TOK_BOOL $$ }
scan_int                  { TOK_SCAN_INT }
print_int                 { TOK_PRINT_INT }
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
%left '*' '/' '%'

%% -- gramatica

--- print_int(v) print_int(Exp) print_int(func()) , statement com argumentos

Start : Func { [$1] }
      | Start Func { $1 ++ [$2] }

Func : int string '(' FuncAssign ')' '{' StmBlock ReturnStm '}' { InitIntFunc $2 $4 $7 $8 } -- virgulas
     | bool string '(' FuncAssign ')' '{' StmBlock ReturnStm '}' { InitBoolFunc $2 $4 $7 $8 }
     | int string '(' FuncAssign ')' '{' ReturnStm '}' { InitIntFuncE $2 $4 $7 }
     | bool string '(' FuncAssign ')' '{' ReturnStm '}' { InitBoolFuncE $2 $4 $7 }

FuncAssign : { E } -- epsilon
           | int string ',' { FuncIntAssign $2 }
           | bool string ',' { FuncBoolAssign $2 }
           | int string { FuncIntAssign $2 }
           | bool string { FuncBoolAssign $2 }
           | FuncAssignBlock { FuncBlock $1 }

FuncAssignBlock : FuncAssign { [$1] }
                | FuncAssignBlock FuncAssign { $1 ++ [$2] }

Stm : string '=' Exp ';' { Assign $1 $3 }
    | int string ';' { InitInt $2 }
    | int string '=' Exp ';' {InitIntAssign $2 $4 }
    | bool string ';' { InitBool $2 }
    | bool string '=' Exp ';' {InitBoolAssign $2 $4 }
    | if Exp Stm Stm { If $2 $3 $4}
    | if Exp Stm { If $2 $3 Skip }
    | if Exp Stm else Stm { If $2 $3 $5 }
    | while Exp Stm { While $2 $3}
    | '{' StmBlock '}' { Block $2 }
    | string '(' ExpCall ')' ';' { FuncCallStm $1 $3 }
    | print_int '(' Exp ')' ';' { PrintInt $3 }
    | ReturnStm { Return $1}

ReturnStm : return Exp ';' { ReturnExp $2 }

StmBlock : Stm { [$1] }
         | StmBlock Stm { $1 ++ [$2] }

Exp : num { Num $1 }
    | string { Var $1 }
    | true { Boolean $1}
    | false { Boolean $1}
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
    | string '(' ExpCall ')' { FuncCall $1 $3 } 
    | scan_int '(' ')' { Scan }
    | '(' Exp ')' { $2 }

ExpCall : { Eps } -- epsilon
        | Exp ',' { ExpSend $1 }
        | Exp { ExpSend $1 }   
        | ExpCallBlock { ExpBlock $1 }

ExpCallBlock : ExpCall { [$1] }
             | ExpCallBlock ExpCall { $1 ++ [$2] }

{

data Start = Func
           deriving Show

data Func = InitIntFunc String FuncAssign [Stm] ReturnStm
          | InitBoolFunc String FuncAssign [Stm] ReturnStm
          | InitIntFuncE String FuncAssign ReturnStm
          | InitBoolFuncE String FuncAssign ReturnStm
          deriving Show

data FuncAssign = E
                | FuncIntAssign String
                | FuncBoolAssign String
                | FuncBlock [FuncAssign]
                deriving Show

data FuncAssignBlock = FuncAssign
                     deriving Show

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
         | FuncCall String ExpCall 
         | Scan
         deriving Show

data ExpCall = Eps
             | ExpSend Exp
             | ExpBlock [ExpCall]
             deriving Show

data ExpCallBlock = ExpCall
                  deriving Show         

data Stm = Assign String Exp
         | InitInt String
         | InitIntAssign String Exp
         | InitBool String
         | InitBoolAssign String Exp
         | If Exp Stm Stm
         | While Exp Stm
         | Block [Stm]
         | Skip
         | FuncCallStm String ExpCall 
         | Return ReturnStm
         | PrintInt Exp
         deriving Show

data StmBlock = Stm
              deriving Show

data ReturnStm = ReturnExp Exp
               deriving Show          

parseError :: [Token] -> a
parseError toks = error "parse error"
}