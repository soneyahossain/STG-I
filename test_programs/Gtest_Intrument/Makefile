
GOOGLE_TEST_LIB = gtest
GOOGLE_TEST_INCLUDE = /usr/local/include

LIB_DIR=../../lib/
LLVM_DIR=/Users/soneyabintahossain/llvm_project/llvm-project/build/bin


CC = clang++ -std=c++14
CFLAGS  = -c -Wall -I $(GOOGLE_TEST_INCLUDE)
LD_FLAGS = -L /usr/local/lib -l $(GOOGLE_TEST_LIB) -l pthread
LLVM_FLAGS= -emit-llvm -fno-discard-value-names -S
LLVM_INSTRMNT_FLAGS= -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib

BITCODES = stg.ll test.ll foo.ll
TARGET = test


default: $(TARGET)

test: test_out.o
	$(CC) -o test_out.out  test_out.o $(LD_FLAGS)
	./test_out.out

test_out.o: test_out.ll
	$(LLVM_DIR)/llc -filetype=obj test_out.ll

test_out.ll:  $(BITCODES)
	$(LLVM_DIR)/llvm-link  -o test_out.ll $(BITCODES)

test.ll: test.cpp  $(LIB_DIR)/stg.h $(LIB_DIR)/distribution.hpp def.hpp   #do not instrument test drive
	$(CC) $(CFLAGS) $(LLVM_FLAGS) test.cpp -o test.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter -ignore-instrmnt-flag=false test.bc -o test.ll


foo.ll: foo.cpp def.hpp
	$(CC) $(CFLAGS) $(LLVM_FLAGS) foo.cpp -o foo.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter foo.bc -o foo.ll






stg.ll: $(LIB_DIR)/stg.cpp $(LIB_DIR)/stg.h $(LIB_DIR)/stg.hpp #do not instrument libs
	$(CC) $(CFLAGS) $(LLVM_FLAGS) $(LIB_DIR)/stg.cpp


clean: #cleaning all object files and the combined file
	$(RM) *.ll test.out