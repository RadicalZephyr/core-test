#!/bin/sh

eval `opam config env`

ocamlfind ocamlc -linkpkg -thread -package core -g coretest.ml -o coretest

ocamlfind ocamlc -linkpkg -thread -package core -g coretest2.ml -o coretest2

ocamlc -g simple.ml -o simpletest
