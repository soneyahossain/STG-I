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

#include <stdio.h>
#include "stg.h"

bool insideFence(int lat, int lon, bool inclusion, int high_lat, int low_lat, int high_lon, int low_lon)
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
bool checkGeofence(int lat, int lon, int altitude, bool inclusion,
    int high_lat, int low_lat, int high_lon, int low_lon)
{
    bool acceptable = true;
    int max_vertical_altitude = 400;

    // quick vertical ceiling check
    if (altitude > max_vertical_altitude) {
        acceptable = false;
    }

    acceptable = acceptable && insideFence(lat, lon, inclusion, high_lat, low_lat, high_lon, low_lon);

    return acceptable;
}

int main()
{

    // the following could be transformed into test cases
    // or the variables to call checkGeofence made symbolic as per ...  stg_sym()
    int a, b, c, d, e, f, g;
    int test_array[10];

    stg_symbolic_variable(&a, "S0");
    stg_symbolic_variable(&b, "S1");
    stg_symbolic_variable(&c, "S2");
    stg_symbolic_variable(&d, "S3");
    stg_symbolic_variable(&e, "S4");
    stg_symbolic_variable(&f, "S5");
    stg_symbolic_variable(&g, "S6");

    //stg_symbolic_array(&test_array, "int", 2, "S_arr");

    // associates concrete values for test with symbolic addresses of
    // the indicated type, and initializes recording of symbolic states

    stg_begin_test();

    stg_input_int(&a, 38);
    stg_input_int(&b, 78);
    stg_input_int(&c, 100);
    stg_input_int(&d, 79);
    stg_input_int(&e, 35);
    stg_input_int(&f, 85);
    stg_input_int(&g, 35);

    stg_assert(checkGeofence(a, b, c, true, d, e, f, g));
    // emits the PC to a file for counting, and resets for another test
    stg_end_test();

    stg_begin_test();
    stg_input_int(&a, 38);
    stg_input_int(&b, 100);
    stg_input_int(&c, 100);
    stg_input_int(&d, 79);
    stg_input_int(&e, 35);
    stg_input_int(&f, 85);
    stg_input_int(&g, 35);

    // now start with a second test, this time one expected to fail
    //checkGeofence(a, b, c, true, d, e, f, g);

    stg_assert(checkGeofence(a, b, c, true, d, e, f, g));
    stg_end_test();
}
