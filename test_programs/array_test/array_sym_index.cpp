#include <stdio.h>
#include "../stg_lib/stg.h"

int main()
{
    int index;
    int value;
    int array[3] = { 5, 10, 8 };

    stg_begin_test();
    stg_symbolic_variable(&index, "S");
    stg_input_int(&index, 1);

    if (index > 2)
        value = -1;
    else
        value = array[2];

    stg_assert(value >= 5);
    stg_end_test();
    return 0;
}