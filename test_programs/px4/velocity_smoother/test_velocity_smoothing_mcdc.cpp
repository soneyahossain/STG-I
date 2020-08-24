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

// 
// Notes:
//   - coverage of unit tests: branch and MC/DC (branch => MC/DC for code)
//   - some unit tests are still only traces (ok for now, assume all pass)
//   - need API to turn on/off tracing for oracles
//
//   - @todo: hook up to google's test framework instead of ad-hoc testing
//

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
#ifdef STG
#include "stg.h"
#else
#define RUN_TEST(x, f) if (f() == TEST_PASS) printf("Test %s: pass\n", x); else printf("Test %s: fail\n", x);
#define stg_begin_test() {}
#define stg_end_test() {}
#define stg_record_test(x) x
void stg_symbolic_variable(void *, const char*) {}
#endif

#define TEST_PASS 1
#define TEST_FAIL 0

#define STG_ORACLE

// define type of variables to make symbolic
#define SYMBOLIC_JERK
#define SYMBOLIC_ACCEL
#define SYMBOLIC_VEL

#include "VelocitySmoothing.hpp"
#include "matrix/matrix/math.hpp"

void stg_make_trajectory_symbolic(VelocitySmoothing *traj) 
{
#ifdef STG
#ifdef SYMBOLIC_JERK
	stg_symbolic_variable(&trajectory->_max_jerk, "M_J", -55.2f, 55.2f, "uniform" , 0,0);  
	stg_symbolic_variable(&trajectory->_state.j, "J", -55.2f, 55.2f, "uniform" , 0,0);  
#endif

#ifdef SYMBOLIC_ACCEL
	stg_symbolic_variable(&trajectory->_max_accel, "M_A", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory->_state.a, "A", -10, 10,"uniform",0,0); 
#endif

#ifdef SYMBOLIC_VEL
	stg_symbolic_variable(&trajectory->_max_veloc, "M_V",-10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory->_state.v, "V",-10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory->_vel_sp, "VSP",-10, 10,"uniform",0,0); 
#endif
#endif
}

void stg_initial_trajectory(VelocitySmoothing *traj) 
{
#ifdef STG
#ifdef SYMBOLIC_JERK
	stg_input_float(&traj->_max_jerk, traj->_max_jerk); 
	stg_input_float(&traj->_state.j, traj->_state.j); 
#endif

#ifdef SYMBOLIC_ACCEL
	stg_input_float(&traj->_max_accel, traj->_max_accel); 
	stg_input_float(&traj->_state.a, traj->_state.a);
#endif

#ifdef SYMBOLIC_VEL
	stg_input_float(&traj->_max_veloc, traj->_max_veloc); 
	stg_input_float(&traj->_state.v, traj->_state.v);
	stg_input_float(&traj->_vel_sp.v, traj->_vel_sp);
#endif
#endif
}

// @FIXME @TODO: in general, need to turn off tracing in oracle functions
bool stg_oracle(VelocitySmoothing *traj) {
	bool oracle = true;
	if (traj->getCurrentJerk() > traj->getMaxJerk())
		oracle = false;
	if (traj->getCurrentAcceleration() > traj->getMaxAccel())
		oracle = false;
	if (traj->getCurrentVelocity() > traj->getMaxVel())
		oracle = false;
#ifdef STG_ORACLE
	stg_record_test(oracle);
#endif
	return oracle;
}

