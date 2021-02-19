#include <stdio.h>
#include "stgi/stg.h"

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
   int a=38;
   int b=78;
   stg_begin_test();
   stg_symbolic_variable_int(&a, "A");
   stg_symbolic_variable_int(&b, "B");
   //stg_input_int(&a, 38);
   //stg_input_int(&b, 78);
   find_max(a,b);
   //stg_assert(true);
   stg_end_test();
   stg_record_test(true);
   return 0;
}