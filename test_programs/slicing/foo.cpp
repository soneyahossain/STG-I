#include <stdio.h>
#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"


int foo(int x, int y) {
  if (y>0) {
    y = -y;
  }
  if (x > 0) {
    return x;
  } else {
    return x - y;
  }
}
int main() {

   int a;
   int b;
   stg_begin_test();
   stg_symbolic_variable(&a, "A", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&b, "B", -2147483648, 2147483647, uniform,0,0);
   stg_input_int(&a, 13);
   stg_input_int(&b, 10);
   int result = foo(a,b);
   stg_end_test();
   stg_record_test((a<0)||((a>0 && result == a)));

   // This is the oracle
   // if (a > 0) {

   stg_begin_test();
   stg_input_int(&a, 13);
   stg_input_int(&b, 10);
   assert(result == a); // if (a<0) the assert would pass, also if ( a>0) and ( result ==a ) the test would pass
   stg_end_test();
   stg_record_test(true);

   // }

   return 0;

}

//http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.565.1070&rep=rep1&type=pdf  smt2lib