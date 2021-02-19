#include <stdio.h>
#include "stgi/stg.h"

int find_min(int num1, int num2, int num3)
{
    int min;
    if(num1<num2)
    {
       if(num1<num3)
         min = num1;
       else
         min = num3;
    }
    else
    {
       if(num2<num3)
         min = num2;
       else
        min = num3;
    }
    printf("among %d, %d, %d ,  minimum number is: %d",num1,num2,num3,min);
    return min;
}

int main()
{
   int a=38,b=78,c=78;
   stg_begin_test();
   stg_symbolic_variable_int(&a, "A");
   stg_symbolic_variable_int(&b, "B");
   stg_symbolic_variable_int(&c, "C");
   //stg_input_int(&a, 38);
   //stg_input_int(&b, 78);
   //stg_input_int(&c, 78);
   bool testpassed = find_min(a,b,c);
   stg_end_test();
   stg_record_test(testpassed);


   a=1,b=4,c=3;
   stg_begin_test();
   stg_symbolic_variable_int(&a, "A");
   stg_symbolic_variable_int(&b, "B");
   stg_symbolic_variable_int(&c, "C");
   //stg_input_int(&a, 38);
   //stg_input_int(&b, 78);
   //stg_input_int(&c, 78);
   testpassed = find_min(a,b,c);
   stg_end_test();
   stg_record_test(testpassed);

   a=1,b=1,c=1;
   stg_begin_test();
   stg_symbolic_variable_int(&a, "A");
   stg_symbolic_variable_int(&b, "B");
   stg_symbolic_variable_int(&c, "C");
   //stg_input_int(&a, 38);
   //stg_input_int(&b, 78);
   //stg_input_int(&c, 78);
   testpassed = find_min(a,b,c);
   stg_end_test();
   stg_record_test(testpassed);

   return 0;
}