#include <stdio.h>
#include <math.h>
#include <float.h>
#include "stgi/stg.h"


bool isGreaterThan(double x, float y)
{
	if(exp(x)>exp(y))
		return true;
	else return false;
}



int main()
{
    double x=3.4; float y=3.3;
    //scanf("%lf",&x);
    //scanf("%f",&y);

    stg_begin_test();
    stg_symbolic_variable_double(&x, "S0");//, DBL_MIN, DBL_MAX);
    stg_symbolic_variable_float(&y, "S1");//, FLT_MIN, FLT_MAX);


    bool result=isGreaterThan(x,y);
    stg_end_test();

    stg_record_test(result);
    //print_maps();
    return 0;
}