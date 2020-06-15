
clang -emit-llvm -fno-discard-value-names classify.cpp -c -o PUT.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis PUT.bc -o PUT.ll

/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/opt -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrument.dylib -symbTraceInstrumentation PUT.bc -o IPUT.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-dis IPUT.bc -o IPUT.ll

clang++ -std=c++11 -emit-llvm ../stg_lib/stg.cpp -c -o stg.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llvm-link IPUT.bc stg.bc -o linked.bc
/Users/soneyabintahossain/llvm_project/llvm-project/build/bin/llc -filetype=obj linked.bc
clang++ -o a.out  linked.o
./a.out