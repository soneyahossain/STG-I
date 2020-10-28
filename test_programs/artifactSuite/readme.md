# Artifact Suite #

The files contain functionlity from the mission feasibility checker in PX4 found in https://github.com/PX4/Firmware/blob/master/src/modules/navigator/ 

The content of the files has been simplified so they can operate with less scafolding for much of the drone data. 
All files rely in the "mission" structure which consists of a set of waypoints and corresponding commands, and some metadata.

## Files description ##

- simpler_mission_feasibility_checker.cpp: contains the higher-level checker that invokes the others (it also includes a temporary main to build it all)

- simpler_missionGeofence_checker.cpp: defines a rectangular geofence checker with inclusion/exclusion

- simpler_missionPositionAltitude_checker.cpp: defines the altitude checks

- simpler_missionWaypoint_checker.cpp: defines the distance checks between checkpoints

- simpler_missionCommand_checker.cpp: defines the checker for valid commands

- simpler_mission.h: defines macros, definitions, and structures

- makefile: run make to build it All

All files include some sample informal tests. 

## Challenge features ##

File | Source | Challenge
| :--- |  :---  |  :--- 
 simpler_mission_feasibility_checker.cpp | + | multiple method calls outside the file, Disjunction
simpler_missionCommand_checker.cpp |  + | enum, if with a complex conjunction
simpler_missionPositionAltitude_checker.cpp | + | ternary conditional
simpler_missionWaypoint_checker.cpp |+ |  complex math/trig
simpler_missionGeofence_checker.cpp | ++ | nested predicates and a method call

'+  https://github.com/PX4/Firmware/blob/master/src/modules/navigator/mission_feasibility_checker.cpp

++ https://github.com/PX4/Firmware/blob/master/src/modules/navigator/geofence.cpp