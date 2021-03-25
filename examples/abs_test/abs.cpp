#include <stdio.h>
#include <math.h>
#include "stgi/stg.h"

int abs_min(int a, int b )
{
    int abs_min;
    if (std::abs(a) < std::abs(b)  )
        abs_min= a;
    else
        abs_min= b;

   return abs_min;
}

int test_abs_min(int a, int b, int c) {

  if (std::min((a%b),1)==0 || std::min((b%c),1) ==0 || std::min((c%a),1)==0)
        return 4;

  int type =0;

  if (abs_min(a,b)> std::abs(c))
    type+=1;
  if (abs_min(a,c)> std::abs(b))
    type+=2;
  if (abs_min(a,b)< std::abs(c))
    type+=3;

  if (type%2==0) {
    if (std::abs(a+b)<=c || std::abs(b+c)<=a || std::abs(a+c)>=b)
      type=4;
    else
      type =1;
    return type;
  }

   return type;
}


int main() {

    float a=-8, b=9, c=10;

    stg_begin_test();
    stg_symbolic_variable_float(&a, "A");
    stg_symbolic_variable_float(&b, "B");
    stg_symbolic_variable_float(&c, "C");

    int triangle_type = test_abs_min(a, b, c);

    stg_end_test();
    stg_record_test(true);
    return 0;

}
