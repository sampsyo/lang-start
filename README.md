Starting an Interpreter in OCaml
================================

This is a skeleton showing how to start writing a tiny interpreter in OCaml.
It just parses, pretty-prints, and evaluates a trivial arithmetic AST.

To build the project, you will need [Dune][] v1.10.0+.
You can install it using `opam install dune`.
Start by making sure you have the dependency (just [Menhir][]):

    $ dune build  # Generate the OPAM file.
    $ opam install . --deps-only

Build the executable by typing:

    $ dune build bin/calc.bc

Run an example:

    $ echo '8*(3+2)+2' | dune exec bin/calc.bc

Explore the implementation in a [utop][] REPL:

    $ opam install utop
    $ dune utop src

This repository contains:

* `src/`: The language implementation.
    * `ast.ml`: An ADT for the language syntax.
    * `parser.mly`: A [Menhir][] parser for expressions.
    * `lexer.mll`: The [ocamllex][lexyacc] lexer for that parser.
    * `ops.ml`: Functions to pretty-print and evaluate expressions.
* `bin/calc.ml`: A tool that reads a program from standard input.
* `dune-project`, `src/dune`, and `bin/dune`:
  The build configuration for [Dune][].

[dune]: https://github.com/ocaml/dune
[menhir]: http://gallium.inria.fr/~fpottier/menhir/
[lexyacc]: https://caml.inria.fr/pub/docs/manual-ocaml/lexyacc.html
[utop]: https://github.com/diml/utop
