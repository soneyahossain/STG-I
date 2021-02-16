#include <stdio.h>
#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"


int sum(int x, int y ) {

  int sum=0;
  int product=1;

  for (int i=x; i<=y; i++)
  {
    sum = sum+i;
    if(i%2==0){ //product of all even numbers
      product = product*i;
    }
  }

  return sum;

}
int main() {

   int a;
   int b;
   stg_begin_test();
   stg_symbolic_variable(&a, "A", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&b, "B", -2147483648, 2147483647, uniform,0,0);

   int y = 2147483647+2147483647;
   printf("%d\n",y);
   stg_input_int(&a, 1);
   stg_input_int(&b, 10);
   int result = sum(a,b);
   stg_end_test();
   stg_record_test(true);

   // This is the oracle

    assert( (a>b) || ((b>a) && (result==(b-a+1)*(b+a)/2)));
   //
   return 0;

}