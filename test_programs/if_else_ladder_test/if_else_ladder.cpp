#include <stdio.h>
#include "stgi/stg.h"

bool isGreaterOrEq(int number1, int number2)
{
    if (number1 == number2) {
        return true;
    }
    else if (number1 > number2) {
        return true;
    }
    else {
        return false;
    }
}

int main()
{
    int x=0, y=1;
    stg_begin_test();
    stg_symbolic_variable_int(&x, "X");
    stg_symbolic_variable_int(&y, "Y");
    //stg_input_int(&x, 0);
    //stg_input_int(&y, 38);
    bool test = isGreaterOrEq(x, y);
    stg_end_test();
    stg_record_test(test);

    x=1; y=0;

    stg_begin_test();
    stg_symbolic_variable_int(&x, "X");
    stg_symbolic_variable_int(&y, "Y");
    test = isGreaterOrEq(x, y);
    stg_end_test();
    stg_record_test(test);


    x=1; y=1;

    stg_begin_test();
    stg_symbolic_variable_int(&x, "X");
    stg_symbolic_variable_int(&y, "Y");
    test = isGreaterOrEq(x, y);
    stg_end_test();
    stg_record_test(test);
}