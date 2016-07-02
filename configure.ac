# Process this file with autoconf to produce a configure script.
AC_PREREQ(2.61)
AC_INIT([cgen], [0.0.1])
AM_INIT_AUTOMAKE

AC_CONFIG_MACRO_DIR([m4])

AC_CONFIG_SRCDIR([cgen.asd])
AC_CONFIG_HEADER([config.h])
AC_CONFIG_FILES(Makefile
				util/build/dump-cgen.lisp    util/build/dump-cugen.lisp util/build/dump-cxxgen.lisp
				util/build/dump-glslgen.lisp util/build/dump-multi.lisp util/build/dump-oclgen.lisp
				util/build/dump-shgen.lisp)

AC_PROG_CC


##
## find a compatible lisp.
## we are currently quite focused on sbcl.
##
AC_CHECK_PROGS(LISP_PROG, [sbcl lisp], no)
if test "x$LISP_PROG" == "xno" ; then
	AC_MSG_ERROR([Cannot find any suitable lisp.])
fi
AC_SUBST([LISP_PROG])


##
## provide a means to compile programs with larger memory areas.
##
AC_ARG_WITH([dynamic-space-size],
			[AS_HELP_STRING([--with-dynamic-space-size=MB],
							[Set other than default dynamic heap size. Only implemented for sbcl at the moment.])],
			 dynamic_space_size_request=$withval, dynamic_space_size_request="no")
#DYNAMIC_SPACE_SPEC=
#if test "x$LISP_PROG" == "xsbcl" -a ! "x$dynamic_space_size_request" == "xno"; then
DYNAMIC_SPACE_SPEC="--dynamic-space-size 16384"
#fi
AC_SUBST([DYNAMIC_SPACE_SPEC])



AC_OUTPUT
