# Process this file with autoconf to produce a configure script.
AC_PREREQ(2.61)
AC_INIT([c-mera], [1.0.1])
AM_INIT_AUTOMAKE

AC_CONFIG_MACRO_DIR([m4])

AC_CONFIG_SRCDIR([c-mera.asd])
AC_CONFIG_HEADER([config.h])
AC_CONFIG_FILES(Makefile
				src/c-mera/version.lisp
				util/build/dump-c.lisp    util/build/dump-cuda.lisp util/build/dump-cxx.lisp
				util/build/dump-glsl.lisp util/build/dump-opencl.lisp)

AC_PROG_CC


##
## find a compatible lisp.
## we are currently quite focused on sbcl.
##
LISP_LOAD_ARG=
AC_CHECK_PROGS(LISP_PROG, [ccl sbcl lisp], no)

AC_ARG_WITH([ccl],
			[AS_HELP_STRING([--with-ccl], [Use clozure lisp as generator.])],
			LISP_PROG="ccl")

AC_ARG_WITH([sbcl],
			[AS_HELP_STRING([--with-sbcl], [Use sbcl as generator.])],
			LISP_PROG="sbcl")

					

if test "x$LISP_PROG" == "xno" ; then
	AC_MSG_ERROR([Cannot find any suitable lisp.]) ;
elif test "x$LISP_PROG" == "xccl" ; then
	LISP_LOAD_ARG="-l" ;
elif test "x$LISP_PROG" == "xsbcl" ; then
	LISP_LOAD_ARG="--script"
fi
AC_SUBST([LISP_PROG])
AC_SUBST([LISP_LOAD_ARG])

VER_MAJ=`echo $VERSION|sed -e 's/\(.\+\)\.\(.\+\)\.\(.\+\)/\1/'`
VER_MIN=`echo $VERSION|sed -e 's/\(.\+\)\.\(.\+\)\.\(.\+\)/\2/'`
VER_PAT=`echo $VERSION|sed -e 's/\(.\+\)\.\(.\+\)\.\(.\+\)/\3/'`
AC_SUBST([VER_MAJ])
AC_SUBST([VER_MIN])
AC_SUBST([VER_PAT])

##
## provide a means to compile programs with larger memory areas.
##
AC_ARG_WITH([dynamic-space-size],
			[AS_HELP_STRING([--with-dynamic-space-size=MB],
							[Set other than default dynamic heap size. Only implemented for sbcl at the moment.])],
			 dynamic_space_size_request=$withval, dynamic_space_size_request="no")
DYNAMIC_SPACE_SPEC=
if test "x$LISP_PROG" == "xsbcl" -a ! "x$dynamic_space_size_request" == "xno"; then
DYNAMIC_SPACE_SPEC="--dynamic-space-size 16384"
fi
AC_SUBST([DYNAMIC_SPACE_SPEC])



AC_OUTPUT
