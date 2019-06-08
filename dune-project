(lang dune 1.10)
(using menhir 1.0)

(generate_opam_files true)

(license MIT)
(maintainers "Adrian Sampson <asampson@cs.cornell.edu>")
(authors "Adrian Sampson <asampson@cs.cornell.edu>")
(source (github sampsyo/lang-start))

(package
  (name lang-start)
  (depends
    menhir)
  (synopsis "An example for getting started with language implementation"))
