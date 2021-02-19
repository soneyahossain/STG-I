#include <stdio.h>
#include <math.h>
#include <float.h>
#include "stgi/stg.h"


bool isGreaterThan(double x, double y)
{
    double result;
    if( pow(x,y)>pow(x,2))
        result=pow(x,y);
    else result=pow(x,2);

    if(pow(x,y)>0.5 ) return true;
    else return false;
}


int main()
{
    double base=3.0, power=4.0;

    //scanf("%lf",&base);
    //scanf("%lf",&power);

    stg_begin_test();

    stg_symbolic_variable_double(&base, "B");
    stg_symbolic_variable_double(&power, "P");


    bool result=isGreaterThan(base,power);
    stg_end_test();

    stg_record_test(result);
    //print_maps();
    return 0;
}