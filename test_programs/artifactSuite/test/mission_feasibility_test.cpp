/* Sample Test */
#include <gtest/gtest.h>
#include "../src/simpler_mission.h"
#include "../../../lib/stg.h"
#include <stdio.h>

/*
TEST(MissionCheck, CheckCombined)
{

    //step1: call stg_start_intrmnt

    stg_start_intrmnt();

    //step2: decalre all the variables and assign values

    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;
    float max_dis = 400;
    float home_lat = 10;

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

    //step 3: call stg_begin_test()

    stg_begin_test();

    //step 4: decalre all symbolic variables

    stg_symbolic_variable_double(&mission.items[0].lat, "LAT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lon, "LON0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lat, "LAT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lon, "LON1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[2].lat, "LAT2", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[2].lon, "LON2", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[2].altitude, "ALT2", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&high_lat, "HLAT", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&low_lat, "LLAT", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&high_lon, "HLON", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&low_lon, "LLON", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&max_dis, "MAX_DIS", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&home_lat, "HOME_LAT", -20, 20, uniform, 0, 0);


    //please note that all the stg_input_  calls are removed to simplify src code annotations

    //step 4: call function and store the result in a boolean var

    bool isFeasibleMission = checkMissionFeasible(mission, max_dis, true, home_lat, true, high_lat, low_lat, high_lon, low_lon);

    //step 5: call stg_stop_intrmnt
    stg_stop_intrmnt();
    //step 6: end test
    stg_end_test();

    //step 7: record test
    stg_record_test(isFeasibleMission == true);

    // test oracles
    ASSERT_EQ(true, isFeasibleMission);

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

*/

TEST(CheckGeofence, InsideInclu)
{
    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;
    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 78;
    mission.items[0].altitude = 100;
    mission.items[0].altitude_is_relative = false;

    ASSERT_EQ(true, checkGeofence(mission, true, high_lat, low_lat, high_lon, low_lon));
    //printf("Inside/accept: 38, 78, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, true,  79, 35, 85, 35));
}

TEST(CheckGeofence, OutsideInclu)
{
    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;
    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 100;
    mission.items[0].altitude = 100;
    mission.items[0].altitude_is_relative = false;

    ASSERT_EQ(false, checkGeofence(mission, true, high_lat, low_lat, high_lon, low_lon));
    //printf("Outside/reject: 38, 100, 100, true, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, true,  79, 35, 85, 35));
}

TEST(CheckGeofence, OutsideExc)
{
    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;
    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 100;
    mission.items[0].altitude = 100;
    mission.items[0].altitude_is_relative = false;

    ASSERT_EQ(true, checkGeofence(mission, false, high_lat, low_lat, high_lon, low_lon));
    //printf("Outside but exc/accept: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 100, 100, false,  79, 35, 85, 35));
}

TEST(CheckGeofence, InsideExc)
{
    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;

    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 78;
    mission.items[0].altitude = 100;
    mission.items[0].altitude_is_relative = false;

    ASSERT_EQ(false, checkGeofence(mission, false, high_lat, low_lat, high_lon, low_lon)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
    //printf("Inside but exc/reject: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, false,  79, 35, 85, 35));
}

TEST(CheckGeofence, InsideTooHigh_)
{

    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;

    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 78;
    mission.items[0].altitude = 1000;
    mission.items[0].altitude_is_relative = false;

    ASSERT_EQ(false, checkGeofence(mission, false, high_lat, low_lat, high_lon, low_lon)); //checkGeofence(lat, lon, altitude, inclusion, high_lat, low_lat, high_lon, low_lon);
    //printf("Inside but exc/reject: 38, 78, 100, false, 79, 35, 85, 35: %d\n", checkGeofence(38, 78, 100, false,  79, 35, 85, 35));
}

TEST(CheckGeofence, InsideTooHigh)
{

    stg_start_intrmnt();

    int high_lat = 79, low_lat = 35, high_lon = 85, low_lon = 35;

    struct mission_s mission;
    mission.count = 1;
    mission.items[0].lat = 38;
    mission.items[0].lon = 78;
    mission.items[0].altitude = 1000;
    mission.items[0].altitude_is_relative = false;

    stg_begin_test();
    stg_symbolic_variable_double(&mission.items[0].lat, "LAT");//, -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lon, "LON");//, -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT");//, -20, 20, uniform, 0, 0);
    //stg_symbolic_variable(&inclusion, "INC", -20, 20,uniform,0,0);
    stg_symbolic_variable_int(&high_lat, "HLAT");//, -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&low_lat, "LLAT");//, -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&high_lon, "HLON");//, -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&low_lon, "LLON");//, -20, 20, uniform, 0, 0);


    bool isGeofenced = checkGeofence(mission, true, high_lat, low_lat, high_lon, low_lon);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isGeofenced);
    ASSERT_EQ(false, isGeofenced);

    //printf("Inside but too high/reject: 38, 78, 1000, true, 79, 35, 85, 35: %d\n", isGeofenced);
}

