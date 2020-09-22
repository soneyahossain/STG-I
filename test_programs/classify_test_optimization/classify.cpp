#include <stdio.h>
#include "stg_lib/stg.h"
#include "stg_lib/stg.h"
#include "stg_lib/distribution.hpp"

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

    return type;
}

int main()
{
    int a, b, c;

    stg_symbolic_variable(&a, "A", -20, 20,uniform,0,0);
    stg_symbolic_variable(&b, "B", -20, 20,uniform,0,0);
    stg_symbolic_variable(&c, "C", -20, 20,uniform,0,0);

    stg_begin_test();
    stg_input_int(&a, 38);
    stg_input_int(&b, 38);
    stg_input_int(&c, 38);
    int value = classify(a, b, c);
    stg_end_test();
    stg_record_test(value>2);

    return 0;
}