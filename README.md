Starting an Interpreter in OCaml
================================

This is a skeleton showing how to start writing a tiny interpreter in OCaml.
It just parses, pretty-prints, and evaluates a trivial arithmetic AST.

We need [Dune][] and [Menhir][]:

    $ opam install jbuilder
    $ opam install menhir

Build by typing:

    $ jbuilder build bin/ex.bc

Run an example:

    $ echo '8*(3+2)+2' | _build/default/bin/ex.bc

This repository contains:

* `src/`: The language implementation.
    * `ast.ml`: An ADT for the language syntax.
    * `parser.mly`: A [Menhir][] parser for expressions.
    * `lexer.mll`: The [ocamllex][lexyacc] lexer for that parser.
    * `ops.ml`: Functions to pretty-print and evaluate expressions.
* `bin/ex.ml`: A tool that reads a program from standard input.
* `src/jbuild` and `bin/jbuild`: The build configuration for [Dune][].

[dune]: https://github.com/ocaml/dune
[menhir]: http://gallium.inria.fr/~fpottier/menhir/
[lexyacc]: https://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html
