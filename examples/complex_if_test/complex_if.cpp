#include <stdio.h>
#include "stgi/stg.h"

int find_max(int a, int b)
{
    int c = 10 + a;
    int d = 10 - b;

    if (c > d) {
        return a;
    }
    else {
        return b;
    }
}

int main()
{
    int a=38,b=78;

    stg_begin_test();
    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    find_max(a, b);
    stg_end_test();
    stg_record_test(true);
    return 0;
}