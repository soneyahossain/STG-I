#include <stdio.h>
#include <math.h>
#include <float.h>
#include "stgi/stg.h"


bool isIsoscelesRightTriangle(double theta, double hypotenuse)
{
	double height = sin(theta)* sqrt(hypotenuse);
    double base = cos(theta)* sqrt(hypotenuse);

	if((height - base) < 0.001){     //	if(fabs(height - base) < 0.001)
        //printf("%lf\n",height );
        //printf("%lf\n",base );
		return true;
    }
	else return false;
}

int main()
{
    double theta=90, hyp_sqr=4; // theta in degree // hyp_sqr =  square of hypotenuse
    //scanf("%lf",&theta);
    //scanf("%lf",&hyp_sqr);


    stg_begin_test();
    stg_symbolic_variable_double(&theta, "T");//, DBL_MIN, DBL_MAX);
    stg_symbolic_variable_double(&hyp_sqr, "H");//, DBL_MIN, DBL_MAX);

    theta = theta* M_PI/180; // converting from degree to radian
    bool is_isosceles = isIsoscelesRightTriangle(theta,hyp_sqr);
    stg_end_test();

    stg_record_test(is_isosceles);
    //print_maps();
    return 0;
}