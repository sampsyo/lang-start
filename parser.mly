%{
open Ast
%}

%token LEFT_PAREN
%token RIGHT_PAREN
%token EOF

%token <int> INT

%token PLUS
%token MINUS
%token TIMES
%token DIV

%left PLUS MINUS
%left TIMES DIV

%start <Ast.expr> prog

%%

prog:
    | e = expr EOF
      { e }

expr:
    | LEFT_PAREN; e = expr; RIGHT_PAREN
      { e }

    | i = INT
      { Int i }

    | e1 = expr; PLUS; e2 = expr
      { Plus (e1, e2) }
    | e1 = expr; MINUS; e2 = expr
      { Minus (e1, e2) }
    | e1 = expr; TIMES; e2 = expr
      { Times (e1, e2) }
    | e1 = expr; DIV; e2 = expr
      { Div (e1, e2) }
