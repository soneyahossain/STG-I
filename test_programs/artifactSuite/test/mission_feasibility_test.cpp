/* Sample Test */
#include <gtest/gtest.h>
#include "../src/simpler_mission.h"
#include "../../../lib/stg.h"
#include "../../../lib/distribution.hpp"
#include <stdio.h>

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

TEST(MissionCommandCheck, ValidCommand)
{
    struct mission_s mission;

	// Sample test with a mission of 3 waypoints with valid commands
	mission.count = 3;
	mission.items[0].nav_cmd = NAV_CMD_DO_SET_ROI;
	mission.items[1].nav_cmd = NAV_CMD_LAND;
	mission.items[2].nav_cmd = NAV_CMD_IDLE;
	ASSERT_EQ(true, checkMissionItemValidity(mission));
	//printf("Check 3 waypoints with valid commands: %s\n", checkMissionItemValidity(mission)?"valid":"invalid");
}

TEST(MissionCommandCheck, InValidCommand)
{
    struct mission_s mission;
	//Sample test with a mission of 3 waypoints with one invalid commands
	mission.count = 3;
	mission.items[0].nav_cmd = NAV_CMD_DO_SET_ROI;
	mission.items[1].nav_cmd = NAV_CMD_DO_CONTROL_VIDEO;
	mission.items[2].nav_cmd = 298;
	ASSERT_EQ(false, checkMissionItemValidity(mission));
	//printf("Check 3 waypoints with one invalid command: %s\n", checkMissionItemValidity(mission)?"valid":"invalid");
}

TEST(MissionCommandCheck, InValidWaypoint)
{
	//Sample test with a mission of one initial invalid waypoint
	struct mission_s mission;
	mission.count = 1;
	mission.items[0].nav_cmd = NAV_CMD_LAND;
	ASSERT_EQ(false, checkMissionItemValidity(mission));
	//printf("Check a waypoint with initial invalid command: %s\n", checkMissionItemValidity(mission)?"valid":"invalid");

}


TEST(CheckGeofence, InsideInclu)
{

    struct mission_s mission;
 	mission.count = 1;
	mission.items[0].lat = 38;
	mission.items[0].lon = 78;
	mission.items[0].altitude = 100;
	mission.items[0].altitude_is_relative = false;

	ASSERT_EQ(true, checkGeofence(mission,true, 79, 35, 85, 35 ));
	//printf("Inside/accept: 38, 78, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, true,  79, 35, 85, 35));
}

TEST(CheckGeofence, OutsideInclu)
{

    struct mission_s mission;
 	mission.count = 1;
	mission.items[0].lat = 38;
	mission.items[0].lon = 100;
	mission.items[0].altitude = 100;
	mission.items[0].altitude_is_relative = false;

	ASSERT_EQ(false, checkGeofence(mission,true,  79, 35, 85, 35)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
	//printf("Outside/reject: 38, 100, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, true,  79, 35, 85, 35));
}

TEST(CheckGeofence, OutsideExc)
{

    struct mission_s mission;
 	mission.count = 1;
	mission.items[0].lat = 38;
	mission.items[0].lon = 100;
	mission.items[0].altitude = 100;
	mission.items[0].altitude_is_relative = false;

	ASSERT_EQ(true, checkGeofence(mission,false,79, 35, 85, 35)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
	//printf("Outside but exc/accept: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, false,  79, 35, 85, 35));
}

TEST(CheckGeofence, InsideExc)
{

    struct mission_s mission;
 	mission.count = 1;
	mission.items[0].lat = 38;
	mission.items[0].lon = 78;
	mission.items[0].altitude = 100;
	mission.items[0].altitude_is_relative = false;

	ASSERT_EQ(false, checkGeofence(mission,false, 79, 35, 85, 35)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
	//printf("Inside but exc/reject: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, false,  79, 35, 85, 35));
}

TEST(CheckGeofence, InsideTooHigh_)
{

    struct mission_s mission;
 	mission.count = 1;
	mission.items[0].lat = 38;
	mission.items[0].lon = 78;
	mission.items[0].altitude = 1000;
	mission.items[0].altitude_is_relative = false;

	ASSERT_EQ(false, checkGeofence(mission,true, 79, 35, 85, 35)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
	//printf("Inside but exc/reject: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, false,  79, 35, 85, 35));
}



TEST(CheckGeofence, InsideTooHigh)
{

    int  lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon;

    struct mission_s mission;
 	mission.count = 1;

	mission.items[0].altitude_is_relative = false;


    stg_symbolic_variable(&lat, "LAT", -20, 20, uniform,0,0);
    stg_symbolic_variable(&lon, "LON", -20, 20, uniform,0,0);
    stg_symbolic_variable(&altitude, "ALT", -20, 20, uniform,0,0);
    stg_symbolic_variable(&inclusion, "INC", -20, 20,uniform,0,0);
    stg_symbolic_variable(&high_lat, "HLAT", -20, 20,uniform,0,0);
    stg_symbolic_variable(&low_lat, "LLAT", -20, 20,uniform,0,0);
    stg_symbolic_variable(&high_lon, "HLON", -20, 20,uniform,0,0);
    stg_symbolic_variable(&low_lon, "LLON", -20, 20,uniform,0,0);


    stg_begin_test();

    stg_input_int(&lat, 38);
    stg_input_int(&lon, 78);
    stg_input_int(&altitude, 1000);
    stg_input_int(&inclusion, 1);
    stg_input_int(&high_lat, 79);
    stg_input_int(&low_lat, 35);
    stg_input_int(&high_lon, 85);
    stg_input_int(&low_lon, 35);

    mission.items[0].lat = lat;
    mission.items[0].lon = lon;
    mission.items[0].altitude = altitude;

    bool isGeofenced = checkGeofence(mission,inclusion, high_lat, low_lat, high_lon, low_lon);
    stg_end_test();
    stg_record_test(isGeofenced);
	ASSERT_EQ(false, isGeofenced);

	//printf("Inside but too high/reject: 38, 78, 1000, true, 79, 35, 85, 35: %d\n", isGeofenced);
}


int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
