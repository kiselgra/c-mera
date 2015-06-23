#!/usr/local/bin/sbcl --script
(require :asdf)
(require :sb-introspect)
(require :cgen "cgen.asd")
(require :glslgen)
(require :cg-user)
(in-package :cg-user)
(cgen::save "glslgen")
(sb-ext:quit)
