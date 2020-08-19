#!/bin/bash

clang++ -std=c++14 -emit-llvm -fno-discard-value-names VelocitySmoothing.cpp -c -o PUT_.bc
clang++ -std=c++14 -emit-llvm -fno-discard-value-names test_velocity_smoothing_mcdc_symbolic.cpp -c -o test_PUT.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link PUT_.bc test_PUT.bc -o PUT.bc

#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/opt -mem2reg PUT_.bc > PUT.bc
#opt  -mem2reg PUT_.bc -o PUT.bc
#clang -emit-llvm -fno-discard-value-names test_header.c -c -o PUT.bc

/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT.bc -o PUT.ll
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/opt -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib -STGInstrumenter PUT.bc -o IPUT.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis IPUT.bc -o IPUT.ll

clang++ -std=c++14 -emit-llvm stg_lib/stg.cpp -c -o symbolicstate.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link IPUT.bc symbolicstate.bc -o linked.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis linked.bc -o linked.ll
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llc -filetype=obj linked.bc
clang++ -o a.out  linked.o
./a.out