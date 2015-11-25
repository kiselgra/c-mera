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

AC_CHECK_PROGS(LISP_PROG, [sbcl lisp], no)
if test "x$LISP_PROG" == "xno" ; then
	AC_MSG_ERROR([Cannot find any suitable lisp.])
fi
AC_SUBST(LISP_PROG)

AC_OUTPUT
