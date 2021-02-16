#include <stdio.h>
//#include "stgi/stg.h"

#include "../../lib/stg.h"

int main()
{
        int x=0, y=-5;
        bool testPassed=false;

        stg_begin_test();
        stg_symbolic_variable_int(&x, "X");
        stg_symbolic_variable_int(&y, "Y");

        stg_pause_recording();
        if (x +y > 0)
            testPassed = true;
        stg_resume_recording();
        if(x+y>-10) testPassed = true;

        stg_end_test();
        stg_record_test(testPassed);
        return 0;
}
