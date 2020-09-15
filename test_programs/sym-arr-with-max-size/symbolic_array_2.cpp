/*

Say we have a function, f, that takes an array, a, of size, s, so a test looks like f(a,s) for some value of a and s, like f([3,1,2],3).
What we want for stg is to generate constraints assuming some maximum length of the array a, say max_len=16.
For this we would generate 16 symbolic variables in the constraint system for any test.
Then for the specific test mentioned above we would bind a[0] = 3 to the first variable, a[1] = 1 to the second, and a[3] = 2 to the third.
The remaining 13 symbolic variables will be "free" in our constraint system.
They will be present in the dictionary, but because they are never accessed along the execution of the concrete input of f([3,1,2],3) there will be no constraints referencing them.
This will serve to normalize the denominator across tests of differing length.   Let me know if this makes sense.

*/
#include <iostream>
#include "stg_lib/stg.h"
#include "stg_lib/distribution.hpp"

void getAverageOfAllEvenNUmber(int arr[], int size);

int main () {
/*
   //int array with 2 elements.
   int arr_2_0[2] = {2,3};  //e, o
   int arr_2_1[2] = {2,4};  //e, e
   int arr_2_2[2] = {1,4};  //o, e
   int arr_2_3[2] = {1,1};  //o, o
   getAverageOfAllEvenNUmber(arr_2_0,2);
   getAverageOfAllEvenNUmber(arr_2_1,2);
   getAverageOfAllEvenNUmber(arr_2_2,2);
   getAverageOfAllEvenNUmber(arr_2_3,2);

*/

   //int array with 3 elements.
   int arr_3_0[3] = {1,1,1};  //o, o, o
   int arr_3_1[3] = {2,4,6};  //e, e, e
   int arr_3_2[3] = {1,1,2};  //o, o, e
   int arr_3_3[3] = {1,1,1};  //o, o, o
   getAverageOfAllEvenNUmber(arr_3_0,3);
   getAverageOfAllEvenNUmber(arr_3_1,3);
   getAverageOfAllEvenNUmber(arr_3_2,3);
   getAverageOfAllEvenNUmber(arr_3_3,3);



/*

   //int array with 4 elements.
   int arr_4_0[4] = {1,1,1,1};  //o, o, o, o
   int arr_4_1[4] = {1,1,1,2};  //o, o, o, e
   int arr_4_2[4] = {1,1,2,1};  //o, o, e, o
   int arr_4_3[4] = {1,1,2,2};  //o, o, e, e
   int arr_4_4[4] = {1,2,1,1};  //o, e, o, o
   int arr_4_5[4] = {1,2,1,2};  //o, e, o, e
   int arr_4_6[4] = {1,2,2,1};  //o, e, e, o
   int arr_4_7[4] = {1,2,2,2};  //o, e, e, e

   getAverageOfAllEvenNUmber(arr_4_0,4);
   getAverageOfAllEvenNUmber(arr_4_1,4);
   getAverageOfAllEvenNUmber(arr_4_2,4);
   getAverageOfAllEvenNUmber(arr_4_3,4);
   getAverageOfAllEvenNUmber(arr_4_4,4);
   getAverageOfAllEvenNUmber(arr_4_5,4);
   getAverageOfAllEvenNUmber(arr_4_6,4);
   getAverageOfAllEvenNUmber(arr_4_7,4);

*/
   return 0;
}


void getAverageOfAllEvenNUmber(int arr[], int size) {

   stg_symbolic_array(arr, "int", 10 , "a_", 0, 100, uniform, 0,0);
   stg_symbolic_variable(&size, "S", 0, 4, uniform, 0,0);

   stg_begin_test();
   stg_input_array(arr, "int", 10 , arr);
   stg_input_int(&size, size);

   int i, count=0, sum = 0;
   double avg;

   for (i = 0; i < size; ++i) {
      if(arr[i]%2==0){
        sum += arr[i];
        count++;
      }
   }
   //avg = double(sum) / count;
   stg_end_test();
   stg_record_test(true);
   //return 0;

}