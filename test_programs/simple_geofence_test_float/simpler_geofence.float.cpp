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

#include <stdio.h>
#include "stg.h"

bool insideFence(float lat, float lon, bool inclusion, float high_lat, float low_lat, float high_lon, float low_lon)
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
bool checkGeofence(float lat, float lon, float altitude, bool inclusion,
    float high_lat, float low_lat, float high_lon, float low_lon)
{
    bool acceptable = true;
    float max_vertical_altitude = 400.0;

    // quick vertical ceiling check
    if (altitude > max_vertical_altitude) {
        acceptable = false;
    }

    acceptable = acceptable && insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);

    return acceptable;
}

int main()
{
    float lat, lon, altitude, high_lat, low_lat, high_lon, low_lon;

    stg_symbolic_variable(&lat, "LAT");
    stg_symbolic_variable(&lon, "LON");
    stg_symbolic_variable(&altitude, "ALT");
    stg_symbolic_variable(&high_lat, "HLAT");
    stg_symbolic_variable(&low_lat, "LLAT");
    stg_symbolic_variable(&high_lon, "HLON");
    stg_symbolic_variable(&low_lon, "LLON");

    // associates concrete values for test with symbolic addresses of
    // the indicated type, and initializes recording of symbolic states

    // TEST #1
    stg_begin_test();

    stg_input_float(&lat, 38.0);
    stg_input_float(&lon, 78.0);
    stg_input_float(&altitude, 100.0);
    stg_input_float(&high_lat, 79.0);
    stg_input_float(&low_lat, 35.0);
    stg_input_float(&high_lon, 85.0);
    stg_input_float(&low_lon, 35.0);

    stg_assert(checkGeofence(lat, lon, altitude, true, high_lat, low_lat, high_lon, low_lon));
    stg_end_test();

    // TEST #1
    // now start with a second test, this time one expected to fail
    stg_begin_test();
    stg_input_float(&lat, 38.0);
    stg_input_float(&lon, 100.0);
    stg_input_float(&altitude, 100.0);
    stg_input_float(&high_lat, 79.0);
    stg_input_float(&low_lat, 35.0);
    stg_input_float(&high_lon, 85.0);
    stg_input_float(&low_lon, 35.0);

    stg_assert(checkGeofence(lat, lon, altitude, true, high_lat, low_lat, high_lon, low_lon));
    stg_end_test();
}
