#include <stdio.h>
#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"


int main() {

   int a;
   int b; int c;
   stg_begin_test();
   stg_symbolic_variable(&a, "A", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&b, "B", -2147483648, 2147483647, uniform,0,0);
   stg_symbolic_variable(&c, "C", -2147483648, 2147483647, uniform,0,0);


   stg_input_int(&a, 1);
   stg_input_int(&b, 0);
   stg_input_int(&c, 1);


  bool exp_1=false;
  if(a>b )
    exp_1=true;

  bool exp_2=false;

  if(exp_1 && c==1)
    exp_2=true;


   stg_end_test();
   stg_record_test(exp_2);

   return 0;

}

//http://citeseerx.ist.psu.edu/viewdoc/download?doi=10.1.1.565.1070&rep=rep1&type=pdf  smt2lib