#
# Only use Makefile if you want coverage information via gcov
#
all: fixed_fence.cov.exe
clean:
	-rm *.gcov *.gcda *.gcno >/dev/null 2>&1
	-rm -fr *.o *.bc *.exe

#
# generate bitcode for program under test
#
fixed_fence.bc: fixed_fence.cpp
	clang -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@

#
# link against STGI instrumentation bitcode
#
fixed_fence.stgi.linked.o: fixed_fence.bc
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter $< -o fixed_fence.stgi.bc
	llvm-link fixed_fence.stgi.bc ${STGI_LIB}/stg.bc -o fixed_fence.stgi.linked.bc
	llc -filetype=obj fixed_fence.stgi.linked.bc

fixed_fence.exe: fixed_fence.stgi.linked.o
	clang++ $< -o $@

#
# build with coverage information without STG
#
fixed_fence.cov.exe: fixed_fence.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage fixed_fence.cpp -o $@

