#!/usr/local/bin/sbcl --script
(require :asdf)
(require :sb-introspect)
(require :cgen "cgen.asd")
(require :cxxgen)
(require :cg-user)
(in-package :cg-user)
(cgen::save "cxxgen")
(sb-ext:quit)
