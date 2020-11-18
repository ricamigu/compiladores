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
id                        { TOK_ID $$ }
main                      { TOK_MAIN_FUNC }
for                       { TOK_FOR }
if                        { TOK_IF }
else                      { TOK_ELSE }
string                    { TOK_STRING }
text                      { TOK_TEXT $$ }
return                    { TOK_RETURN }
while                     { TOK_WHILE }
bool                      { TOK_BOOLEAN }
true                      { TOK_BOOL $$ }
false                     { TOK_BOOL $$ }
scan_int                  { TOK_SCAN_INT }
print_int                 { TOK_PRINT_INT }
print_str                 { TOK_PRINT_STR }
'+'                       { TOK_PLUS }
'-'                       { TOK_MINUS }
'*'                       { TOK_MULT }
'/'                       { TOK_DIV }
','                       { TOK_COMMA }
';'                       { TOK_SEMICOLON }
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
'!'                       { TOK_NOT }
'&&'                      { TOK_AND }
'||'                      { TOK_OR }
'++'                      { TOK_PLUS_PLUS }
"--"                      { TOK_MINUS_MINUS }

%left '&&' '||'
%nonassoc '<=' '>=' '<' '>' '==' '=' '!='
%left '+' '-' 
%left '*' '/' '%'
%right '!' '++' "--"

%% -- gramatica

Start : Func { [$1] }
      | Start Func { $1 ++ [$2] }

Func : Type id '(' FuncAssignBlock ')' '{' StmBlock ReturnStm '}' { InitFunc $1 $2 $4 $7 $8 }  -- funcoes que "obrigam" return
     | Type id '(' FuncAssignBlock ')' '{' ReturnStm '}' { InitFuncE $1 $2 $4 $7 } -- funcoes apenas com return
     | int main '(' ')' '{' StmBlock '}' { MainFunc $6 } -- main sem return obrigatório

FuncAssign : Type id { FuncAssign $1 $2 }

FuncAssignBlock : { [] } 
                | FuncAssign { [$1] }
                | FuncAssignBlock ',' FuncAssign { $1 ++ [$3] }

Stm : id '=' Exp ';' { Assign $1 $3 }
    | Type id ';' { Init $1 $2 }
    | Type id '=' Exp ';' {InitAssign $1 $2 $4 }
    | if Exp Stm { If $2 $3 Skip }
    | if Exp Stm else Stm { If $2 $3 $5 }
    | while Exp Stm { While $2 $3}
    | for '(' Stm Exp ';' Exp ')' Stm { For $3 $4 $6 $8}
    | '{' StmBlock '}' { Block $2 }
    | id '(' ExpCallBlock ')' ';' { FuncCallStm $1 $3 }
    | print_int '(' Exp ')' ';' { PrintInt $3 }
    | print_str '(' Exp ')' ';' { PrintStr $3 }
    | ReturnStm { Return $1}

ReturnStm : return Exp ';' { ReturnExp $2 }

StmBlock : Stm { [$1] }
         | StmBlock Stm { $1 ++ [$2] }

Exp : num { Num $1 }
    | id { Var $1 }
    | true { Boolean $1}
    | false { Boolean $1}
    | text { Text $1}
    | '(' Exp ')' { $2 }
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
    | Exp '&&' Exp { And $1 $3 }
    | Exp '||' Exp { Or $1 $3 }
    | Exp '++' { Plus_Plus $1 }
    | Exp "--" { Minus_Minus $1 }
    | '!'Exp       { Not $2 }
    | id '(' ExpCallBlock ')' { FuncCall $1 $3 } 
    | scan_int '(' ')' { Scan }

ExpCall : Exp { ExpSend $1 }

ExpCallBlock : { [] }
             | ExpCall { [$1] }
             | ExpCallBlock ',' ExpCall { $1 ++ [$3] }

Type : int { Type_Int}
     | bool { Type_Bool }
     | string { Type_String }

{

data Type = Type_Int
          | Type_Bool
          | Type_String
          deriving Show

data Start = Func
           deriving Show

data Func = InitFunc Type String [FuncAssign] [Stm] ReturnStm
          | InitFuncE Type String [FuncAssign] ReturnStm
          | MainFunc [Stm]
          deriving Show

data FuncAssign = FuncAssign Type String
                deriving Show

data Exp = Num Int
         | Var String
         | Boolean Bool
         | Text String
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
         | FuncCall String [ExpCall]
         | Scan
         | And Exp Exp
         | Or Exp Exp
         | Not Exp
         | Plus_Plus Exp
         | Minus_Minus Exp
         deriving Show

data ExpCall = ExpSend Exp
             | ExpBlock [ExpCall]
             deriving Show

data ExpCallBlock = ExpCall
                  deriving Show         

data Stm = Assign String Exp
         | Init Type String
         | InitAssign Type String Exp
         | If Exp Stm Stm
         | While Exp Stm
         | Block [Stm]
         | Skip
         | For Stm Exp Exp Stm
         | FuncCallStm String [ExpCall] 
         | Return ReturnStm
         | PrintInt Exp
         | PrintStr Exp
         deriving Show

data StmBlock = Stm
              deriving Show

data ReturnStm = ReturnExp Exp
               deriving Show          

parseError :: [Token] -> a
parseError toks = error "parse error"
}