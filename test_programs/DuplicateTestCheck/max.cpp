#include <stdio.h>
#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"

int find_max(int a, int b)
{
   if (a > b) {
      return a;
   }
   else 
   {
      return b;
   }
}

int main()
{
    //int a, b;
    //stg_begin_test();
    //stg_symbolic_variable(&a, "A", -2147483648, 2147483647,uniform,0,0);
    //stg_symbolic_variable(&b, "B",-2147483648, 2147483647,uniform,0,0);
    //stg_input_int(&a, 0);
    //stg_input_int(&b, 1);
    find_max(0,1);
    stg_test_separator(1);
    //stg_end_test();
    //stg_record_test(true);

    //stg_begin_test();
    //stg_symbolic_variable(&a, "A", -2147483648, 2147483647,uniform,0,0);
    //stg_symbolic_variable(&b, "B",-2147483648, 2147483647,uniform,0,0);
    //stg_input_int(&a, 1);
    //stg_input_int(&b,0);
    find_max(1,0);
    stg_test_separator(2);
    //stg_end_test();
    //stg_record_test(true);


    //stg_begin_test();
    //stg_symbolic_variable(&a, "A", -2147483648, 2147483647,uniform,0,0);
    //stg_symbolic_variable(&b, "B",-2147483648, 2147483647,uniform,0,0);
    //stg_input_int(&a, 1);
    //stg_input_int(&b,0);
    find_max(1,0);
    stg_test_separator(3);

    find_max(1,0);
    stg_test_separator(4);


    find_max(1,0);
    stg_test_separator(5);
    //stg_end_test();
    //stg_record_test(true);

   return 0;
}
