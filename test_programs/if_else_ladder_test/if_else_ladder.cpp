#include <stdio.h>
#include "../stg_lib/stg.h"

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
    int x, y;
    stg_begin_test();
    stg_symbolic_variable(&x, "X");
    stg_symbolic_variable(&y, "Y");
    stg_input_int(&x, 0);
    stg_input_int(&y, 38);
    stg_assert(isGreaterOrEq(x, y));
    stg_end_test();

    stg_begin_test();
    stg_input_int(&x, 50);
    stg_input_int(&y, 38);
    stg_assert(isGreaterOrEq(x, y));
    stg_end_test();

    stg_begin_test();
    stg_input_int(&x, 50);
    stg_input_int(&y, 50);
    stg_assert(isGreaterOrEq(x, y));
    stg_end_test();
}
