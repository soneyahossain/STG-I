#include <stdio.h>
#include "stg_lib/stg.h"
//#include "../../lib/stg.h"

int main()
{
    double x, y;
    scanf("%lf", &x);
    scanf("%lf", &y);

    stg_begin_test();
    stg_symbolic_variable_double(&x, "S0");
    stg_symbolic_variable_double(&y, "S1");

    bool isPassed = false;
    //stg_input_int(&x, 0);
    //stg_input_int(&a, 38);

    x = x + 5;

    if (x > y){
        isPassed=true;
    }
    else
        isPassed=false;
    stg_end_test();
    stg_record_test(isPassed);
    return 0;
}