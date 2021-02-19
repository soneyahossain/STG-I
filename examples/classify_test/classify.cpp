#include <stdio.h>
#include "stgi/stg.h"


int classify(int a, int b, int c) {

if (a<=0 || b<=0 || c<=0) 
    return 4; 

  int type =0;

  if (a==b) 
    type+=1;
  if (a==c) 
    type+=2; 
  if (b==c) 
    type+=3; 

  if (type==0) {
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

    int a=8, b=9, c=10;

    stg_begin_test();
    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    stg_symbolic_variable_int(&c, "C");

    int triangle_type = classify(a, b, c);

    stg_end_test();
    stg_record_test(true);
    return 0;

}
