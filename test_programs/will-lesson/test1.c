#include <stdio.h>
#include "../../lib/stg.h"


int test(int x) {

   int  var = x;   /* actual variable declaration */
   int  *ip;        /* pointer variable declaration */

   ip = &var;  /* store address of var in pointer variable*/


   if(ip!=0){

    printf("Address of var variable: %ld\n", &var  );

   /* address stored in pointer variable */
   printf("Address stored in ip variable: %p\n", ip );
    printf("Address of ip variable: %p\n", &ip );

   /* access the value using the pointer */
   printf("Value of *ip variable: %d\n", *ip );

   }

   return 0;
}



int main()
{
    int x = 20;
    unsigned i=60;

    if(i<90)
    {
      x++;
    }

    stg_begin_test();
    stg_symbolic_variable_double(&x, "X");

    int result=test(x);
    stg_end_test();

    stg_record_test(result);
    return 0;
}