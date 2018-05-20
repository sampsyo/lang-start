%{
open Ast
%}

%token <int> INT
%token LEFT_PAREN
%token RIGHT_PAREN
%token EOF

%start <Ast.expr> prog

%%

prog:
    | e = expr EOF
      { e }

expr:
    | i = INT
      { Int i }
    | LEFT_PAREN; e = expr; RIGHT_PAREN
      { e }
