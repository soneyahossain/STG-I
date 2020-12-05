all: clean classify.exe

clean:
	-rm -fr classify.exe *.o *.ll *.bc stg-out*

#
# Generate bit code
#
classify.bc: classify.cpp
	clang -O0 -I$(STGI_INC) -emit-llvm -fno-discard-value-names $< -c -o $@

#
# Link against STGI instrumentation bitcode
#
classify.stgi.linked.o: classify.bc
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter classify.bc -o classify.stgi.bc
	llvm-link classify.stgi.bc ${STGI_LIB}/stg.bc -o classify.stgi.linked.bc
	llc -filetype=obj classify.stgi.linked.bc

#
# Generate output executable
#
classify.exe: classify.stgi.linked.o
	clang++ $< -o $@

