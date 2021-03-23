#!/bin/bash

file=$1
tests=$2

echo "testing file: $file"
# Step 1:
# generate bicode for the the system under test; if there are multimple files emit llvm bitcode first and then link all of them together before running STG-I instrumentation Pass
# if program under test is a C file run ( clang -emit-llvm -fno-discard-value-names put.c -S -o PUT_.bc ) command, and rest of the steps should be same

clang++ -std=c++14 -DSTG -I$STGI_INC/.. -emit-llvm -fno-discard-value-names "$file" -c -o PUT.bc
#clang++ -std=c++14 -emit-llvm -fno-discard-value-names test_velocity_smoothing_mcdc_symbolic.cpp  -c -o test_PUT.bc
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link PUT_.bc test_PUT.bc -o PUT.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
#llvm-dis PUT.bc -o PUT.ll

# Step 2:
# instrument linked symtem under test by running STG-I pass
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter PUT.bc -o IPUT.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
#llvm-dis IPUT.bc -o IPUT.ll

# Step 3:
# generate llvm bitcode for stg library ( notice here that we dont instrument these libraries, we only instrument system under test )
#clang++ -std=c++14 -emit-llvm ../../lib/stg.cpp -c -o symbolicstate.bc


# Step 4:
# link symtem under test and stg library together
llvm-link IPUT.bc "$STGI_LIB"/stg.bc -o linked.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
#$LLVM_PATH/llvm-dis linked.bc -o linked.ll

# Step 5:
# The llc command compiles LLVM source inputs into assembly language for a specified architecture.
# The assembly language output can then be passed through a native assembler and linker to generate a native executable.
# -filetype=obj flag is used for native object files ('.o')
llc -filetype=obj linked.bc

# Step 6:
# generate executable file using clang command
clang++ -o a.out  linked.o

# Step 7:
#run executable , (one can run this executable multiple time without the need to instrument it every time, instrumenantion is required to perform only once )
./a.out "$tests"

rm -rf *.bc
rm -rf *.o
rm -rf *.out
