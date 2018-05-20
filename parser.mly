%{
open Ast
%}

%token <int> INT
%token LEFT_PAREN
%token RIGHT_PAREN

%start <Ast.expr> expr

%%

expr:
    | i = INT
      { Int i }
    | LEFT_PAREN; e = expr; RIGHT_PAREN
      { e }
