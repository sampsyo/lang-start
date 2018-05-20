We need [Dune][] and [Menhir][]:

    $ opam install jbuilder
    $ opam install menhir

Build by typing:

    $ jbuilder build ex.bc

Run an example:

    $ echo '8*(3+2)+2' | _build/default/ex.bc

[dune]: https://github.com/ocaml/dune
[menhir]: http://gallium.inria.fr/~fpottier/menhir/
