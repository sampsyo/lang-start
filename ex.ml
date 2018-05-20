open Ast

let pretty (e : expr) : string =
    match e with
    | Int i -> string_of_int i

let eval (e : expr) : int =
    match e with
    | Int i -> i

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let expr = Parser.prog Lexer.token lexbuf in
    print_endline (string_of_int (eval expr))
