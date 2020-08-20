OddEven: OddEven.cpp
	clang++ -O0 OddEven.cpp -o OddEven

clean:
	-rm OddEven

#
# generate bitcode for program under test
#
OddEven.bc: OddEven.cpp
	clang -O0 -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@
	llvm-dis $@ -o $<.ll

#
# link against STGI instrumentation bitcode
#
OddEven.stgi.linked.o: OddEven.bc
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter $< -o OddEven.stgi.bc
	llvm-link OddEven.stgi.bc ${STGI_LIB}/stg.bc -o OddEven.stgi.linked.bc
	llc -filetype=obj OddEven.stgi.linked.bc

OddEven.exe: OddEven.stgi.linked.o
	clang++ $< -o $@
