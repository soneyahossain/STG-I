#
# Only use Makefile if you want coverage information via gcov
#
all: fixed_fence.float.cov.exe
clean:
	-rm *.gcov *.gcda *.gcno >/dev/null 2>&1
	-rm -fr *.o *.bc *.exe *.ll

#
# generate bitcode for program under test
#
fixed_fence.float.bc: fixed_fence.float.cpp
	clang++ -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@
	llvm-dis $@ -o $<.ll

#
# link against STGI instrumentation bitcode
#
fixed_fence.float.stgi.linked.o: fixed_fence.float.bc
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter $< -o fixed_fence.float.stgi.bc
	llvm-link fixed_fence.float.stgi.bc ${STGI_LIB}/stg.bc -o fixed_fence.float.stgi.linked.bc
	llc -filetype=obj fixed_fence.float.stgi.linked.bc

fixed_fence.float.exe: fixed_fence.float.stgi.linked.o
	clang++ $< -o $@

#
# build with coverage information without STG
#
fixed_fence.float.cov.exe: fixed_fence.float.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage fixed_fence.float.cpp -o $@

