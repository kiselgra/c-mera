#!/usr/bin/sbcl --script
(require :sb-introspect)
(require :cgen "/home/eidaex/work/cgen/cgen/cgen.asd")
#(require :cgen "cgen.asd")
(require :cgen)
(require :cg-user)
(in-package :cg-user)
(cgen::script-command
    (second sb-ext:*posix-argv*)
    (third sb-ext:*posix-argv*))
(sb-ext:quit)
