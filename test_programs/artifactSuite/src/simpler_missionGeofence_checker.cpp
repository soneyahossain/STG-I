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
** Sebastian: 10/21/20
**    Now it consumes a mission, not just a waypoint
*/  

#include <stdio.h>
#include "simpler_mission.h"

bool insideFence(int  lat, int lon, 
    bool inclusion, 
    int high_lat, int  low_lat, int high_lon, int low_lon)
{ 
    bool  inside = false;
    
    // Very limited check 
	if (lon   > low_lon && lon < high_lon )
        if (lat < high_lat && lat > low_lat)
            inside = true;

    if(!inclusion) // exclusion geofence area - must remain outside
    {
        if (inside){  
            inside = false;
        }
        else{
            inside = true;
        }
    }
	return inside;
} 


// Takes a point, a fence type, and 2 points defining a rectangular fence, and it returns if the point is  acceptable given that fence
bool checkGeofence(const mission_s &mission,
    bool inclusion,  
    int high_lat, int  low_lat, int high_lon, int low_lon)
{
	bool acceptable = true;

	/* Go through all waypoints */
	for (int i = 0; i < mission.count; i++) 
	{
        // quick vertical ceiling check
	    if (mission.items[i].altitude > MAX_VERTICAL_ALTITUDE) 
        	acceptable = false;

        acceptable = acceptable && insideFence(mission.items[i].lat, mission.items[i].lon, inclusion, high_lat, low_lat, high_lon, low_lon);
	}

    return acceptable;
}

 


/* OLD TESTS SAMPLES  -- new ones need a mission structure like the ones for simpler_waypoint...

int main(){

    // the following could be transformed into test cases
    // or the variables to call checkGeofence made symbolic as per ...  stg_sym()
 
    printf("Inside/accept: 38, 78, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, true,  79, 35, 85, 35));
    printf("Outside/reject: 38, 100, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, true,  79, 35, 85, 35));
    printf("Outside but exc/accept: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, false,  79, 35, 85, 35));
    printf("Inside but exc/reject: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, false,  79, 35, 85, 35));
    printf("Inside but too high/reject: 38, 78, 1000, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 1000, true,  79, 35, 85, 35));

}

*/