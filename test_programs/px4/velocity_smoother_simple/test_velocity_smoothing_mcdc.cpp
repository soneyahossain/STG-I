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

#ifdef STG
#include "stg_lib/stg.h"
#else
#define stg_begin_test() {}
#define stg_end_test() {}
#define stg_record_test(x) x
#define stg_pause_recording() {}
#define stg_resume_recording() {}
#endif

#define NUM_STEPS 3
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
#ifdef SYMBOLIC_JERK
	if (traj->getCurrentJerk() > traj->getMaxJerk())
		oracle = false;
#endif
#ifdef SYMBOLIC_ACCEL
	if (traj->getCurrentAcceleration() > traj->getMaxAccel())
		oracle = false;
#endif
#ifdef SYMBOLIC_VEL
	if (traj->getCurrentVelocity() > traj->getMaxVel())
		oracle = false;
#endif
#ifdef STG_ORACLE
	stg_resume_recording();
#endif
	return oracle;
}

// Test various getters with initial default conditions
int test_initial_conditions()
{
	VelocitySmoothing trajectory;
	float acceleration = 0.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0, 0);
	stg_begin_test();
	stg_input_float(&acceleration, acceleration);
#endif

	trajectory.setCurrentAcceleration(acceleration);
	check_kinematic_constraints(&trajectory);

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
	if (trajectory.getTotalTime() != (trajectory.getT1() + trajectory.getT2() + trajectory.getT3()))
		result = false;

	stg_end_test();
	stg_record_test(result);
	return true;
}

// Test getter and setter methods
int test_getter_setter()
{
	VelocitySmoothing trajectory;
	float maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_begin_test();
	stg_input_float(&maxAcceleration, maxAcceleration);
	trajectory.setMaxAccel(maxAcceleration);
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
	return true;
}

// Test T1 edge case
int test_T1_edge_case()
{
	VelocitySmoothing trajectory;

	make_trajectory_symbolic(&trajectory);
	stg_begin_test();
	stg_initial_trajectory(&trajectory);

	float T1 = trajectory.computeT1(1.1, 1.2, -1.0, 5.0);

	stg_end_test();
	stg_record_test(true);
	return true;
}

// Test edge case
int test_edge_case()
{
	VelocitySmoothing trajectory;

	float acceleration = FLT_EPSILON;
	float maxAcceleration = trajectory.getMaxAccel();

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_begin_test();
	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif

	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setCurrentAcceleration(acceleration);
	check_kinematic_constraints(&trajectory);

	// how are we supposed to know that updateDuration uses maxAcceleration?
	trajectory.updateDurations(FLT_EPSILON);
	check_kinematic_constraints(&trajectory);

	if (trajectory.getT1() != 0.f)
		return false;
	if (trajectory.getT2() != 0.f)
		return false;
	if (trajectory.getT3() != 0.f)
		return false;

	stg_end_test();
	stg_record_test(true);
	return true;
}

// negative velocity setpoint
int test_velsp(float velsp)
{
	VelocitySmoothing trajectory;
	float acceleration = 0.f;
	float maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);
#endif

	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setMaxAccel(maxAcceleration);
	trajectory.setCurrentAcceleration(acceleration);

	trajectory.updateTraj(0.f);

	// This is test #1
#ifdef STG
	stg_begin_test();
	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif
	trajectory.updateDurations(velsp);
#ifdef STG
	check_kinematic_constraints(&trajectory);
	stg_end_test();
	stg_record_test(true);
#endif

	const float dt = 0.1f;
	int nb_steps = NUM_STEPS;

	for (int i = 0; i < nb_steps; ++i) {
		trajectory.updateTraj(dt);
#ifdef STG
		stg_begin_test();
		stg_input_float(&acceleration, trajectory.getCurrentAcceleration());
		stg_input_float(&maxAcceleration, trajectory.getMaxAccel());
#endif
		trajectory.updateDurations(velsp);
#ifdef STG
		check_kinematic_constraints(&trajectory);
		stg_end_test();
		stg_record_test(true);
#endif
	}

	return true;
}

int test_t1_saturation(float t1)
{
	VelocitySmoothing trajectory;
	float acceleration = 0.f;
	float maxAcceleration = 6.f;

#ifdef STG
	stg_symbolic_variable(&acceleration, "A", -20.0f, 20.0f, "uniform" , 0,0);
	stg_symbolic_variable(&maxAcceleration, "M_A", -20.0f, 20.0f, "uniform" , 0,0);

	stg_begin_test();

	stg_input_float(&acceleration, acceleration);
	stg_input_float(&maxAcceleration, maxAcceleration);
#endif
	trajectory.setMaxJerk(55.2f);
	trajectory.setMaxVel(6.f);
	trajectory.setCurrentVelocity(0.f);
	trajectory.setCurrentAcceleration(acceleration);
	trajectory.setMaxAccel(maxAcceleration);

	// clip negative
	trajectory.saturateT1ForAccel(trajectory.getCurrentAcceleration(), trajectory.getMaxJerk(), t1, trajectory.getMaxAccel());

	check_kinematic_constraints(&trajectory);

	stg_end_test();
	stg_record_test(true);
	return true;
}

int main(int argc, char *argv[])
{
	/*
	test_initial_conditions();
	test_getter_setter(); 
	test_T1_edge_case();     
	test_edge_case();     
	*/

	test_velsp(-1.0);
	/*
	test_velsp(0.0);
	test_velsp(1.0);
	*/

	/*
	test_t1_saturation(-7.42);
	test_t1_saturation(7.42);
	test_t1_saturation(0);
	*/
	return 0;
}
