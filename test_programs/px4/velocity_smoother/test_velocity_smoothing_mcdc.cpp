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
//   - @todo: need API to turn on/off tracing for oracles
//   - @todo: hook up to google's test framework instead of ad-hoc testing
//   - @todo: allow oracles to record results multiple times
//   - @todo: allow oracles to record results inside of single tests
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
#include "stg_lib/stg.h"
#else
#define RUN_TEST(x, f) if (f() == TEST_PASS) printf("Test %s: pass\n", x); else printf("Test %s: fail\n", x);
#define stg_begin_test() {}
#define stg_end_test() {}
#define stg_record_test(x) x
#define stg_pause_recording() {}
#define stg_resume_recording() {}
#endif

#define TEST_PASS 1
#define TEST_FAIL 0

#define STG_ORACLE

// define type of variables to make symbolic
//#define SYMBOLIC_JERK
#define SYMBOLIC_ACCEL
//#define SYMBOLIC_VEL

#include "VelocitySmoothing.hpp"
#include "matrix/matrix/math.hpp"
#include "mathlib/mathlib.h"

void make_trajectory_symbolic(VelocitySmoothing *trajectory)
{
#ifdef STG
#ifdef SYMBOLIC_JERK
	stg_symbolic_variable(&trajectory->_max_jerk, "M_J", -100.0f, 100.0f, "uniform" , 0,0);
	stg_symbolic_variable(&trajectory->_state.j, "J", -100.0f, 100.0f, "uniform" , 0,0);
#endif

#ifdef SYMBOLIC_ACCEL
	stg_symbolic_variable(&trajectory->_max_accel, "M_A", -20.f, 20.f,"uniform",0,0);
	stg_symbolic_variable(&trajectory->_state.a, "A", -20.f, 20.f,"uniform",0,0);
#endif

#ifdef SYMBOLIC_VEL
	stg_symbolic_variable(&trajectory->_max_vel, "M_V",-20.f, 20.f,"uniform",0,0);
	stg_symbolic_variable(&trajectory->_state.v, "V",-20.f, 20.f,"uniform",0,0);
	stg_symbolic_variable(&trajectory->_vel_sp, "VSP",-20.f, 20.f,"uniform",0,0);
#endif
#endif
}

// define type and assign initial value
// @todo: those 2 concepts should be decoupled?
//        or the 2nd argument optional?
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
	stg_input_float(&traj->_max_vel, traj->_max_vel);
	stg_input_float(&traj->_state.v, traj->_state.v);
	stg_input_float(&traj->_vel_sp, traj->_vel_sp);
#endif

#endif
}


// boolean oracle
bool check_kinematic_constraints(VelocitySmoothing *traj) {
#ifdef STG_ORACLE
	stg_pause_recording();
#endif
	bool oracle = true;
	if (traj->getCurrentJerk() > traj->getMaxJerk())
		oracle = false;
	if (traj->getCurrentAcceleration() > traj->getMaxAccel())
		oracle = false;
	if (traj->getCurrentVelocity() > traj->getMaxVel())
		oracle = false;
#ifdef STG_ORACLE
	stg_resume_recording();
#endif
	return oracle;
}

// Test various getters with initial default conditions
int test_initial_conditions()
{
	VelocitySmoothing trajectory;
	const auto acceleration = 0.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0, 0);
	stg_begin_test();
	stg_input_float(&acceleration, acceleration);
#endif

	bool result = true;
	if (trajectory.getT1() != 0.0)
		result = false;
	if (trajectory.getT2() != 0.0)
		result = false;
	if (trajectory.getT3() != 0.0)
		result = false;
	if (trajectory.getCurrentJerk() != 0.0)
		result = false;
	if (trajectory.getVelSp() != 0.0)
		result = false;
	if (trajectory.getCurrentVelocity() != 0.0)
		result = false;
	if (trajectory.getCurrentAcceleration() != 0.0)
		result = false;

	stg_end_test();
	stg_record_test(result);
	return TEST_PASS;
}

// Test getter and setter methods
int test_getter_setter()
{
	VelocitySmoothing trajectory;
	auto maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_begin_test();
	stg_input_float(&maxAcceleration, maxAcceleration);
	trajectory.setMaxAcceleration(maxAcceleration);
#endif
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentPosition(1.f);

	bool oracle=true;

	if (trajectory.getMaxJerk() != 55.2f){
	   oracle = false;
	}

	if (trajectory.getMaxAccel() != 6.f){
		oracle = false;
	}

	if (trajectory.getMaxVel() != 6.f){
		oracle = false;
	}

	if(trajectory.getCurrentPosition() != 1.f){
        	oracle = false;
	}

	stg_end_test();
	stg_record_test(oracle);
	return TEST_PASS;
}

