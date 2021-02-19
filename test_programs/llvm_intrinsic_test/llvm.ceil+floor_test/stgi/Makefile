all: stg.bc

clean:
	-rm stg.bc

distclean:
	-sudo rm $(STGI_LIB)/stg.bc
	-sudo rm $(STGI_INC)/stg.h
	-sudo rm $(STGI_INC)/stg.hpp

stg.bc: stg.cpp stg.h
	clang++ -std=c++11 -emit-llvm $< -c -o $@

install: all
	sudo mkdir $(STGI_LIB) 2>/dev/null || true
	sudo mkdir $(STGI_INC) 2>/dev/null || true
	sudo -E cp stg.bc $(STGI_LIB)
	sudo -E cp stg.h stg.hpp $(STGI_INC)

