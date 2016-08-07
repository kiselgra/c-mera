all: message clean c-tests cxx-tests count clean-post

.PHONY: c-tests cxx-tests count clean clean-post message


message:
	@echo "\nRunning C-Mera tests"

### c tests
### all tests start with c. and end with .lisp

.PHONY: c-tests-pre
c-tests-pre:
	@echo "\nFor C"
c-tests: c-tests-pre
# ...
c-test-files = 



### c++ tests
### all tests start with cxx. and end with .lisp

.PHONY: cxx-tests-pre ns-tests-pre

ns-test-files = $(wildcard cxx.namespace.*.lisp)
ns-results = $(ns-test-files:%.lisp=%.ok)
ns-tests-pre:
	@echo "- Namespaces:"
ns-tests: ns-tests-pre $(ns-results)

cxx-tests-pre:
	@echo "\nFor C++"
cxx-tests: cxx-tests-pre ns-tests

cxx-test-files = $(ns-test-files)




###

all-test-files = $(c-test-files) $(cxx-test-files)


### c++

cxx.%.cpp: cxx.%.lisp
	@cm c++ $< -o $@ 2>/dev/null || ( echo '#include <stdio.h>\nint main() { printf("cm compile error"); return 0; }' > $@; chmod +x $@ )

cxx.%.run: cxx.%.cpp
	@g++ -std=c++11 $< -o $@

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
              $(all-test-files:%.lisp=.%.fail)

clean:
	@echo Cleaning test directory
	@rm -f $(clean_files)
clean-post:
	@echo Cleaning test directory
	@rm -f $(clean_files)
