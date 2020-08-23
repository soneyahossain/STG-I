OddEven: OddEven.cpp
	clang++ -I$(STGI_INC) -O0 OddEven.cpp -o OddEven

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

#clang++ -o a.out  linked.o
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/opt -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib -STGInstrumenter PUT.bc -o IPUT.bc
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link IPUT.bc symbolicstate.bc -o linked.bc
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis linked.bc -o linked.ll
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llc -filetype=obj linked.bc
