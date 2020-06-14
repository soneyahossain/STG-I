#include <stdio.h>
#include "../stg_lib/stg.h"

int classify(int a, int b, int c)
{

    if (a <= 0 || b <= 0 || c <= 0)
        return 4;

    int type = 0;

    if (a == b)
        type += 1;
    if (a == c)
        type += 2;
    if (b == c)
        type += 3;

    if (type == 0) {
        if (a + b <= c || b + c <= a || a + c >= b)
            type = 4;
        else
            type = 1;
        return type;
    }

    if (type > 3)
        type = 3;
    else if (type == 1 && a + b > c)
        type = 2;
    else if (type == 2 && a + c > b)
        type = 2;
    else if (type == 3 && b + c > a)
        type = 2;
    else
        type = 4;

    return type;
}

int main()
{
    int a, b, c;
    stg_begin_test();
    stg_symbolic_variable(&a, "A");
    stg_symbolic_variable(&b, "B");
    stg_symbolic_variable(&c, "C");
    stg_input_int(&a, 38);
    stg_input_int(&b, 78);
    stg_input_int(&c, 78);
    classify(a, b, c);
    stg_assert(true);
    stg_end_test();

    stg_begin_test();
    stg_input_int(&a, 1);
    stg_input_int(&b, 4);
    stg_input_int(&c, 3);
    classify(a, b, c);
    stg_assert(true);
    stg_end_test();

    stg_begin_test();
    stg_input_int(&a, 1);
    stg_input_int(&b, 1);
    stg_input_int(&c, 1);
    classify(a, b, c);
    stg_assert(true);
    stg_end_test();

    return 0;
}
