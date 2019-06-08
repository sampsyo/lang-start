Starting an Interpreter in OCaml
================================

This is a skeleton showing how to start writing a tiny interpreter in OCaml.
It just parses, pretty-prints, and evaluates a trivial arithmetic AST.

To build the project, you will need [Dune][] v1.10.0+.
You can install it using `opam install dune`.

There is one dependency: [Menhir][].
If you don't already have it, this will work to get it (or you can just do `opam install menhir`):

    $ dune build @check  # Generate the OPAM file.
    $ opam install . --deps-only

You can build the project and run an example in one step:

    $ echo '8*(3+2)+2' | dune exec calc

If you just need to compile, use `dune build`.
Or, to watch for changes and automatically rebuild, install [fswatch][] and then:

    $ dune build --watch

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
[fswatch]: https://github.com/emcrisostomo/fswatch
