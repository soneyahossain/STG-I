#include <stdio.h>
#include "stgi/stg.h"

int main()
{
    int index=1;
    int value;
    int array[3] = { 5, 10, 8 };

    stg_begin_test();
    stg_symbolic_variable_int(&index, "S");
    //stg_input_int(&index, 1);

    if (index > 2)
        value = -1;
    else
        value = array[index];

    //stg_assert(value >= 5);
    stg_end_test();
    stg_record_test(value >= 5);
    return 0;
}
