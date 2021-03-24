#include <stdio.h>
#include <math.h>
#include "stgi/stg.h"

int test_frem(double a, double b, double c) {

if (remainder(a,b)==0 || remainder(b,c)==0 || remainder(c,a)==0)
    return 4;

  int type =0;

  if (remainder(a,b)!=0)
    type+=1;
  if (remainder(c,a)!=0)
    type+=2;
  if (remainder(b,c)!=0)
    type+=3;

  if (type%2==0) {
    if (a+b<=c || b+c<=a || a+c>=b)
      type=4;
    else
      type =1;
    return type;
  }

  if (type>3)
    type=3;
  else if (type==1 && a+b>c)
    type=2;
  else if (type==2 && a+c>b)
    type=2;
  else if (type==3 && b+c>a)
    type=2;
  else
    type =4;

  return type;
}

int main() {

    float a=8, b=9, c=10;

    stg_begin_test();
    stg_symbolic_variable_float(&a, "A");
    stg_symbolic_variable_float(&b, "B");
    stg_symbolic_variable_float(&c, "C");

    int triangle_type = test_frem(a, b, c);

    stg_end_test();
    stg_record_test(true);
    return 0;

}
