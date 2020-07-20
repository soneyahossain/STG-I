/* 
 ** Simplified version of: https://github.com/PX4/Firmware/blob/master/src/modules/navigator/geofence.cpp
 ** Removed C++ idioms
 ** Replace polygon and circle fences with rectangular fences specified by 2 pairs of lat/long
 ** Used separate variables instead of arrays to make it simpler
 ** Remove utility methods, only kept check fence 
 ** Added main with sample calls, just as placeholder for symbolic or test invocations
 **
 ** Sebastian: 5/7/20
 */

#include <stdlib.h>
#include <stdio.h>

#ifdef NOSTG
	// make STG a no-op
	#define stg_begin_test() {}
	#define stg_end_test() {}
	#define stg_record_test(x) x 
	void stg_symbolic_variable(void *, const char*) {}
	void stg_input_int(int*, int) {}
	void stg_input_float(float*, float) {}
#else
	#include "stg.h"
#endif

// Takes a point, a fence type, and 2 points defining a rectangular fence, and it returns if the point is acceptable given that fence
bool checkGeofence(float lat, float lon, float altitude, float low_alt, float high_alt, float low_lat, float high_lat, float low_lon, float high_lon)
{
	bool inside = true;

	if (altitude < low_alt) inside = false;
	if (altitude > high_alt) inside = false;
	if (lat < low_lat) inside = false;
	if (lat > high_lat) inside = false;
	if (lon < low_lon) inside = false;
	if (lon > high_lon) inside = false;

	return inside;
}

int main(int argc, char **argv)
{
	float lat, lon, altitude, low_alt, high_alt, high_lat, low_lat, high_lon, low_lon;
	FILE *params;
	char buf[1001];

	if (argc != 2) {
		fprintf(stderr, "Missing test parameter file\n");
		exit(1);
	}
	else {
		params = fopen(argv[1], "r");
		if (!params) {
			fprintf(stderr, "Invalid file specified\n");
			exit(1);
		}
	}

	// lat/lon position of drone is symbolic
	stg_symbolic_variable(&lat, "LAT");
	stg_symbolic_variable(&lon, "LON");

	// everything else is fixed
	
	// fixed altitude
	altitude = 200;

	// fixed fence 
	low_lat = 70;
	high_lat = 80;
	low_lon =150;
	high_lon = 170;
	low_alt = 0;
	high_alt = 400;   // 400 ft, as per FAA Small Unmanned Aircraft Regulations (Part 107)

	// each line of the input file contains test parameters and expected checkGeofence result
	while (fgets(buf, 1000, params))
	{
		int expected;
		if (buf[0] == '#') continue; // # is a comment line

		stg_begin_test();

		sscanf(buf, "%f %f %d", &lat, &lon, &expected);
		/*
		stg_input_int(&lat, lat);
		stg_input_int(&lon, lon);
		*/

	    	printf("lat=%f lon=%f alt=%f lalt=%f halt=%f llat=%f hlat=%f llon=%f hlon=%f expected=%d\n", lat, lon, altitude, low_alt, high_alt, low_lat, high_lat, low_lon, high_lon, expected);

//		bool isGeofenced = checkGeofence(lat, lon, altitude, low_alt, high_alt, low_lat, high_lat, low_lon, high_lon);
		bool isGeofenced = checkGeofence(lat, lon, 200, 0, 400, 70, 80, 150, 170);
		
		stg_end_test();

		bool testPassed = expected ? isGeofenced : !isGeofenced;
		stg_record_test(testPassed);
	}

	fclose(params);
}
