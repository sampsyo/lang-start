let _ =
    let lexbuf = Lexing.from_channel stdin in
    while true do
        let result = Parser.expr Lexer.token lexbuf in
        print_endline "parsed"
    done
