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

Start : Func { [$1] }                 --yes
      | Start Func { $1 ++ [$2] }     --yes

Func : Type id '(' FuncAssignBlock ')' '{' StmBlock ReturnStm '}' { InitFunc $1 $2 $4 $7 $8 }  -- funcoes que "obrigam" return  --yes
     | Type id '(' FuncAssignBlock ')' '{' ReturnStm '}' { InitFuncE $1 $2 $4 $7 } -- funcoes apenas com return                 --yes
     | int main '(' ')' '{' StmBlock '}' { MainFunc $6 } -- main sem return obrigatório                                         --yes

FuncAssign : Type id { FuncAssign $1 $2 }     --yes

FuncAssignBlock : { [] }                                            --yes
                | FuncAssign { [$1] }                               --yes
                | FuncAssignBlock ',' FuncAssign { $1 ++ [$3] }     --yes

Stm : id '=' Exp ';' { Assign $1 $3 }                   --yes
    | Type id ';' { Init $1 $2 }                        --yes
    | Type id '=' Exp ';' {InitAssign $1 $2 $4 }        --yes
    | if Exp Stm { If $2 $3 Skip }                      --yes
    | if Exp Stm else Stm { If $2 $3 $5 }               --yes
    | while Exp Stm { While $2 $3}                      --yes
    | for '(' Stm Exp ';' Exp ')' Stm { For $3 $4 $6 $8}--yes
    | '{' StmBlock '}' { Block $2 }                     --yes
    | id '(' ExpCallBlock ')' ';' { FuncCallStm $1 $3 } --yes
    | print_int '(' Exp ')' ';' { PrintInt $3 }         --yes
    | print_str '(' Exp ')' ';' { PrintStr $3 }         --yes
    | return Exp ';' { Return $2 }                      --yes 

ReturnStm : return Exp ';' { ReturnExp $2 }             --yes

StmBlock : Stm { [$1] }                                 --yes
         | StmBlock Stm { $1 ++ [$2] }                  --yes

Exp : num { Num $1 }                                    --yes
    | id { Var $1 }                                     --yes
    | true { Boolean $1}                                --yes
    | false { Boolean $1}                               --yes
    | text { Text $1}                                   --yes
    | '(' Exp ')' { $2 }                                --yes
    | Exp '+' Exp { Op Add $1 $3 }                      --yes
    | Exp '-' Exp { Op Minus $1 $3 }                    --yes
    | Exp '*' Exp { Op Mult $1 $3 }                     --yes
    | Exp '/' Exp { Op Div $1 $3 }                      --yes
    | Exp '%' Exp { Op Mod $1 $3 }                      --yes
    | Exp '<=' Exp { Op Less_Equal $1 $3 }              --yes
    | Exp '>=' Exp { Op Greater_Equal $1 $3 }           --yes
    | Exp '<' Exp { Op Less_Than $1 $3 }                --yes
    | Exp '>' Exp { Op Greater_Than $1 $3 }             --yes
    | Exp '==' Exp { Op Equals_Equals $1 $3 }           --yes
    | Exp '!=' Exp { Op Not_Equal $1 $3 }               --yes
    | Exp '&&' Exp { Op And $1 $3 }                     --yes
    | Exp '||' Exp { Op Or $1 $3 }                      --yes
    | Exp '++' { Plus_Plus $1 } -- so nos fors          --yes
    | Exp "--" { Minus_Minus $1 }                       --yes
    | '!'Exp       { Not $2 }                           --yes
    | id '(' ExpCallBlock ')' { FuncCall $1 $3 }        --yes
    | scan_int '(' ')' { Scan }                         --yes

ExpCall : Exp { ExpSend $1 }

ExpCallBlock : { [] }
             | ExpCall { [$1] }
             | ExpCallBlock ',' ExpCall { $1 ++ [$3] }

Type : int { Type_Int} -- definicao de tipos
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
         | Op BinOp Exp Exp
         | FuncCall String [ExpCall]
         | Scan
         | Not Exp
         | Plus_Plus Exp
         | Minus_Minus Exp
         deriving Show

data BinOp = Add 
           | Minus 
           | Times
           | Mult
           | Div
           | Mod
           | Less_Equal
           | Greater_Equal 
           | Less_Than 
           | Greater_Than 
           | Equals_Equals 
           | Not_Equal 
           | And 
           | Or 
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
         | Return Exp
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