#!/bin/bash

filepath="$STGI_EXAMPLE_DIR"/px4_velocity_smoothing

clang++ -std=c++14 -DSTG -I$STGI_INC/.. -emit-llvm -fno-discard-value-names "$filepath"/VelocitySmoothing.cpp -c -o PUT.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter PUT.bc -o IPUT.bc

clang++ -std=c++14 -DSTG -I$STGI_INC/.. -emit-llvm -fno-discard-value-names "$filepath"/test_velocity_smoothing_mcdc.cpp  -c -o test_PUT.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter test_PUT.bc -o test_IPUT.bc

llvm-link IPUT.bc test_IPUT.bc -o I_PUT.bc
#llvm-dis PUT.bc -o PUT.ll

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
#llvm-dis I_PUT.bc -o I_PUT.ll

llvm-link I_PUT.bc "$STGI_LIB"/stg.bc -o linked.bc

#llvm-dis linked.bc -o linked.ll
llc -filetype=obj linked.bc
clang++ -o a.out  linked.o
./a.out