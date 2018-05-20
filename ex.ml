let _ =
    let lexbuf = Lexing.from_channel stdin in
    let result = Parser.prog Lexer.token lexbuf in
    print_endline "parsed"