// Test computeT1()
int test_computeT1()
{
	VelocitySmoothing trajectory;

	make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	float T1 = trajectory.computeT1(1.0, -2.052579, 4.966730, 0.334284);
	if (T1 != 0.0f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(1.0, 1.1, 1.2, 0.0, 5.0);
	if (T1 != 0.f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(0.861905, 0.769221, 0.052579, 0.966730, 0.334284);
	if (math::fabs_t(T1 - (-0.449905)) > 0.00001)
		return TEST_FAIL;

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

// Test edge case
int test_edge_case()
{
	VelocitySmoothing trajectory;

	const auto acceleration = FLT_EPSILON;
	const auto maxAcceleration = trajectory.getMaxAccel();

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_begin_test();
	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif

	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setCurrentAcceleration(acceleration);

	// how are we supposed to know that updateDuration uses maxAcceleration?
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
	const auto acceleration = 0.f;
	const auto maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);

	stg_begin_test();

	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(acceleration);

	float velocity_setpoint = -1.0;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	const float dt = 0.1f;
	float t123 = trajectory.getTotalTime();
	int nb_steps = 3;

	printf("test_velsp_neg(): total time = %f\n", t123);
	for (int i = 0; i < nb_steps; ++i) {
		trajectory.updateTraj(dt);
		trajectory.updateDurations(velocity_setpoint);
	}

	stg_end_test();
	stg_record_test(TEST_PASS);
	return TEST_PASS;
}

// zero velocity setpoint
int test_velsp_zero()
{
	VelocitySmoothing trajectory;
	const auto acceleration = 0.f;
	const auto maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);

	stg_begin_test();

	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif

	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(acceleration);

	float velocity_setpoint = 0.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	float t123 = trajectory.getTotalTime();
	const float dt = t123 / 3.0;
	int nb_steps = 3;

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
	const auto acceleration = 0.f;
	const auto maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);

	stg_begin_test();

	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif

	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(acceleration);

	float velocity_setpoint = 1.f;

	// do one delta-t increment
	trajectory.updateTraj(0.f);
	trajectory.updateDurations(velocity_setpoint);

	float t123 = trajectory.getTotalTime();
	const float dt = t123 / 3.0;
	int nb_steps = 3;

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
	const auto acceleration = 0.f;
	const auto maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);

	stg_begin_test();

	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif

	float a0[3] = {0.f, 0.f};
	float v0[3] = {0.f, 0.f};
	float x0[3] = {0.f, 0.f};

	float j_max = 55.2f;
	float v_max = 6.f;

	for (int i = 0; i < 2; i++) {
		trajectory[i].setMaxJerk(j_max);
		trajectory[i].setMaxAccel(maxAcceleration);
		trajectory[i].setMaxVel(v_max);
		trajectory[i].setCurrentAcceleration(acceleration);
		trajectory[i].setCurrentVelocity(v0[i]);
	}

	bool oracle = true;
	const float dt = 0.01f;

	float velocity_setpoint[2] = {1.f, 0.f};
	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
		oracle &= check_kinematic_constraints(&trajectory[i]);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateTraj(dt);
		oracle &= check_kinematic_constraints(&trajectory[i]);
	}

	for (int i = 0; i < 2; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
		oracle &= check_kinematic_constraints(&trajectory[i]);
	}

	VelocitySmoothing::timeSynchronization(trajectory, 2);
	oracle &= check_kinematic_constraints(&trajectory[0]);
	oracle &= check_kinematic_constraints(&trajectory[1]);

	stg_end_test();
	stg_record_test(oracle);
	return TEST_PASS;
}

int main(int argc, char *argv[])
{
#ifdef STG
	test_initial_conditions();
	test_getter_setter();
//	test_computeT1();
	test_edge_case();
	test_velsp_neg();
//	test_velsp_zero();
//	test_velsp_pos();
	test_trajectory_sync();
#else
	RUN_TEST("initial conditions", test_initial_conditions);
	RUN_TEST("getter/setter", test_getter_setter);
//	RUN_TEST("computeT1", test_computeT1);
	RUN_TEST("edge cases", test_edge_case);
	RUN_TEST("velocity setpoint -1", test_velsp_neg);
//	RUN_TEST("velocity setpoint 0", test_velsp_zero);
//	RUN_TEST("velocity setpoint +1", test_velsp_pos);
	RUN_TEST("trajectory sync", test_trajectory_sync);
#endif
	return 0;
}
