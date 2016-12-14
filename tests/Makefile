all: message clean c-tests cxx-tests count clean-post

.PHONY: c-tests cxx-tests count clean clean-post message


message:
	@echo
	@echo "Running C-Mera tests"

### c tests
### all tests start with c. and end with .lisp

.PHONY: c-tests-pre
c-tests-pre:
	@echo
	@echo "For C"
c-test-files = $(shell ls c.decl.*.lisp c.for.*.lisp c.while.*.lisp c.when.*.lisp c.misc.*.lisp c.meta.*.lisp)
c-test-results = $(c-test-files:%.lisp=%.ok)
c-tests: c-tests-pre $(c-test-results)
# ...



### c++ tests
### all tests start with cxx. and end with .lisp

.PHONY: cxx-tests-pre cxx-ns-tests-pre cxx-misc-tests-pre cxx-decl-tests-pre cxx-meta-tests-pref

cxx-ns-test-files = $(shell ls cxx.namespace.*.lisp)
cxx-ns-results = $(cxx-ns-test-files:%.lisp=%.ok)
cxx-ns-tests-pre:
	@echo "- Namespaces:"
cxx-ns-tests: cxx-ns-tests-pre $(cxx-ns-results)

cxx-decl-test-files = $(shell ls cxx.decl.*.lisp)
cxx-decl-results = $(cxx-decl-test-files:%.lisp=%.ok)
cxx-decl-tests-pre:
	@echo "- Declarations:"
cxx-decl-tests: cxx-decl-tests-pre $(cxx-decl-results)

cxx-misc-test-files = $(shell ls cxx.stmt-expr.*.lisp)
cxx-misc-results = $(cxx-misc-test-files:%.lisp=%.ok)
cxx-misc-tests-pre:
	@echo "- Misc:"
cxx-misc-tests: cxx-misc-tests-pre $(cxx-misc-results)

cxx-meta-test-files = $(shell ls cxx.meta.*.lisp)
cxx-meta-results = $(cxx-meta-test-files:%.lisp=%.ok)
cxx-meta-tests-pre:
	@echo "- Meta:"
cxx-meta-tests: cxx-meta-tests-pre $(cxx-meta-results)

cxx-tests-pre:
	@echo
	@echo "For C++"
cxx-tests: cxx-tests-pre cxx-decl-tests cxx-ns-tests cxx-misc-tests cxx-meta-tests

cxx-test-files = $(cxx-ns-test-files) $(cxx-decl-test-files) $(cxx-misc-test-files) $(cxx-meta-test-files)




###

all-test-files = $(c-test-files) $(cxx-test-files)


### c

c.%.c: c.%.lisp
	@cm c $< -o $@ 2>/dev/null || ( ( echo "#include <stdio.h>"; echo "int main() { printf(\"cm compile error\"); return 0; }" ) > $@; chmod +x $@ )

c.%.run: c.%.c
	@gcc -std=c99 $< -o $@ 2> $(basename $<).clog || (echo 'echo "<compile failure>"' > $@; chmod +x $@)


### c++

cxx.%.cpp: cxx.%.lisp
	@cm c++ $< -o $@ 2>/dev/null || ( ( echo "#include <stdio.h>"; echo "int main() { printf(\"cm compile error\"); return 0; }" ) > $@; chmod +x $@ )

cxx.%.run: cxx.%.cpp
	@g++ -std=c++11 $< -o $@ 2> $(basename $<).clog || (echo 'echo "<compile failure>"' > $@; chmod +x $@)

### run & compare

%.res: %.run
	@./$< > $@

%.exp: %.lisp
	@grep ';;## ' $< | sed -e 's/;;## //' > $@

%.ok: %.res %.exp
	@diff $^ > $$(basename $< .res).diff; ( if test "$$?" = "0"  ; then echo "  ok  "; else touch .$$(basename $< .res).fail; echo "  FAIL"; fi ) > $@
	@echo "$$(cat $@) $$(basename $@ .ok)"

count:
	@echo
	@N=$$(ls -1 .*.fail 2>/dev/null | wc -l); if test "$$N" = "0" ; then echo "All good!" ; else echo "$$N tests failed!"; fi

### clean

clean_files = $(all-test-files:%.lisp=%.exp) \
              $(all-test-files:%.lisp=%.run) \
              $(all-test-files:%.lisp=%.res) \
              $(all-test-files:%.lisp=%.diff) \
              $(all-test-files:%.lisp=%.ok) \
              $(all-test-files:%.lisp=%.c) \
              $(all-test-files:%.lisp=%.cpp) \
              $(all-test-files:%.lisp=%.clog) \
              $(all-test-files:%.lisp=.%.fail)

clean:
	@echo Cleaning test directory
	@rm -f $(clean_files)
clean-post:
	@echo Cleaning test directory
	@rm -f $(clean_files)
