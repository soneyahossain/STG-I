LLVM_FLAGS= -emit-llvm -fno-discard-value-names -S

all: stg.ll

clean:
	-rm stg.ll

distclean:
	-sudo rm $(STGI_LIB)/stg.ll
	-sudo rm $(STGI_INC)/stg.h
	-sudo rm $(STGI_INC)/stg.hpp

stg.ll: stg.cpp stg.h
	clang++ -std=c++11 $(LLVM_FLAGS) $< -c -o $@

install: all
	sudo mkdir $(STGI_LIB) 2>/dev/null || true
	sudo mkdir $(STGI_INC) 2>/dev/null || true
	sudo -E cp stg.ll $(STGI_LIB)
	sudo -E cp stg.h stg.hpp $(STGI_INC)

