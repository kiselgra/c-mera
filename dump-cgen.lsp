#!/usr/local/bin/sbcl --script
(require :asdf)
(require :sb-introspect)
(require :cg-user "cgen.asd")
(require :cg-user)
;;(use-package :cg-user)
(in-package :cg-user)
(cgen::save "cgen")
(sb-ext:quit)
