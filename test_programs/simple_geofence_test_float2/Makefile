all: a.out
clean:
	-rm a.out *.gcov *.gcda *.gcno >/dev/null 2>&1

#
# build with coverage information
#
a.out: simpler_geofence.float2.cpp 
	g++ -DNOSTG -fprofile-arcs -ftest-coverage simpler_geofence.float2.cpp 


