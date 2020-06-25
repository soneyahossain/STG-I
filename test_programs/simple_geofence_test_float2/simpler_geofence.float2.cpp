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
	#define stg_assert(x) x 
	void stg_symbolic_variable(void *, const char*) {}
	void stg_input_float(float*, float) {}
	void stg_input_int(int*, int) {}
#else
	#include "stgi/stg.h"
#endif

bool insideFence(float lat, float lon, int inclusion, float high_lat, float low_lat, float high_lon, float low_lon)
{
	bool inside = false;

	// Very limited check
	if (lon > low_lon && lon < high_lon)
		if (lat < high_lat && lat > low_lat)
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
bool checkGeofence(float lat, float lon, float altitude, int inclusion,
				float high_lat, float low_lat, float high_lon, float low_lon)
{
	bool acceptable = true;
	float max_vertical_altitude = 400.0; // 400 ft, as per FAA Small Unmanned Aircraft Regulations (Part 107)

	// quick vertical ceiling check
	if (altitude > max_vertical_altitude) {
		acceptable = false;
	}

	acceptable = acceptable && insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);

	return acceptable;
}

int main(int argc, char **argv)
{
	float lat, lon, altitude, high_lat, low_lat, high_lon, low_lon;
	int inclusion;
	int expected;
	FILE *params;
	char buf[1001];

	if (argc != 2) {
		fprintf(stderr, "Missing test parameter file\n");    
		exit(1);
	}
	else {
		params = fopen(argv[1], "r");
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
		if (buf[0] == '#') continue; // # is a comment line
		sscanf(buf, "%f %f %f %d %f %f %f %f %d", &lat, &lon, &altitude, &inclusion, &high_lat, &low_lat, &high_lon, &low_lon, &expected);

		printf("lat=%f lon=%f alt=%f inc=%d hlat=%f llat=%f hlon=%f llon=%f expected=%d\n", 
			lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon, expected); 

		stg_begin_test();

		stg_input_float(&lat, lat);
		stg_input_float(&lon, lon);
		stg_input_float(&altitude, altitude);
		stg_input_int(&inclusion, inclusion);
		stg_input_float(&high_lat, high_lat);
		stg_input_float(&low_lat, low_lat);
		stg_input_float(&high_lon, high_lon);
		stg_input_float(&low_lon, low_lon);

		if (expected)
				stg_assert(checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon));
		else
				stg_assert(!checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon));

		stg_end_test();
	}

	fclose(params);
}
