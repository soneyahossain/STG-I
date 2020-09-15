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
//using namespace std;


// function declaration:
double getAverageOfAllEvenNUmber(int arr[], int size);

int main () {

   // an int array with 5 elements.
   int values_0[4] = {1000, 2, 3, 17};
   double avg;

   //pass pointer to the array as an argument.
   avg = getAverageOfAllEvenNUmber(values_0, 4);

   int values_1[7] = {1000, 2, 3, 17, 50, 90, 67};
   avg = getAverageOfAllEvenNUmber(values_1, 7);

   int values_2[8] = {1000, 2, 3, 17, 50, 90, 67, 99};
   avg = getAverageOfAllEvenNUmber(values_2, 8);

   int values_3[9] = {1000, 2, 3, 17, 50, 90, 67, 80, 4};
   avg = getAverageOfAllEvenNUmber(values_3, 9);

   int values_4[10] = {1000, 2, 3, 17, 50, 90, 67, 80, 4,0};
   avg = getAverageOfAllEvenNUmber(values_4, 10);

   int values_5[11] = {1000, 2, 3, 17, 50, 90, 67, 80, 4, 0, 12};
   avg = getAverageOfAllEvenNUmber(values_5, 11);

   printf("------------------------%lf\n", avg);

   //output the returned value
   //std::cout << "Average value is: " << avg << "\n";
   return 0;
}


double getAverageOfAllEvenNUmber(int arr[], int size) {

   stg_symbolic_array(arr, "int", 10 , "a_", -20, 20, uniform, 0,0);
   stg_begin_test();
   stg_input_array(arr, "int", 10 , arr);

   int i, count=0, sum = 0;
   double avg;

   for (i = 0; i < size; ++i) {
      if(arr[i]%2==0){
        sum += arr[i];
        count++;
      }
   }
   avg = double(sum) / count;
   stg_end_test();
   stg_record_test(true);
   return avg;

}