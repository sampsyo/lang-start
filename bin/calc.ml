open Langstart

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let expr = Parser.prog Lexer.token lexbuf in
    print_endline (Ops.pretty expr);
    print_string "= ";
    print_endline (string_of_int (Ops.eval expr))
