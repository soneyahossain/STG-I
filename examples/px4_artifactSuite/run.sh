#!/bin/bash


filepath=$STGI_HOME/examples/px4_artifactSuite

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/src/simpler_missionGeofence_checker.cpp -o simpler_missionGeofence_checker.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter simpler_missionGeofence_checker.bc -o I_simpler_missionGeofence_checker.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/src/simpler_missionCommand_checker.cpp -o simpler_missionCommand_checker.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter simpler_missionCommand_checker.bc -o I_simpler_missionCommand_checker.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/src/simpler_missionPositionAltitude_checker.cpp -o simpler_missionPositionAltitude_checker.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter simpler_missionPositionAltitude_checker.bc -o I_simpler_missionPositionAltitude_checker.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/src/simpler_missionWaypoint_checker.cpp -o simpler_missionWaypoint_checker.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter simpler_missionWaypoint_checker.bc -o I_simpler_missionWaypoint_checker.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/src/simpler_mission_feasibility_checker.cpp -o simpler_mission_feasibility_checker.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter simpler_mission_feasibility_checker.bc -o I_simpler_mission_feasibility_checker.bc

clang++ -std=c++14 -I$STGI_INC/.. -c -Wall -I$GTEST -emit-llvm -fno-discard-value-names "$filepath"/test/mission_feasibility_test.cpp -o mission_feasibility_test.bc
opt -load="$STGI_LIB"/LLVMSTGInstrumenter.so -STGInstrumenter -partial-instrument=true mission_feasibility_test.bc -o I_mission_feasibility_test.bc


llvm-link I_simpler_missionGeofence_checker.bc I_simpler_missionCommand_checker.bc I_simpler_missionPositionAltitude_checker.bc  I_simpler_missionWaypoint_checker.bc I_simpler_mission_feasibility_checker.bc I_mission_feasibility_test.bc "$STGI_LIB"/stg.bc -o linked.bc
llc -filetype=obj linked.bc
clang++ -o a.out  linked.o -L /usr/local/lib -l gtest -l pthread
./a.out --gtest_filter=CheckAltitude.*

rm -rf *.bc
rm -rf *.o
rm -rf *.out