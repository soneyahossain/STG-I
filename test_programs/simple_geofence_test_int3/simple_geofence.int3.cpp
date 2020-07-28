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
	#include "stg_lib/stg.h"
#endif

bool insideFence(int lat, int lon, int inclusion, int high_lat, int low_lat, int high_lon, int low_lon)
{
	bool inside = false;

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
	return inside;
}

// Takes a point, a fence type, and 2 points defining a rectangular fence, and it returns if the point is  acceptable given that fence
bool checkGeofence(int lat, int lon, int altitude, int inclusion,int high_lat, int low_lat, int high_lon, int low_lon)
{
	bool acceptable = true;
	int max_vertical_altitude = 400.0; // 400 ft, as per FAA Small Unmanned Aircraft Regulations (Part 107)


	If (high_lon < low_long || high_lat < low_lat)
	   return false;

	// quick vertical ceiling check
	if (altitude > max_vertical_altitude) {
		acceptable = false;
	}

	acceptable = acceptable && insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);

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

	stg_symbolic_variable(&lat, "LAT");
	stg_symbolic_variable(&lon, "LON");
	stg_symbolic_variable(&altitude, "ALT");
	stg_symbolic_variable(&inclusion, "INC");
	stg_symbolic_variable(&high_lat, "HLAT");
	stg_symbolic_variable(&low_lat, "LLAT");
	stg_symbolic_variable(&high_lon, "HLON");
	stg_symbolic_variable(&low_lon, "LLON");

	// each line of the input file contains test parameters and expected checkGeofence result
	while (fgets(buf, 1000, params)) 
	{
		int expected;
		if (buf[0] == '#') continue; // # is a comment line

		stg_begin_test();

		sscanf(buf, "%d %d %d %d %d %d %d %d %d", &lat, &lon, &altitude, &inclusion, &high_lat, &low_lat, &high_lon, &low_lon, &expected);

		printf("lat=%d lon=%d alt=%d inc=%d hlat=%d llat=%d hlon=%d llon=%d expected=%d\n", lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon, expected);

		//stg_input_int(&lat, lat);
		//stg_input_int(&lon, lon);
		//stg_input_int(&altitude, altitude);
		//stg_input_int(&inclusion, inclusion);
		//stg_input_int(&high_lat, high_lat);
		//stg_input_int(&low_lat, low_lat);
		//stg_input_int(&high_lon, high_lon);
		//stg_input_int(&low_lon, low_lon);

		bool isGeofenced = checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
		stg_end_test();

		bool testPassed = expected ? isGeofenced : !isGeofenced;
		stg_record_test(testPassed);
	}

	fclose(params);
}
