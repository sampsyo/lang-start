open Langstart
open Langstart.Ast

let rec pretty (e : expr) : string =
    match e with
    | Int i -> string_of_int i
    | Plus (e1, e2) -> (pretty e1) ^ " + " ^ (pretty e2)
    | Minus (e1, e2) -> (pretty e1) ^ " - " ^ (pretty e2)
    | Times (e1, e2) -> (pretty e1) ^ " * " ^ (pretty e2)
    | Div (e1, e2) -> (pretty e1) ^ " / " ^ (pretty e2)

let rec eval (e : expr) : int =
    match e with
    | Int i -> i
    | Plus (e1, e2) -> (eval e1) + (eval e2)
    | Minus (e1, e2) -> (eval e1) - (eval e2)
    | Times (e1, e2) -> (eval e1) * (eval e2)
    | Div (e1, e2) -> (eval e1) / (eval e2)

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let expr = Parser.prog Lexer.token lexbuf in
    print_endline (pretty expr);
    print_string "= ";
    print_endline (string_of_int (eval expr))
