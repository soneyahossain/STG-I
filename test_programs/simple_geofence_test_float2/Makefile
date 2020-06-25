all: a.out
clean:
	-rm *.gcov *.gcda *.gcno >/dev/null 2>&1
	-rm -fr *.o *.bc stg-out* *.exe

#
# build with coverage information without STG
#
geo.cov.exe: simpler_geofence.float2.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage simpler_geofence.float2.cpp -o $@


#
# generate bitcode for program under test
# 
geo.bc: simpler_geofence.float2.cpp
	clang -emit-llvm -fno-discard-value-names $< -c -o $@

#
# link against STGI instrumentation bitcode
# 
geo.stgi.linked.o: geo.bc
	opt -load=${STGI_LIB}/libSTGInstrumenter.so -STGInstrumenter $< -o geo.stgi.bc
	llvm-link geo.stgi.bc ${STGI_LIB}/stg.bc -o geo.stgi.linked.bc
	llc -filetype=obj geo.stgi.linked.bc

geo.exe: geo.stgi.linked.o
	clang++ $< -o $@

