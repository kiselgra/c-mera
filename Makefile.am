bin_PROGRAMS = cgen glslgen shgen cugen cxxgen oclgen multigen cm

AUTOMAKE_OPTIONS = subdir-objects

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

glslgen_SOURCES = src/glsl/glslgen.lisp src/glsl/gl-symbols.lisp

shgen_SOURCES = src/shader/shgen.lisp

cugen_SOURCES = src/cuda/cugen.lisp

cxxgen_SOURCES = src/cxx/cxxgen.lisp

oclgen_SOURCES = src/ocl/oclgen.lisp

multigen_SOURCES = src/cxx/cxxgen.lisp

cm_SOURCES = src/front/cm.c
cm_CFLAGS = -DBINDIR=\"$(bindir)\"

cgen$(EXEEXT): $(cgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-cgen.lisp

glslgen$(EXEEXT) : $(cgen_SOURCES) $(glslgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-glslgen.lisp

shgen$(EXEEXT): $(cgen_SOURCES) $(glslgen_SOURCES) $(shgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-shgen.lisp

cxxgen$(EXEEXT): $(cgen_SOURCES) $(cxxgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-cxxgen.lisp

cugen$(EXEEXT): $(cgen_SOURCES) $(cxxgen_SOURCES) $(cugen_SOURCES)
	@LISP_PROG@ --script util/build/dump-cugen.lisp

oclgen$(EXEEXT): $(cgen_SOURCES) $(cxxgen_SOURCES) $(oclgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-oclgen.lisp

multigen$(EXEEXT): $(cgen_SOURCES) $(glslgen_SOURCES) $(cugen_SOURCES) $(cxxgen_SOURCES)
	@LISP_PROG@ --script util/build/dump-multi.lisp

src/glsl/gl-types.lisp: src/glsl/gl.xml
	@xmlstarlet sel -t  -m '//type/name' -v . -n $< > src/glsl/gl.types

src/glsl/gl-symbols.lisp: src/glsl/gl.xml
	@bash util/build/generate-gl-enum-list.sh "$<" > $@

EXTRA_DIST = util/build/dump-cgen.lisp   util/build/dump-glslgen.lisp util/build/dump-shgen.lisp \
			 util/build/dump-cxxgen.lisp util/build/dump-cugen.lisp   util/build/dump-oclgen.lisp \
			 util/build/dump-multi.lisp \
			 src/glsl/gl.xml src/glsl/gl-symbols.lisp util/build/generate-gl-enum-list.sh

