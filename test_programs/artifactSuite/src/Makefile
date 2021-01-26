
GOOGLE_TEST_LIB = gtest
GOOGLE_TEST_INCLUDE = /usr/local/include
TEST_DIR=../test
LIB_DIR=../../../lib/
LLVM_DIR=/Users/soneyabintahossain/llvm_project/llvm-project/build/bin


CC = clang++ -std=c++14
CFLAGS  = -c -Wall -I $(GOOGLE_TEST_INCLUDE)
LD_FLAGS = -L /usr/local/lib -l $(GOOGLE_TEST_LIB) -l pthread
LLVM_FLAGS= -emit-llvm -fno-discard-value-names -S
LLVM_INSTRMNT_FLAGS= -load=/Users/soneyabintahossain/llvm_project/llvm-project/build/lib/LLVMSTGInstrumenter.dylib

BITCODES = stg.ll mission_feasibility_test.ll simpler_mission_feasibility_checker.ll simpler_missionWaypoint_checker.ll simpler_missionPositionAltitude_checker.ll  simpler_missionCommand_checker.ll simpler_missionGeofence_checker.ll
TARGET = missionChecker.out


default: $(TARGET)


test: missionChecker.out
	./missionChecker.out

missionChecker.out: missionChecker.o
	$(CC) -o missionChecker.out  missionChecker.o $(LD_FLAGS)

missionChecker.o: missionChecker.ll
	$(LLVM_DIR)/llc -filetype=obj missionChecker.ll

missionChecker.ll:  $(BITCODES)
	$(LLVM_DIR)/llvm-link  -o missionChecker.ll $(BITCODES)

mission_feasibility_test.ll: $(TEST_DIR)/mission_feasibility_test.cpp simpler_mission.h $(LIB_DIR)/stg.h #do not instrument test drive
	$(CC) $(CFLAGS) $(LLVM_FLAGS) $(TEST_DIR)/mission_feasibility_test.cpp -o mission_feasibility_test.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter -ignore-instrmnt-flag=false mission_feasibility_test.bc -o mission_feasibility_test.ll


stg.ll: $(LIB_DIR)/stg.cpp $(LIB_DIR)/stg.h $(LIB_DIR)/stg.hpp #do not instrument libs
	$(CC) $(CFLAGS) $(LLVM_FLAGS) $(LIB_DIR)/stg.cpp

simpler_mission_feasibility_checker.ll:  simpler_mission_feasibility_checker.cpp simpler_mission.h
	$(CC) $(CFLAGS) $(LLVM_FLAGS) simpler_mission_feasibility_checker.cpp -o simpler_mission_feasibility_checker.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter simpler_mission_feasibility_checker.bc -o simpler_mission_feasibility_checker.ll

simpler_missionWaypoint_checker.ll:  simpler_missionWaypoint_checker.cpp simpler_mission.h
	$(CC) $(CFLAGS) $(LLVM_FLAGS) simpler_missionWaypoint_checker.cpp -o simpler_missionWaypoint_checker.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter simpler_missionWaypoint_checker.bc -o simpler_missionWaypoint_checker.ll

simpler_missionPositionAltitude_checker.ll:  simpler_missionPositionAltitude_checker.cpp simpler_mission.h
	$(CC) $(CFLAGS) $(LLVM_FLAGS) simpler_missionPositionAltitude_checker.cpp -o simpler_missionPositionAltitude_checker.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter simpler_missionPositionAltitude_checker.bc -o simpler_missionPositionAltitude_checker.ll

simpler_missionCommand_checker.ll:  simpler_missionCommand_checker.cpp simpler_mission.h
	$(CC) $(CFLAGS) $(LLVM_FLAGS) simpler_missionCommand_checker.cpp -o simpler_missionCommand_checker.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter simpler_missionCommand_checker.bc -o simpler_missionCommand_checker.ll

simpler_missionGeofence_checker.ll:  simpler_missionGeofence_checker.cpp simpler_mission.h
	$(CC) $(CFLAGS) $(LLVM_FLAGS) simpler_missionGeofence_checker.cpp -o simpler_missionGeofence_checker.bc
	$(LLVM_DIR)/opt $(LLVM_INSTRMNT_FLAGS) -S -STGInstrumenter simpler_missionGeofence_checker.bc -o simpler_missionGeofence_checker.ll

clean: #cleaning all object files and the combined file
	$(RM) *.ll *.bc  *.out *.o