#
# Only use Makefile if you want coverage information via gcov
#
all: geo.cov.exe
clean:
	-rm *.gcov *.gcda *.gcno >/dev/null 2>&1
	-rm -fr *.o *.bc stg-out* *.exe

#
# build with coverage information without STG
#
geo.cov.exe: simple_geofence.int2.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage $< -o $@

