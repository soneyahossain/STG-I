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
#else
	#include "stgi/stg.h"
#endif

bool insideFence(int lat, int lon, int inclusion, int high_lat, int low_lat, int high_lon, int low_lon)
{
	bool inside = false;
	bool inside_=  ((lon > low_lon) && (lon < high_lon) && (lat < high_lat) && (lat > low_lat)) xor (!inclusion);


	// Very limited check
	if (lon >= low_lon && lon <= high_lon)
		if (lat <= high_lat && lat >= low_lat)
			inside = true;

	if (!inclusion) // exclusion geofence area - must remain outside
	{
		if (inside) {
			inside = false;
		}
		else {
			inside = true;
		}
	}


	if(inside==inside_) printf("got same value\n");
    else  printf("got different value\n");
	return inside;
}

// Takes a point, a fence type, and 2 points defining a rectangular fence, and it returns if the point is  acceptable given that fence
bool checkGeofence(int lat, int lon, int altitude, int inclusion,int high_lat, int low_lat, int high_lon, int low_lon)
{
	bool acceptable = true;
	int max_vertical_altitude = 400.0; // 400 ft, as per FAA Small Unmanned Aircraft Regulations (Part 107)


	if (high_lon < low_lon || high_lat < low_lat)   //new condition added
	   return false;

	// quick vertical ceiling check
	if (altitude > max_vertical_altitude) {
		acceptable = false;
	    return false;
	}

	acceptable =  insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);  // changed from acceptable =  acceptable && insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);
	return acceptable;
}

int main(int argc, char **argv)
{
	int lat, lon, altitude, high_lat, low_lat, high_lon, low_lon;
	int inclusion;
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


	// each line of the input file contains test parameters and expected checkGeofence result
	while (fgets(buf, 1000, params))
	{
		int expected;
		if (buf[0] == '#') continue; // # is a comment line


		sscanf(buf, "%d %d %d %d %d %d %d %d %d", &lon, &lat, &altitude, &inclusion, &high_lon, &low_lon, &high_lat, &low_lat, &expected);

		stg_begin_test();
        stg_symbolic_variable_int(&lat, "LAT");
        stg_symbolic_variable_int(&lon, "LON");
        stg_symbolic_variable_int(&altitude, "ALT");
        stg_symbolic_variable_int(&inclusion, "INC");
        stg_symbolic_variable_int(&high_lat, "HLAT");
        stg_symbolic_variable_int(&low_lat, "LLAT");
        stg_symbolic_variable_int(&high_lon, "HLON");
        stg_symbolic_variable_int(&low_lon, "LLON");

	    //printf("lat=%d lon=%d alt=%d inc=%d hlat=%d llat=%d hlon=%d llon=%d expected=%d\n", lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon, expected);

		bool isGeofenced = checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
		stg_end_test();

		bool testPassed = expected ? isGeofenced : !isGeofenced;
		stg_record_test(testPassed);
	}

	fclose(params);
}
