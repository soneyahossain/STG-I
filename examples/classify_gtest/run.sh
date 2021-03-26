#!/bin/bash
# $STGI_EXAMPLE_DIR
#echo $STGI_LIB


filepath="$STGI_EXAMPLE_DIR"/classify_gtest

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I /usr/src/gtest/include -emit-llvm -fno-discard-value-names "$filepath"/classify.cpp -o PUT.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter PUT.bc -o IPUT.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I /usr/src/gtest/include -emit-llvm -fno-discard-value-names "$filepath"/classify_test.cpp -o classify_test.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter -partial-instrument=true classify_test.bc -o Iclassify_test.bc
llvm-link  IPUT.bc Iclassify_test.bc "$STGI_LIB"/stg.bc -o linked.bc
llc -filetype=obj linked.bc
clang++ -o a.out  linked.o -L /usr/local/lib -l gtest -l pthread
./a.out

rm -rf *.bc
rm -rf *.o
rm -rf *.out