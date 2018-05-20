open Ast

let pretty (e : expr) : string =
    match e with
    | Int i -> string_of_int i

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let expr = Parser.prog Lexer.token lexbuf in
    print_endline (pretty expr)
