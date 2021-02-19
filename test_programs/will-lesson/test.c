#include "../../lib/stg.h"
#include <stdlib.h>
#include <assert.h>
#include <string.h>
#include <stdio.h>
#define LIMIT 1000000

int vals[7] = {63, 336, -974,1,0,1,0};
int valCounter =0;

void myexit(int s) {
 _EXIT: goto _EXIT;
}

typedef struct node {
  int h;
  struct node *n;
} *List;

int simple_c() {
  /* Build a list of the form 1->...->1->2->....->2->3 */
  List a = (List) malloc(sizeof(struct node));
  if (a == 0) myexit(1);
  List t;
  List p = a;
  while (vals[valCounter++]) {
    p->h = 1;
    t = (List) malloc(sizeof(struct node));
    if (t == 0) myexit(1);
    p->n = t;
    p = p->n;
  }
  while (vals[valCounter++]) {
    p->h = 2;
    t = (List) malloc(sizeof(struct node));
    if (t == 0) myexit(1);
    p->n = t;
    p = p->n;
  }
  p->h = 3;

  /* Check it */
  p = a;
  while (p->h == 1)
    p = p->n;
  while (p->h == 2)
    p = p->n;
  if(p->h != 3) assert(0);

  return 0;
}

//Function isn't called in this run. Can be ignored
int terminator_03_2(){
  int x=vals[valCounter++];
  int y=vals[valCounter++];
  if (!(y <= LIMIT)) return 0;

  if (y>0) {
      while(x<100) {
          x=x+y;
      }
  }

  if(!(y<=0 || (y>0 && x>=100))) assert(0);

  return 0;
}

int driver(int choice1, int choice2, int choice3){

  if(choice1>0){
    if(choice2+choice3>0){
      terminator_03_2(); //Not called
    }
    else{
      simple_c(); //Called
    }
  }
  return 0;
}

int main(){
  stg_begin_test();
  stg_symbolic_array(vals, "int", 7, "val_");
  int test = driver(vals[valCounter++], vals[valCounter++], vals[valCounter++]);
  stg_end_test();
  stg_record_test(test);
}