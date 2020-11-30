#include <stdio.h>
#include "stgi/stg.h"

int main()
{
    int a[3] = { 5, 10, 8 };

    int i=1, j=1;
    stg_begin_test();
    stg_symbolic_variable_int(&i, "A");
    stg_symbolic_variable_int(&j, "B");

    //stg_input_int(&i, 1);
    //stg_input_int(&j, 1);

    if (i > 2) {
        return 0;
    }
    else if (j > 2) {
        return 0;
    }
    else {
        a[i] = 5;
    }

    //stg_assert(a[j] != 5);
    stg_end_test();
    stg_record_test(a[j] != 5);
    return 0;
}