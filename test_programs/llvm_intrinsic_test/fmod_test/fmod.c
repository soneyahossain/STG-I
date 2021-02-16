
#include <stdio.h>
#include <math.h>
#include "stgi/stg.h"


bool isGreaterThan(double x, double y, double a, double b  )
{
    if(fmod(x, y)>fmod(a,b))
        return true;
    else return false;
}



int main()
{
    double x=3.5, y=5.6,  a= 2.2,  b=9.0;

    stg_begin_test();

    stg_symbolic_variable_double(&x, "S0");//, DBL_MIN, DBL_MAX);
    //stg_symbolic_variable_double(&y, "S1");//, FLT_MIN, FLT_MAX);
    stg_symbolic_variable_double(&a, "A");//, DBL_MIN, DBL_MAX);
    //stg_symbolic_variable_double(&b, "B");//, FLT_MIN, FLT_MAX);

    bool result=isGreaterThan(x,y,a,b);
    stg_end_test();

    stg_record_test(result);
    //print_maps();
    return 0;
}