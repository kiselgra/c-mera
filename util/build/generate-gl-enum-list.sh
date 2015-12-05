#!/bin/bash
echo '(in-package :cg-user)'

gl_enums=$(xmlstarlet sel -t  -m '//enum/@name' -v . -n "$1" | sort | uniq)
gl_enums_wo_leading_numbers=$((for f in $gl_enums ; do echo $f ; done ) | grep -v 'GL_[0123456789]')

echo '(use-variables '
for id in $gl_enums ; do
	echo $id | sed -e 's/.*/  |\L&|/'
done
echo ')'

echo '(defpackage :gl'
echo '  (:use :cg-user)'
echo '  (:export '
for id in $gl_enums_wo_leading_numbers ; do
	echo $id | sed -e 's/GL_\(.*\)/    :\1/' | sed -e 's/_/-/g'
done
echo '    ))'

# sadly sbcl can't handle it if we put the whole list in a progn (to shorten copious compiler output)
for id in $gl_enums_wo_leading_numbers ; do
    lhs="$(echo $id | sed -e 's/GL_\(.*\)/\L\1/' -e 's/_/-/g')"
    rhs="$(echo $id | sed -e 's/.*/|\L&|/')"
    echo "(defparameter gl::$lhs cg-user::$rhs)"
done

