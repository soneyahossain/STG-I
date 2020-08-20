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
//#define inline
//#define RUN_TEST(x, f) if (f() == TEST_PASS) printf("Test %s: pass\n", x); else printf("Test %s: fail\n", x);
#define TEST_PASS 0
#define TEST_FAIL 1

#include "VelocitySmoothing.hpp"
#include "matrix/matrix/math.hpp"
#include "stg_lib/stg.h"

// Test various getters with initial default conditions
int test_initial_conditions()
{
	VelocitySmoothing trajectory;

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
	return TEST_PASS;
}

// Test getter and setter methods
int test_getter_setter()
{
	VelocitySmoothing trajectory;


	//symbolic variables
	float j_max;
	float a_max;
    float v_max;

    stg_symbolic_variable(&j_max, "M_J", 50, 55.2f, "normal" , 0,0);  //some random min, max
    stg_symbolic_variable(&a_max, "M_A", 4, 6,"geometric",0,0);
    stg_symbolic_variable(&v_max, "M_V",4, 6,"uniform",0,0);

	stg_begin_test();

    stg_input_float(&j_max, 55.2f);
    stg_input_float(&a_max, 6.f);
    stg_input_float(&v_max, 6.f);

	trajectory.setMaxJerk(j_max);
	if (trajectory.getMaxJerk() != j_max){

	    stg_end_test();
        stg_record_test(TEST_FAIL);

	   return TEST_FAIL;
	}


	trajectory.setMaxAccel(a_max);
	if (trajectory.getMaxAccel() != a_max)
	{

        	    stg_end_test();
                stg_record_test(TEST_FAIL);

        	   return TEST_FAIL;
    }

	trajectory.setMaxVel(v_max);
	if (trajectory.getMaxVel() != v_max)
    {

        	    stg_end_test();
                stg_record_test(TEST_FAIL);

        	   return TEST_FAIL;
    }
	trajectory.setCurrentPosition(1.f);
	if(trajectory.getCurrentPosition() != 1.f)
	{

        	    stg_end_test();
                stg_record_test(TEST_FAIL);

        	   return TEST_FAIL;
    }


    stg_end_test();
    stg_record_test(true);

	return TEST_PASS;
}

// Test computeT1()
int test_computeT1()
{
	VelocitySmoothing trajectory;

	float T1 = trajectory.computeT1(1.0, -2.052579, 4.966730, 0.334284);
	if (T1 != 0.0f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(1.0, 1.1, 1.2, 0.0, 5.0);
	if (T1 != 0.f)
		return TEST_FAIL;

	T1 = trajectory.computeT1(0.861905, 0.769221, 0.052579, 0.966730, 0.334284);
	if (fabs(T1 - (-0.449905)) > 0.00001)
		return TEST_FAIL;

	return TEST_PASS;
}

// Test edge case
int test_edge_case()
{
	VelocitySmoothing trajectory;
	trajectory.setCurrentAcceleration(FLT_EPSILON);
	trajectory.updateDurations(FLT_EPSILON);
	if (trajectory.getT1() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT2() != 0.f)
		return TEST_FAIL;
	if (trajectory.getT3() != 0.f)
		return TEST_FAIL;

	// need an assertion or check here
	return TEST_PASS;
}

// Test trajectory scenario
int test_trajectory()
{
	VelocitySmoothing trajectory[3];

    float j_max;
    float a_max;
    float v_max;

    stg_symbolic_variable(&j_max, "M_J", 50, 55.2f, "normal" , 0,0);  //some random min, max
    stg_symbolic_variable(&a_max, "M_A", 4, 6,"geometric",0,0);
    stg_symbolic_variable(&v_max, "M_V",4, 6,"uniform",0,0);


    float a0[3] = {0.f, 0.f, 0.f};
    float v0[3] = {0.f, 0.f, 0.f};
    float x0[3] = {0.f, 0.f, 0.f};

    stg_symbolic_array(a0,"float", 3, "A0_",0, 0,"poisson",0,0);
    stg_symbolic_array(v0,"float", 3, "V0_",0, 0,"uniform",0,0);
    stg_symbolic_array(x0,"float", 3, "X0_",0, 0, "uniform",0,0);

    const float dt = 0.01f;
    float velocity_setpoint[3] = {-3.f, 0.f, -1.f};

    stg_symbolic_array(velocity_setpoint,"float", 3, "VP_", 0, 0, "uniform",0,0);


    stg_begin_test();

    stg_input_float(&j_max, 55.2f);
    stg_input_float(&a_max, 6.f);
    stg_input_float(&v_max, 6.f);


    stg_input_array(a0,"float", 3, a0);
    stg_input_array(v0,"float", 3, v0);
    stg_input_array(x0,"float", 3, x0);

    stg_input_array(velocity_setpoint,"float", 3, velocity_setpoint);


    for (int i = 0; i < 3; i++) {
        trajectory[i].setMaxJerk(j_max);
        trajectory[i].setMaxAccel(a_max);
        trajectory[i].setMaxVel(v_max);
        trajectory[i].setCurrentAcceleration(a0[i]);
        trajectory[i].setCurrentVelocity(v0[i]);
    }


    for (int i = 0; i < 3; i++) {
        trajectory[i].updateDurations(velocity_setpoint[i]);
        break;
    }

    /*
        float t123 = trajectory[0].getTotalTime();
        int nb_steps = ceil(t123 / dt);
        printf("Nb steps = %d\n", nb_steps);

    */

	// old outer loop with multiple timesteps has been removed
	// we are only doing 1 time step (dt=0.01)

	for (int i = 0; i < 3; i++) {
		trajectory[i].updateTraj(dt);
	}

	for (int i = 0; i < 3; i++) {
		trajectory[i].updateDurations(velocity_setpoint[i]);
	}

	VelocitySmoothing::timeSynchronization(trajectory, 2);

	/*
	for (int i = 0; i < 1; i++) {
		printf("Traj[%d]\n", i);
		printf("jerk = %.3f\taccel = %.3f\tvel = %.3f\tpos = %.3f\n",
		       trajectory[i].getCurrentJerk(),
		       trajectory[i].getCurrentAcceleration(),
		       trajectory[i].getCurrentVelocity(),
		       trajectory[i].getCurrentPosition());
		printf("T1 = %.3f\tT2 = %.3f\tT3 = %.3f\n", trajectory[i].getT1(), trajectory[i].getT2(), trajectory[i].getT3());
		printf("\n");
	}
	*/

	//
	// @TODO: check something so that this is an actual test (i.e. it can actually fail)
	//



	stg_end_test();
    stg_record_test(true);
	return TEST_PASS;
}

int main(int argc, char *argv[])
{
	//RUN_TEST("initial conditions", test_initial_conditions);
	//RUN_TEST("getter/setter", test_getter_setter);
	//RUN_TEST("computeT1", test_computeT1);
	//RUN_TEST("edge cases", test_edge_case);
	//RUN_TEST("trajectory", test_trajectory);
    test_getter_setter();
	test_trajectory();

	return 0;
}