#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"
#include <gtest/gtest.h>

int sum(int x, int y,int z ) {


 if( z>0)
 {
  return x+y;
 }
 else
  return x-z;



}
int main() {

   int a, b, c;
   stg_begin_test();
   stg_symbolic_variable(&a, "A", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&b, "B", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&c, "C", -2147483648, 2147483647, uniform,0,0);
   stg_input_int(&a, 1);
   stg_input_int(&b, 10);
   stg_input_int(&c, 2);
   int result = sum(a,b,c);
   stg_end_test();
   stg_record_test(true);

   // This is the oracle
   assert(result==a+b);
   //
   return 0;

}