all: stg.bc

clean:
	-rm stg.bc

distclean: clean
	-rm $(STGI_LIB)/stg.bc
	-rm $(STGI_INC)/stg.h
	-rm $(STGI_INC)/stg.hpp

stg.bc: stg.cpp stg.h
	clang++ -std=c++11 -emit-llvm $< -c -o $@

install: all
	cp stg.bc $(STGI_LIB)
	cp stg.h stg.hpp $(STGI_INC)
