GOOGLE_TEST_LIB = gtest
GOOGLE_TEST_INCLUDE = /usr/src/gtest/include    
LIB_DIR=stgi

CC = clang++ -std=c++14
CFLAGS  = -c -Wall -I $(GOOGLE_TEST_INCLUDE)
LD_FLAGS = -L /usr/local/lib -l $(GOOGLE_TEST_LIB) -l pthread
LLVM_FLAGS= -emit-llvm -fno-discard-value-names -S
#LLVM_INSTRMNT_FLAGS= -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib
LLVM_INSTRMNT_FLAGS= -load=${STGI_LIB}/LLVMSTGInstrumenter.so

BITCODES = stg.ll classify.ll classify_test.ll
TARGET = classify.out


default: $(TARGET)


test: classify.out
	./classify.out

classify.out: classifier.o
	$(CC) -o classify.out  classifier.o $(LD_FLAGS)

classifier.o: classifier.ll
	llc -filetype=obj classifier.ll

classifier.ll:  $(BITCODES)
	llvm-link  -o classifier.ll $(BITCODES)

classify_test.ll: classify_test.cpp classify.hpp $(LIB_DIR)/stg.h #do not instrument test drive
	$(CC) $(CFLAGS) $(LLVM_FLAGS) classify_test.cpp -o classify_test.bc
	opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter -ignore-instrmnt-flag=false classify_test.bc -o classify_test.ll

stg.ll: $(LIB_DIR)/stg.cpp $(LIB_DIR)/stg.h $(LIB_DIR)/stg.hpp #do not instrument libs
	$(CC) $(CFLAGS) $(LLVM_FLAGS) $(LIB_DIR)/stg.cpp


classify.ll:  classify.cpp classify.hpp
	$(CC) $(CFLAGS) $(LLVM_FLAGS) classify.cpp -o classify.bc
	opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter classify.bc -o classify.ll

clean: #cleaning all object files and the combined file
	$(RM) *.ll *.bc  *.out *.o
