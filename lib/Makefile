all: stg.bc

clean:
	-rm stg.bc

distclean: clean
	-rm $(STGI_LIB)/stg.bc
	-rm $(STGI_INC)/stg.h
	-rm $(STGI_INC)/stg.hpp

stg.bc: stg.cpp stg.h
	clang++ -std=c++14 -emit-llvm $< -c -o $@ #changed from c++11 to c++14

install: all
	sudo cp stg.bc $(STGI_LIB)
	sudo cp stg.h stg.hpp $(STGI_INC)
