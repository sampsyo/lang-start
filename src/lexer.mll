{
open Parser
}

let digit = ['0'-'9']
let num = '-'? digit digit*
let ws = ['\t' ' ' '\n']

rule token =
    parse
    | ws+        { token lexbuf }
    | "("        { LEFT_PAREN }
    | ")"        { RIGHT_PAREN }

    | "+"        { PLUS }
    | "-"        { MINUS }
    | "*"        { TIMES }
    | "/"        { DIV }

    | num as n   { INT (int_of_string n) }

    | eof        { EOF }
