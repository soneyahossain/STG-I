GOOGLE_TEST_LIB = gtest
GOOGLE_TEST_INCLUDE = /usr/src/gtest/include    
LIB_DIR=${STGI_HOME}/lib
STGLIB=$(STGI_LIB)/stg.bc

CC = clang++ -std=c++14
CFLAGS  = -c -Wall -I $(GOOGLE_TEST_INCLUDE)
LD_FLAGS = -L /usr/local/lib -l $(GOOGLE_TEST_LIB) -l pthread
LLVM_FLAGS= -emit-llvm -fno-discard-value-names
#LLVM_INSTRMNT_FLAGS= -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib
LLVM_INSTRMNT_FLAGS= -load=${STGI_LIB}/LLVMSTGInstrumenter.so

TARGET = classify.out

default: $(TARGET)

test: classify.out
	./classify.out
	rm -rf *.bc
	rm -rf *.o
	rm -rf *.out

classify.out: classifier.o
	$(CC) -o $@ classifier.o $(LD_FLAGS)

classifier.o: classifier.bc
	llc -filetype=obj classifier.bc

classifier.bc:  IPUT.bc Iclassify_test.bc
	llvm-link -o classifier.bc $^ $(STGLIB)

Iclassify_test.bc: classify_test.cpp classify.hpp # do not instrument test drive
	$(CC) $(CFLAGS) $(LLVM_FLAGS) classify_test.cpp -o classify_test.bc
	opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter -partial-instrument=true classify_test.bc -o Iclassify_test.bc

IPUT.bc:  classify.cpp classify.hpp
	$(CC) $(CFLAGS) $(LLVM_FLAGS) classify.cpp -o PUT.bc
	opt $(LLVM_INSTRMNT_FLAGS) -STGInstrumenter PUT.bc -o IPUT.bc

clean: #cleaning all object files and the combined file
	$(RM) -rf *.ll *.bc  *.out *.o $(TARGET)