// Test various getters with initial default conditions
int test_initial_conditions()
{
	VelocitySmoothing trajectory;

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

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

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

// Test getter and setter methods
int test_getter_setter()
{
	VelocitySmoothing trajectory;
	stg_make_trajectory_symbolic(&trajectory);

	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(6.f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentPosition(1.f);

	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	if (trajectory.getMaxJerk() != 55.2f)
		return TEST_FAIL;

	if (trajectory.getMaxAccel() != 6.f)
		return TEST_FAIL;

	if (trajectory.getMaxVel() != 6.f)
		return TEST_FAIL;

	if(trajectory.getCurrentPosition() != 1.f)
		return TEST_FAIL;

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

// Test computeT1()
int test_computeT1()
{
	VelocitySmoothing trajectory;

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	float T1 = trajectory.computeT1(1.0, -2.052579, 4.966730, 0.334284);
	if (T1 != 0.0f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(1.0, 1.1, 1.2, 0.0, 5.0);
	if (T1 != 0.f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(0.861905, 0.769221, 0.052579, 0.966730, 0.334284);
	if (fabs(T1 - (-0.449905)) > 0.00001)
		return TEST_FAIL;

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

// Test edge case
int test_edge_case()
{
	VelocitySmoothing trajectory;
	trajectory.setCurrentAcceleration(FLT_EPSILON);

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	trajectory.updateDurations(FLT_EPSILON);
	if (trajectory.getT1() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT2() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT3() != 0.f)
		return TEST_FAIL;

	stg_end_test();
	stg_record_test(TEST_PASS);
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

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

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

	stg_end_test();
	stg_record_test(TEST_PASS);
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

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	float velocity_setpoint = 0.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	float t123 = trajectory.getTotalTime();
	const float dt = t123 / 3.0;
	int nb_steps = ceil(t123 / dt);

	printf("test_velsp_zero(): total time = %f\n", t123);

	for (int i = 0; i < nb_steps; ++i) {
		trajectory.updateTraj(dt);
		trajectory.updateDurations(velocity_setpoint);
	}

	stg_end_test();
	stg_record_test(TEST_PASS);
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

	stg_make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	float velocity_setpoint = 1.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	float t123 = trajectory.getTotalTime();
	const float dt = t123 / 3.0;
	int nb_steps = ceil(t123 / dt);

	printf("test_velsp_pos(): total time = %f\n", t123);

	for (int i = 0; i < nb_steps; ++i) {
		trajectory.updateTraj(dt);
		trajectory.updateDurations(velocity_setpoint);
	}


	stg_end_test();
	stg_record_test(TEST_PASS);
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
#ifdef SYMBOLIC_JERK
	stg_symbolic_variable(&trajectory[0]._max_jerk, "M_J", -55.2f, 55.2f, "uniform" , 0,0);  
	stg_symbolic_variable(&trajectory[0]._state.j, "J", -55.2f, 55.2f, "uniform" , 0,0);  
#endif
#ifdef SYMBOLIC_ACCEL
	stg_symbolic_variable(&trajectory[0]._max_accel, "M_A", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._state.a, "A", -10, 10,"uniform",0,0); 
#endif
#ifdef SYMBOLIC_VEL
	stg_symbolic_variable(&trajectory[0]._max_veloc, "M_V",-10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._state.v, "V", -10, 10,"uniform",0,0); 
	stg_symbolic_variable(&trajectory[0]._vel_sp, "VSP",-10, 10,"uniform",0,0); 
#endif

	stg_begin_test();

#ifdef SYMBOLIC_JERK
	stg_input_float(&trajectory[0]._max_jerk, trajectory._max_jerk); 
	stg_input_float(&trajectory[0]._state.j, trajectory._state.j); 
#endif
#ifdef SYMBOLIC_ACCEL
	stg_input_float(&trajectory[0]._max_accel, trajectory._max_accel); 
	stg_input_float(&trajectory[0]._state.a, trajectory._state.a); 
#endif
#ifdef SYMBOLIC_VEL
	stg_input_float(&trajectory[0]._max_veloc, trajectory._max_veloc); 
	stg_input_float(&trajectory[0]._state.v, trajectory._state.v); 
	stg_input_float(&trajectory[0]._vel_sp.v, trajectory._vel_sp);
#endif
#endif

	const float dt = 0.01f;

	float velocity_setpoint[2] = {1.f, 0.f};
	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
		stg_oracle(&trajectory[i]);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateTraj(dt);
		stg_oracle(&trajectory[i]);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
		stg_oracle(&trajectory[i]);
	}

	VelocitySmoothing::timeSynchronization(trajectory, 2);
	stg_oracle(&trajectory[0]);

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

int main(int argc, char *argv[])
{
#ifdef STG
	test_initial_conditions();
	test_getter_setter();
	test_computeT1();
	test_edge_case();
	test_velsp_neg();
	test_velsp_zero();
	test_velsp_pos();
	test_trajectory_sync();
#else
	RUN_TEST("initial conditions", test_initial_conditions);
	RUN_TEST("getter/setter", test_getter_setter);
	RUN_TEST("computeT1", test_computeT1);
	RUN_TEST("edge cases", test_edge_case);
	RUN_TEST("velocity setpoint -1", test_velsp_neg);
	RUN_TEST("velocity setpoint 0", test_velsp_zero);
	RUN_TEST("velocity setpoint +1", test_velsp_pos);
	RUN_TEST("trajectory sync", test_trajectory_sync);
#endif
	return 0;
}
