/****************************************************************************
 *
 *   Copyright (c) 2018 PX4 Development Team. All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 * 3. Neither the name PX4 nor the names of its contributors may be
 *    used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 ****************************************************************************/

/**
 * Test code for the Velocity Smoothing library
 * Build and run using: make && ./test_velocity_smoothing_mcdc
 */

//
// mimick a test harness
// 
#define private public
#define protected public
// #define inline
#define RUN_TEST(x, f) if (f() == TEST_PASS) printf("Test %s: pass\n", x); else printf("Test %s: fail\n", x);
#define TEST_PASS 0
#define TEST_FAIL 1

#define STG_MAKE_TRAJECTORY_SYMBOLIC \
	stg_symbolic_variable(&trajectory._max_jerk, "M_J", -55.2f, 55.2f, "uniform" , 0,0);  \
	stg_symbolic_variable(&trajectory._max_accel, "M_A", -10, 10,"uniform",0,0); \
	stg_symbolic_variable(&trajectory._max_veloc, "M_V",-10, 10,"uniform",0,0); \
	stg_symbolic_variable(&trajectory._state.j, "J", -55.2f, 55.2f, "uniform" , 0,0);  \
	stg_symbolic_variable(&trajectory._state.a, "A", -10, 10,"uniform",0,0); \
	stg_symbolic_variable(&trajectory._state.v, "V",-10, 10,"uniform",0,0); \
	stg_symbolic_variable(&trajectory._vel_sp, "VSP",-10, 10,"uniform",0,0); \

#define STG_INITIAL_TRAJECTORY \
	stg_input_float(&trajectory._max_jerk, trajectory._max_jerk); \
	stg_input_float(&trajectory._max_accel, trajectory._max_accel); \
	stg_input_float(&trajectory._max_veloc, trajectory._max_veloc); \
	stg_input_float(&trajectory._state.j, trajectory._state.j); \
	stg_input_float(&trajectory._state.a, trajectory._state.a); \
	stg_input_float(&trajectory._state.v, trajectory._state.v); \
	stg_input_float(&trajectory._vel_sp.v, trajectory._vel_sp);

#include "VelocitySmoothing.hpp"
#include "matrix/matrix/math.hpp"

