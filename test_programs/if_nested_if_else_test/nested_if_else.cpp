#include <stdio.h>
#include "stgi/stg.h"

bool isMaxOrMin(int a, int b, int c)
{
    if (a > b) {
        if (a > c) {
            return true;
        }
        else {
            return false;
        }
    }
    else {
        if (b > c) {

            return true;
        }
        else {
            return false;
        }
    }
}

int main()
{
 int a=550, b=38, c=58;

 stg_begin_test();
 stg_symbolic_variable_int(&a, "X");
 stg_symbolic_variable_int(&b, "Y");
 stg_symbolic_variable_int(&c, "Z");
 // stg_input_int(&a, 550);
 // stg_input_int(&b, 38);
 // stg_input_int(&c, 58);
 // stg_assert(isMaxOrMin(a, b, c));
 bool testpassed = isMaxOrMin(a, b, c);
 stg_end_test();
 stg_record_test(testpassed);

 a=0, b=38, c=10;

 stg_begin_test();

 stg_symbolic_variable_int(&a, "X");
 stg_symbolic_variable_int(&b, "Y");
 stg_symbolic_variable_int(&c, "Z");
 // stg_input_int(&a, 550);
 // stg_input_int(&b, 38);
 // stg_input_int(&c, 58);
 // stg_assert(isMaxOrMin(a, b, c));
 testpassed = isMaxOrMin(a, b, c);
 stg_end_test();
 stg_record_test(testpassed);

 a=5, b=38, c=58;
 stg_begin_test();
 stg_symbolic_variable_int(&a, "X");
 stg_symbolic_variable_int(&b, "Y");
 stg_symbolic_variable_int(&c, "Z");
 // stg_input_int(&a, 550);
 // stg_input_int(&b, 38);
 // stg_input_int(&c, 58);
 // stg_assert(isMaxOrMin(a, b, c));
 testpassed = isMaxOrMin(a, b, c);
 stg_end_test();
 stg_record_test(testpassed);
}