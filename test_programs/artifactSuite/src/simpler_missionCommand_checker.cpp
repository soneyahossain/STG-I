/*
* Simplified version of:
*       https://github.com/PX4/Firmware/blob/master/src/modules/navigator/mission_feasibility_checker.cpp
* Just left the method to check mission items (out of about 10 methods within the class)
* Added simpler_mission.h to contain part of mission_item_s from navigation.h to make it self-contained
* Removed all logging statements
*/
 
#include <math.h>
#include <stdio.h>
#include "simpler_mission.h"

bool checkMissionItemValidity(const mission_s &mission)
{
	// do not allow mission if we find unsupported item
	for (size_t i = 0; i < mission.count; i++) { 

		// check if we find unsupported items and reject mission if so
		if (mission.items[i].nav_cmd != NAV_CMD_IDLE &&
		    mission.items[i].nav_cmd != NAV_CMD_WAYPOINT &&
		    mission.items[i].nav_cmd != NAV_CMD_LOITER_UNLIMITED &&
		    mission.items[i].nav_cmd != NAV_CMD_LOITER_TIME_LIMIT &&
		    mission.items[i].nav_cmd != NAV_CMD_RETURN_TO_LAUNCH &&
		    mission.items[i].nav_cmd != NAV_CMD_LAND &&
		    mission.items[i].nav_cmd != NAV_CMD_TAKEOFF &&
		    mission.items[i].nav_cmd != NAV_CMD_LOITER_TO_ALT &&
		    mission.items[i].nav_cmd != NAV_CMD_VTOL_TAKEOFF &&
		    mission.items[i].nav_cmd != NAV_CMD_VTOL_LAND &&
		    mission.items[i].nav_cmd != NAV_CMD_DELAY &&
		    mission.items[i].nav_cmd != NAV_CMD_CONDITION_GATE &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_JUMP &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_CHANGE_SPEED &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_HOME &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_SERVO &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_LAND_START &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_TRIGGER_CONTROL &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_DIGICAM_CONTROL &&
		    mission.items[i].nav_cmd != NAV_CMD_IMAGE_START_CAPTURE &&
		    mission.items[i].nav_cmd != NAV_CMD_IMAGE_STOP_CAPTURE &&
		    mission.items[i].nav_cmd != NAV_CMD_VIDEO_START_CAPTURE &&
		    mission.items[i].nav_cmd != NAV_CMD_VIDEO_STOP_CAPTURE &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_CONTROL_VIDEO &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_MOUNT_CONFIGURE &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_MOUNT_CONTROL &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_ROI &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_ROI_LOCATION &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_ROI_WPNEXT_OFFSET &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_ROI_NONE &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_CAM_TRIGG_DIST &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_SET_CAM_TRIGG_INTERVAL &&
		    mission.items[i].nav_cmd != NAV_CMD_SET_CAMERA_MODE &&
		    mission.items[i].nav_cmd != NAV_CMD_SET_CAMERA_ZOOM &&
		    mission.items[i].nav_cmd != NAV_CMD_DO_VTOL_TRANSITION) {

			return false;
		}
 
		// check if the mission starts with a land command -- SE: simplified from original condition
		if ((i == 0) && mission.items[i].nav_cmd == NAV_CMD_LAND) 
			return false;
	}

	return true;
}



/* TEST SAMPLES

int main()
{

	struct mission_s mission;

	// Sample test with a mission of 3 waypoints with valid commands 
	mission.count = 3;
	mission.items[0].nav_cmd = NAV_CMD_DO_SET_ROI;
	mission.items[1].nav_cmd = NAV_CMD_LAND;
	mission.items[2].nav_cmd = NAV_CMD_IDLE;
	printf("Check 3 waypoints with valid commands: %s\n", checkMissionItemValidity(mission)?"valid":"invalid"); 

	// Sample test with a mission of 3 waypoints with one invalid commands 
	mission.count = 3;
	mission.items[0].nav_cmd = NAV_CMD_DO_SET_ROI;
	mission.items[1].nav_cmd = NAV_CMD_DO_CONTROL_VIDEO;
	mission.items[2].nav_cmd = 298;
	printf("Check 3 waypoints with one invalid command: %s\n", checkMissionItemValidity(mission)?"valid":"invalid"); 


	// Sample test with a mission of one initial invalid waypoint  
	mission.count = 1;
	mission.items[0].nav_cmd = NAV_CMD_LAND;
	printf("Check a waypoint with initial invalid command: %s\n", checkMissionItemValidity(mission)?"valid":"invalid"); 

}

*/