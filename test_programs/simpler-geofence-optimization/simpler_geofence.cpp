/* 
** Simplified version of: https://github.com/PX4/Firmware/blob/master/src/modules/navigator/geofence.cpp
** Removed C++ idioms
** Removed floats and double, use only boolean and ints  
** Remove external dependencies
** Replace polygon and circle fences with rectangular fences specified by 2 pairs of lat/long
** Used separate variables instead of arrays to make it simpler
** Remove utility methods, only kept check fence 
** Added main with sample calls, just as placeholder for symbolic or test invocations
**
** Sebastian: 5/7/20
*/
#include <stdlib.h>
#include <stdio.h>
#include "stg_lib/stg.h"
#include "stg_lib/distribution.hpp"

bool insideFence(int lat, int lon, bool inclusion, int high_lat, int low_lat, int high_lon, int low_lon)
{
    bool inside = false;
    //bool inside_=  ((lon > low_lon) && (lon < high_lon) && (lat < high_lat) && (lat > low_lat)) xor (!inclusion);


    // Very limited check
    if (lon > low_lon && lon < high_lon){
        if (lat < high_lat && lat > low_lat)
            inside = true;
    }

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
bool checkGeofence(int lat, int lon, int altitude, bool inclusion,int high_lat, int low_lat, int high_lon, int low_lon)
{

 /*
    bool acceptable = true;
    int max_vertical_altitude = 400;

    // quick vertical ceiling check
    if (altitude > max_vertical_altitude) {    //
    	acceptable = false;
    }
    //else acceptable = insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);

    acceptable = acceptable &&

    */

    //insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);
    return insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);
}

int main(int argc, char **argv)
{

        int lat, lon, altitude,inclusion, high_lat, low_lat, high_lon, low_lon;


    	stg_symbolic_variable(&lat, "LAT", -100, 100,uniform,0,0);
    	stg_symbolic_variable(&lon, "LON", -100, 100,uniform,0,0);
    	stg_symbolic_variable(&altitude, "ALT", 0, 500,uniform,0,0);
    	stg_symbolic_variable(&inclusion, "INC", 0, 1,uniform,0,0);
    	stg_symbolic_variable(&high_lat, "HLAT", -100, 100,uniform,0,0);
    	stg_symbolic_variable(&low_lat, "LLAT", -100, 100,uniform,0,0);
    	stg_symbolic_variable(&high_lon, "HLON", -100, 100,uniform,0,0);
    	stg_symbolic_variable(&low_lon, "LLON", -100, 100,uniform,0,0);

        stg_begin_test();

        stg_input_int(&lat, 10);
        stg_input_int(&lon,30);
        stg_input_int(&altitude, 200);
        stg_input_int(&inclusion,0 );
        stg_input_int(&high_lat, 20);
        stg_input_int(&low_lat, 5);
        stg_input_int(&high_lon, 40);
        stg_input_int(&low_lon, 20);


        bool isGeofenced = checkGeofence(lat, lon, altitude, false, high_lat, low_lat, high_lon, low_lon);
    	stg_end_test();
    	stg_record_test(isGeofenced);

        return 0;

}
