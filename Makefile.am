bin_PROGRAMS = cm cm-c cm-cxx cm-glsl cm-cuda cm-opencl

AUTOMAKE_OPTIONS = subdir-objects

cm_c_SOURCES = c-mera.asd \
			   src/c-mera/version.lisp \
			   src/c-mera/cmd.lisp \
			   src/c-mera/utils.lisp \
			   src/c-mera/nodes.lisp \
			   src/c-mera/traverser.lisp \
			   src/c-mera/pretty.lisp \
			   src/c-mera/c-mera.lisp \
			   src/c/utils.lisp \
			   src/c/nodes.lisp \
			   src/c/traverser.lisp \
			   src/c/pretty.lisp \
			   src/c/syntax.lisp \
			   src/c/reader.lisp \
			   src/c/cm-c.lisp \
			   src/c/cmu-c.lisp

cm_cxx_SOURCES = src/cxx/nodes.lisp \
				 src/cxx/traverser.lisp \
				 src/cxx/syntax.lisp \
				 src/cxx/pretty.lisp \
				 src/cxx/reader.lisp \
				 src/cxx/cm-cxx.lisp \
				 src/cxx/cmu-cxx.lisp

cm_glsl_SOURCES = src/glsl/nodes.lisp \
				  src/glsl/syntax.lisp \
				  src/glsl/pretty.lisp \
				  src/glsl/cm-glsl.lisp

cm_cuda_SOURCES = src/cuda/nodes.lisp \
				  src/cuda/syntax.lisp \
				  src/cuda/pretty.lisp \
				  src/cuda/cm-cuda.lisp

cm_opencl_SOURCES = src/opencl/nodes.lisp \
					src/opencl/syntax.lisp \
					src/opencl/pretty.lisp \
					src/opencl/cm-opencl.lisp

cm_SOURCES = src/front/cm.c
cm_CFLAGS = -DBINDIR=\"$(bindir)\"

cm-c$(EXEEXT): $(cm_c_SOURCES)
	@LISP_PROG@ @DYNAMIC_SPACE_SPEC@ @LISP_LOAD_ARG@ util/build/dump-c.lisp

cm-glsl$(EXEEXT) : $(cm_c_SOURCES) $(cm_glsl_SOURCES)
	@LISP_PROG@ @DYNAMIC_SPACE_SPEC@ @LISP_LOAD_ARG@ util/build/dump-glsl.lisp

cm-cxx$(EXEEXT): $(cm_c_SOURCES) $(cm_cxx_SOURCES)
	@LISP_PROG@ @DYNAMIC_SPACE_SPEC@ @LISP_LOAD_ARG@ util/build/dump-cxx.lisp

cm-cuda$(EXEEXT): $(cm_c_SOURCES) $(cm_cxx_SOURCES) $(cm_cuda_SOURCES)
	@LISP_PROG@ @DYNAMIC_SPACE_SPEC@ @LISP_LOAD_ARG@ util/build/dump-cuda.lisp

cm-opencl$(EXEEXT): $(cm_c_SOURCES) $(cm_cxx_SOURCES) $(cm_opencl_SOURCES)
	@LISP_PROG@ @DYNAMIC_SPACE_SPEC@ @LISP_LOAD_ARG@ util/build/dump-opencl.lisp

EXTRA_DIST = util/build/dump-c.lisp   util/build/dump-glsl.lisp \
			 util/build/dump-cxx.lisp util/build/dump-cuda.lisp \
			 util/build/dump-opencl.lisp

