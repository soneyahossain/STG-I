/*
* Simplified version of:
*       https://github.com/PX4/Firmware/blob/master/src/modules/navigator/mission_feasibility_checker.cpp
* Just left the method to check distance between waypoints (out of about 10 methods within the class)
* Added methods from mission block to make file self-contained
* Added part of mission_item_s from navigation.h to make it self-contained
* Added get_distance_to_next_waypoint from geo/ecl lib
* Simplification of dependent data structures into simpler_mission.h
* Replaced with own  radians <-> >degrees)
**
** Sebastian: 10/21/20
*/
 
#include <math.h>
#include <stdio.h>
#include "simpler_mission.h"


 
float get_distance_to_next_waypoint(double lat_now, double lon_now, double lat_next, double lon_next)
{
	const double lat_now_rad = MPI * lat_now / 180;
	const double lat_next_rad = MPI * lat_next / 180;

	const double d_lat = lat_next_rad - lat_now_rad;
	const double d_lon = MPI * lon_next / 180 - MPI * lon_now / 180;

	const double a = sin(d_lat / 2.0) * sin(d_lat / 2.0) + sin(d_lon / 2.0) * sin(d_lon / 2.0) * cos(lat_now_rad) * cos(lat_next_rad);

	const double c = atan2(sqrt(a), sqrt(1.0 - a));

	return static_cast<float>(CONSTANTS_RADIUS_OF_EARTH * 2.0 * c);
}


bool checkDistancesBetweenWaypoints(const  mission_s &mission, float &max_distance)
{
	if (max_distance <= 0.0f) {
		/* param not set, check is ok */
		return true;
	}

	double last_lat = (double)NAN;
	double last_lon = (double)NAN;
	float last_alt = NAN;

	/* Go through all waypoints */
	for (int i = 0; i < mission.count; i++) 
	{
		/* check distance from current position to item */
		const float dist_between_waypoints = get_distance_to_next_waypoint(mission.items[i].lat, mission.items[i].lon, last_lat, last_lon);

		if (dist_between_waypoints > max_distance) 
				return false;

		/* do not allow waypoints that are literally on top of each other */
		else 
			if (dist_between_waypoints < 0.05f && fabsf(last_alt - mission.items[i].altitude) < 0.05f)
				/* waypoints are at the exact same position,
				 * which indicates an invalid mission and makes calculating
				 * the direction from one waypoint to another impossible. */
				return false;
			
		last_lat = mission.items[i].lat;
		last_lon = mission.items[i].lon;
		last_alt = mission.items[i].altitude;
	}

	/* We ran through all waypoints and have not found any distances between waypoints that are too far. */
	return true;
} 



/* Test Samples 


int main()
{

	struct mission_s mission;

	// Sample test with a mission of 3 waypoints close by 
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[1].lat = 51;
	mission.items[1].lon = 51;
	mission.items[1].altitude = 510;
	mission.items[2].lat = 52;
	mission.items[2].lon = 52;
	mission.items[2].altitude = 520;
	printf("Check 3 waypoints: %d\n", checkDistancesBetweenWaypoints(mission, 400)); 

	// Sample test with a mission of 2 waypoints that are too close 
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[1].lat = 50;
	mission.items[1].lon = 50;
	mission.items[1].altitude = 500;
	printf("Check 2 waypoints that are too close: %d\n", checkDistancesBetweenWaypoints(mission, 400)); 

	// Sample test with a mission of 3 waypoints that break altitude barrier 
	mission.count = 3;
	mission.items[0].lat = 50;
	mission.items[0].lon = 50;
	mission.items[0].altitude = 500;
	mission.items[1].lat = 51;
	mission.items[1].lon = 51;
	mission.items[1].altitude = 10000;
	printf("Check 2 waypoints one is too high: %d\n", checkDistancesBetweenWaypoints(mission, 40)); 

} 

*/