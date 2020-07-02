#
# Only use Makefile if you want coverage information via gcov
#
all: geo.cov.exe
clean:
	-rm *.gcov *.gcda *.gcno >/dev/null 2>&1
	-rm -fr *.o *.bc *.exe

#
# build with coverage information without STG
#
geo.cov.exe: simpler_geofence.float2.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage simpler_geofence.float2.cpp -o $@