// Test various getters with initial default conditions
int test_initial_conditions()
{
	VelocitySmoothing trajectory;

#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	if (trajectory.getT1() != 0.0)
		return TEST_FAIL;
	if (trajectory.getT2() != 0.0)
		return TEST_FAIL;
	if (trajectory.getT3() != 0.0)
		return TEST_FAIL;
	if (trajectory.getCurrentJerk() != 0.0)
		return TEST_FAIL;
	if (trajectory.getVelSp() != 0.0)
		return TEST_FAIL;
	if (trajectory.getCurrentVelocity() != 0.0)
		return TEST_FAIL;
	if (trajectory.getCurrentAcceleration() != 0.0)
		return TEST_FAIL;

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// Test getter and setter methods
int test_getter_setter()
{
	VelocitySmoothing trajectory;
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
#endif

	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(6.f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentPosition(1.f);

#ifdef STG
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	if (trajectory.getMaxJerk() != 55.2f)
		return TEST_FAIL;

	if (trajectory.getMaxAccel() != 6.f)
		return TEST_FAIL;

	if (trajectory.getMaxVel() != 6.f)
		return TEST_FAIL;

	if(trajectory.getCurrentPosition() != 1.f)
		return TEST_FAIL;

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// Test computeT1()
int test_computeT1()
{
	VelocitySmoothing trajectory;
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	float T1 = trajectory.computeT1(1.0, -2.052579, 4.966730, 0.334284);
	if (T1 != 0.0f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(1.0, 1.1, 1.2, 0.0, 5.0);
	if (T1 != 0.f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(0.861905, 0.769221, 0.052579, 0.966730, 0.334284);
	if (fabs(T1 - (-0.449905)) > 0.00001)
		return TEST_FAIL;

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// Test edge case
int test_edge_case()
{
	VelocitySmoothing trajectory;
	trajectory.setCurrentAcceleration(FLT_EPSILON);
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	trajectory.updateDurations(FLT_EPSILON);
	if (trajectory.getT1() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT2() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT3() != 0.f)
		return TEST_FAIL;

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// negative velocity setpoint
int test_velsp_neg()
{
	VelocitySmoothing trajectory;
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(6.f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(0.f);
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	float velocity_setpoint = -1.0;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	const float dt = 0.1f;
	float t123 = trajectory.getTotalTime();

	printf("test_velsp_neg(): total time = %f\n", t123);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// zero velocity setpoint
int test_velsp_zero()
{
	VelocitySmoothing trajectory;
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(6.f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(0.f);
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	float velocity_setpoint = 0.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	const float dt = 0.1f;
	float t123 = trajectory.getTotalTime();
	int nb_steps = ceil(t123 / dt);

	printf("test_velsp_zero(): total time = %f\n", t123);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// pos velocity setpoint
int test_velsp_pos()
{
	VelocitySmoothing trajectory;
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(6.f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(0.f);
#ifdef STG
	STG_MAKE_TRAJECTORY_SYMBOLIC
	stg_begin_test();
	STG_MAKE_INITIAL_TRAJECTORY
#endif

	float velocity_setpoint = 1.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	const float dt = 0.1f;
	float t123 = trajectory.getTotalTime();
	int nb_steps = ceil(t123 / dt);

	printf("test_velsp_pos(): total time = %f\n", t123);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

	trajectory.updateTraj(dt);
	trajectory.updateDurations(velocity_setpoint);

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

// Test trajectory scenario
int test_trajectory_sync()
{
	VelocitySmoothing trajectory[2];

	float a0[3] = {0.f, 0.f};
	float v0[3] = {0.f, 0.f};
	float x0[3] = {0.f, 0.f};

	float j_max = 55.2f;
	float a_max = 6.f;
	float v_max = 6.f;

	for (int i = 0; i < 2; i++) {
		trajectory[i].setMaxJerk(j_max);
		trajectory[i].setMaxAccel(a_max);
		trajectory[i].setMaxVel(v_max);
		trajectory[i].setCurrentAcceleration(a0[i]);
		trajectory[i].setCurrentVelocity(v0[i]);
	}

#ifdef STG
	stg_symbolic_variable(&trajectory[0]._max_jerk, "M_J", -55.2f, 55.2f, "uniform" , 0,0);  
	stg_symbolic_variable(&trajectory[0]._max_accel, "M_A", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._max_veloc, "M_V",-10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._state.j, "J", -55.2f, 55.2f, "uniform" , 0,0);  
	stg_symbolic_variable(&trajectory[0]._state.a, "A", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._state.v, "V", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._vel_sp, "VSP",-10, 10,"uniform",0,0); 

	stg_begin_test();

	stg_input_float(&trajectory[0]._max_jerk, trajectory._max_jerk); 
	stg_input_float(&trajectory[0]._max_accel, trajectory._max_accel); 
	stg_input_float(&trajectory[0]._max_veloc, trajectory._max_veloc); 
	stg_input_float(&trajectory[0]._state.j, trajectory._state.j); 
	stg_input_float(&trajectory[0]._state.a, trajectory._state.a); 
	stg_input_float(&trajectory[0]._state.v, trajectory._state.v); 
	stg_input_float(&trajectory[0]._vel_sp.v, trajectory._vel_sp);
#endif

	const float dt = 0.01f;

	float velocity_setpoint[2] = {1.f, 0.f};
	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateTraj(dt);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
	}

	VelocitySmoothing::timeSynchronization(trajectory, 2);

#ifdef STG
	stg_end_test();
	stg_record_test(TEST_PASS);
#endif	
	return TEST_PASS;
}

int main(int argc, char *argv[])
{
	RUN_TEST("initial conditions", test_initial_conditions);
	RUN_TEST("getter/setter", test_getter_setter);
	RUN_TEST("computeT1", test_computeT1);
	RUN_TEST("edge cases", test_edge_case);
	RUN_TEST("velocity setpoint -1", test_velsp_neg);
	RUN_TEST("velocity setpoint 0", test_velsp_zero);
	RUN_TEST("velocity setpoint +1", test_velsp_pos);
	RUN_TEST("trajectory sync", test_trajectory_sync);

	return 0;
}
