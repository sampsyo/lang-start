{
open Parser
}

let digit = ['0'-'9']
let num = '-'? digit digit*

rule token =
    parse
    | "("        { LEFT_PAREN }
    | ")"        { RIGHT_PAREN }
    | num as n   { INT (int_of_string n) }