/*

TEST(CheckWayPoints, CloseWaypoints)
{
    stg_start_intrmnt();
    float max_dis = 400;
    struct mission_s mission;
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

    // Sample test with a mission of 3 waypoints close by

    stg_begin_test();
    stg_symbolic_variable_float(&max_dis, "MAX_DIS", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lat, "LAT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lon, "LON0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lat, "LAT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lon, "LON1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[2].lat, "LAT2", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[2].lon, "LON2", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[2].altitude, "ALT2", -20, 20, uniform, 0, 0);


    bool isValid = checkDistancesBetweenWaypoints(mission, max_dis);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == true);
    ASSERT_EQ(true, isValid);

    //ASSERT_EQ(true, checkDistancesBetweenWaypoints(mission, 400));
    //printf("Check 3 waypoints: %d\n", checkDistancesBetweenWaypoints(mission, 400));
}

TEST(CheckWayPoints, TooCloseWaypoints)
{
    // Sample test with a mission of 2 waypoints that are too close
    stg_start_intrmnt();
    float max_dis = 400;

    struct mission_s mission;
    mission.count = 2;
    mission.items[0].lat = 50;
    mission.items[0].lon = 50;
    mission.items[0].altitude = 500;
    mission.items[1].lat = 50;
    mission.items[1].lon = 50;
    mission.items[1].altitude = 500;

    stg_begin_test();

    stg_symbolic_variable_float(&max_dis, "MAX_DIS", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lat, "LAT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lon, "LON0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lat, "LAT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lon, "LON1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);


    bool isValid = checkDistancesBetweenWaypoints(mission, max_dis);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == false);
    ASSERT_EQ(false, isValid);

    //ASSERT_EQ(false, checkDistancesBetweenWaypoints(mission, 400));
    //printf("Check 2 waypoints that are too close: %d\n", checkDistancesBetweenWaypoints(mission, 400));
}

TEST(CheckWayPoints, AltituteBreaker)
{
    // Sample test with a mission of 3 waypoints that break altitude barrier

    stg_start_intrmnt();

    float max_dis = 400;
    struct mission_s mission;
    mission.count = 2;
    mission.items[0].lat = 50;
    mission.items[0].lon = 50;
    mission.items[0].altitude = 500;
    mission.items[1].lat = 51;
    mission.items[1].lon = 51;
    mission.items[1].altitude = 10000;

    stg_begin_test();
    stg_symbolic_variable_float(&max_dis, "MAX_DIS", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lat, "LAT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[0].lon, "LON0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lat, "LAT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_double(&mission.items[1].lon, "LON1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);


    bool isValid = checkDistancesBetweenWaypoints(mission, max_dis);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == false);
    ASSERT_EQ(false, isValid);

    //ASSERT_EQ(false, checkDistancesBetweenWaypoints(mission, 400));
    //printf("Check 2 waypoints one is too high: %d\n", checkDistancesBetweenWaypoints(mission, 40));
}

TEST(CheckAltitute, ValidMission)
{

    // Sample test with a mission of 3 valid altitude waypoints

    stg_start_intrmnt();
    float home_lat = 20;
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

    stg_begin_test();

    stg_symbolic_variable_float(&home_lat, "HOME_LAT", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[2].altitude, "ALT2", -20, 20, uniform, 0, 0);


    bool isValid = checkHomePositionAltitude(mission, home_lat, true);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == true);
    ASSERT_EQ(true, isValid);

    //ASSERT_EQ(true, checkHomePositionAltitude(mission, 20, true));
    //printf("Check 3 waypoints: %s (valid mission)\n", checkHomePositionAltitude(mission, 20, true)?"valid":"invalid");
}

TEST(CheckAltitute, InvalidMission)
{

    // Sample test with a mission of 1 invalid altitude setup waypoint
    stg_start_intrmnt();
    float home_lat = 20;
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
    mission.items[2].altitude_is_relative = true;

    stg_begin_test();

    stg_symbolic_variable_float(&home_lat, "HOME_LAT", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[2].altitude, "ALT2", -20, 20, uniform, 0, 0);


    bool isValid = checkHomePositionAltitude(mission, home_lat, false);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == false);
    ASSERT_EQ(false, isValid);

    //ASSERT_EQ(false, checkHomePositionAltitude(mission, 20, false));
    //printf("Check 3 waypoints: %s (invalid mission, last point is relative but home is not set)\n", checkHomePositionAltitude(mission, 20, false)?"valid":"invalid");
}



TEST(CheckAltitute, InvalidMission2pointbelowhome)
{

    // Sample test with a mission with second wapoint invalid altitude below home
    stg_start_intrmnt();

    float home_lat = 20;
    struct mission_s mission;

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

    stg_begin_test();

    stg_symbolic_variable_float(&home_lat, "HOME_LAT", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[0].altitude, "ALT0", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[1].altitude, "ALT1", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_float(&mission.items[2].altitude, "ALT2", -20, 20, uniform, 0, 0);


    bool isValid = checkHomePositionAltitude(mission, home_lat, true);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(isValid == false);
    ASSERT_EQ(false, isValid);
    //printf("Check 3 waypoints: %s (invalid mission, 2nd point below home)\n", checkHomePositionAltitude(mission, 20, true)?"valid":"invalid");
}

*/


int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
