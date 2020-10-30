/*
* Simplified version of:
*       https://github.com/PX4/Firmware/blob/master/src/modules/navigator/mission_feasibility_checker.cpp
* Just left the method to check Position altitude
* Simplification of dependent data structures into simpler_mission.h
* TODO: add global array of mission waypoints
**
** Sebastian: 10/21/20
*/

 
#include <math.h>
#include <stdio.h>
#include "simpler_mission.h"


/*
*  SE Comment - 10/25/20
*  Procedure checks if the altitude of each waypoint is valid (above home_alt, and 
*    if it is set relative to home then home needs to be valid)
*  home_alt is the altitude at the home waypoint
*  home_alt_valid is a boolean that is false if the home altitude is not set
*/
bool checkHomePositionAltitude(const mission_s &mission, float home_alt, bool home_alt_valid)
{




	/* Check if all waypoints are above the home altitude */
	for (size_t i = 0; i < mission.count; i++) {



	    printf("from function %p\n",&mission.items[i].altitude);
 
 		/* reject relative alt without home set */
		if (mission.items[i].altitude_is_relative && !home_alt_valid) {
				return false;
		}

		/* calculate the global waypoint altitude */
		float wp_alt = (mission.items[i].altitude_is_relative) ? mission.items[i].altitude + home_alt : mission.items[i].altitude;

		/* reject if waypoint below home */
		if (home_alt > wp_alt) 
			return false;
	}

	return true;
}





/* Tests 

int main()
{

	struct mission_s mission;

	// Sample test with a mission of 3 valid altitude waypoints  
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[0].altitude_is_relative = false;
	mission.items[1].lat = 51;
	mission.items[1].lon = 51;
	mission.items[1].altitude = 510;
	mission.items[1].altitude_is_relative = false;
	mission.items[2].lat = 52;
	mission.items[2].lon = 52;
	mission.items[2].altitude = 520;
	mission.items[2].altitude_is_relative = false;
	printf("Check 3 waypoints: %s (valid mission)\n", checkHomePositionAltitude(mission, 20, true)?"valid":"invalid"); 
 
 	// Sample test with a mission of 1 invalid altitude setup waypoint  
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[0].altitude_is_relative = false;
	mission.items[1].lat = 51;
	mission.items[1].lon = 51;
	mission.items[1].altitude = 510;
	mission.items[1].altitude_is_relative = false;
	mission.items[2].lat = 52;
	mission.items[2].lon = 52;
	mission.items[2].altitude = 520;
	mission.items[2].altitude_is_relative = true; 
	printf("Check 3 waypoints: %s (invalid mission, last point is relative but home is not set)\n", checkHomePositionAltitude(mission, 20, false)?"valid":"invalid"); 


 	// Sample test with a mission with second wapoint invalid altitude below home  
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[0].altitude_is_relative = false;
	mission.items[1].lat = 51;
	mission.items[1].lon = 51;
	mission.items[1].altitude = 10;
	mission.items[1].altitude_is_relative = false;
	mission.items[2].lat = 52;
	mission.items[2].lon = 52;
	mission.items[2].altitude = 520;
	mission.items[2].altitude_is_relative = false; 
	printf("Check 3 waypoints: %s (invalid mission, 2nd point below home)\n", checkHomePositionAltitude(mission, 20, true)?"valid":"invalid"); 

} 

*/