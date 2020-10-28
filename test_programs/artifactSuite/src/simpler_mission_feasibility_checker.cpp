/*
* Simplified version of:
*       https://github.com/PX4/Firmware/blob/master/src/modules/navigator/mission_feasibility_checker.cpp
* Simplification of dependent data structures into simpler_mission.h
* Just left the method to invoke lower level checkers
* Remove calls to retrieve home_valid and home_alt_valid and home_alt and made them parameters to method
*/

 
#include <math.h>
#include <stdio.h>
#include "simpler_mission.h"

bool checkMissionFeasible(const mission_s &mission,
		float max_distance_between_waypoints,
		bool home_alt_valid, float home_alt,
		bool inclusion,  int high_lat, int  low_lat, int high_lon, int low_lon)
{
	// trivial case: A mission with length zero cannot be valid
	if ((int)mission.count <= 0) {
		return false;
	}

	bool failed = false;
 
	// first check if we have a valid position
	if (!home_alt_valid) 
		failed = true;
 
	// check if all mission item commands are supported
	failed = failed || !checkMissionItemValidity(mission);
	failed = failed || !checkDistancesBetweenWaypoints(mission, max_distance_between_waypoints);
	failed = failed || !checkGeofence(mission, inclusion, high_lat, low_lat, high_lon, low_lon);  
	failed = failed || !checkHomePositionAltitude(mission, home_alt, home_alt_valid);

	return failed;
}



/* Sample Test */
/*



TEST(MissionCheck, CheckCombined) {

    struct mission_s mission;
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

    ASSERT_EQ(true, checkMissionFeasible (mission, 400, true, 10, true,  79, 35, 85, 35));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}

*/