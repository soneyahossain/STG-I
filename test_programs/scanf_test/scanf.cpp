#include <stdio.h>
#include "stg_lib/stg.h"

int main()
{
    double x, y;
    stg_begin_test();
    stg_symbolic_variable(&x, "S0");
    //stg_symbolic_variable(&y, "S1");
    scanf("%lf", &x);
    scanf("%lf", &y);
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