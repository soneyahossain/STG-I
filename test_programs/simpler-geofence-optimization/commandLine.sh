#!/bin/bash

# Step 1:
# generate bicode for the the system under test; if there are multimple files emit llvm bitcode first and then link all of them together before running STG-I instrumentation Pass
# if program under test is a C file run ( clang -emit-llvm -fno-discard-value-names put.c -S -o PUT_.bc ) command, and rest of the steps should be same

# if use -O0 , use -Xclang -disable-O0-optnone flag so that IR can be optimized later if required

clang++ -std=c++14 -O0 -emit-llvm -fno-discard-value-names  simpler_geofence.cpp -c -o PUT.bc
#clang++ -std=c++14 -O1 -emit-llvm -fno-discard-value-names simpler_geofence.cpp -c -o PUT1.bc
clang++ -std=c++14 -O2 -emit-llvm -fno-discard-value-names simpler_geofence.cpp -c -o PUT2.bc
#clang++ -std=c++14 -O3 -emit-llvm -fno-discard-value-names simpler_geofence.cpp -c -o PUT3.bc

#clang++ -std=c++14 -Oz -emit-llvm -fno-discard-value-names simpler_geofence.cpp -c -o PUTz.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT.bc -o PUT.ll
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT1.bc -o PUT1.ll

/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT2.bc -o PUT2.ll
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT3.bc -o PUT3.ll
#/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUTz.bc -o PUTz.ll


# Step 2:
# instrument linked symtem under test by running STG-I pass
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/opt -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib -STGInstrumenter PUT2.bc -o IPUT.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis IPUT.bc -o IPUT.ll

# Step 3:
# generate llvm bitcode for stg library ( notice here that we dont instrument these libraries, we only instrument system under test )
clang++ -std=c++14 -emit-llvm stg_lib/stg.cpp -c -o symbolicstate.bc


# Step 4:
# link symtem under test and stg library together
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link IPUT.bc symbolicstate.bc -o linked.bc

# below command is not really necessary, but it generates a readable version of the bitcode for debugging purspose
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis linked.bc -o linked.ll


# Step 5:
# The llc command compiles LLVM source inputs into assembly language for a specified architecture.
# The assembly language output can then be passed through a native assembler and linker to generate a native executable.
# -filetype=obj flag is used for native object files ('.o')
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llc -filetype=obj linked.bc

# Step 6:
# generate executable file using clang command
clang++ -o a.out  linked.o


# Step 7:
#run executable , (one can run this executable multiple time without the need to instrument it every time, instrumenantion is required to perform only once )
./a.out mcdc.txt