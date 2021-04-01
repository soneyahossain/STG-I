#include <stdio.h>
#include <math.h>
#include "stgi/stg.h"

int test_srem(unsigned int a, unsigned int b, unsigned int c) {

if ((a%b)==0 || (b%c)==0 || (c%a)==0)
    return 4;

  unsigned int type =0;

  if ((a%b)!=0)
    type+=1;
  if ((c%a)!=0)
    type+=2;
  if ((b%c)!=0)
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

    unsigned int a=8, b=9, c=10;

    stg_begin_test();
    stg_symbolic_variable_uint(&a, "A");
    stg_symbolic_variable_uint(&b, "B");
    stg_symbolic_variable_uint(&c, "C");

    unsigned int triangle_type = test_srem(a, b, c);

    stg_end_test();
    stg_record_test(true);
    return 0;

}
