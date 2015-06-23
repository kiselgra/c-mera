bin_PROGRAMS = cgen glslgen shgen cugen cxxgen multigen

cgen_SOURCES = 	cgen.asd \
				src/core/cl-loader.lisp \
				src/core/utils.lisp \
				src/core/ast-utils.lisp \
				src/core/ast-nodes.lisp \
				src/core/ast-syntax.lisp \
				src/core/ast-traverser.lisp \
				src/core/ast-pretty.lisp \
				src/core/pre-processing.lisp \
				src/core/cgen.lisp \
				src/usr/cgu-base.lisp

glslgen_SOURCES = src/glsl/glslgen.lisp

shgen_SOURCES = src/shader/shgen.lisp

cugen_SOURCES = src/cuda/cugen.lisp

cxxgen_SOURCES = src/cxx/cxxgen.lisp

multigen_SOURCES = src/cxx/cxxgen.lisp

cgen$(EXEEXT): $(cgen_SOURCES)
	@LISP_PROG@ --script dump-cgen.lsp

glslgen$(EXEEXT) : $(cgen_SOURCES) $(glslgen_SOURCES)
	@LISP_PROG@ --script dump-glslgen.lsp

shgen$(EXEEXT): $(cgen_SOURCES) $(glslgen_SOURCES) $(shgen_SOURCES)
	@LISP_PROG@ --script dump-shgen.lsp

cxxgen$(EXEEXT): $(cgen_SOURCES) $(cxxgen_SOURCES)
	@LISP_PROG@ --script dump-cxxgen.lsp

cugen$(EXEEXT): $(cgen_SOURCES) $(cxxgen_SOURCES) $(cugen_SOURCES)
	@LISP_PROG@ --script dump-cugen.lsp

multigen$(EXEEXT): $(cgen_SOURCES) $(glslgen_SOURCES) $(cugen_SOURCES) $(cxxgen_SOURCES)
	@LISP_PROG@ --script dump-multi.lsp

EXTRA_DIST = dump-cgen.lsp dump-glslgen.lsp dump-shgen.lsp dump-cxxgen.lsp dump-cugen.lsp dump-multi.lsp
