#include <stdio.h>
#include "../stg_lib/stg.h"

int main()
{
    int x, y;
    stg_begin_test();
    stg_symbolic_variable(&x, "X");
    stg_symbolic_variable(&y, "Y");
    stg_input_int(&x, 0);
    //stg_input_int(&a, 38);

    x = x + 5;

    if (x > 0){
        scanf("%d", &y);
        stg_input_int(&y, y);
    }
    else
        y = 10;

    if (x > 2)
        stg_assert(y != 2789);
    else
        stg_assert(true);

    stg_end_test();
    return 0;
}