#include <stdio.h>
 #include "stgi/stg.h"
 #include <stdlib.h>

bool isTall(float height);

float short_= 5.8; //in_feet
float low_end_of_average= 5.9; //5’8- 5’9 low end of average
float medium_end_of_average= 5.11; //5’10- 5’11 Medium end of average
float high_end_of_average= 6.0; //6-6’1 High end of average
float tall= 6.2; //  6’2 - 6’5 tall guy
float giant= 6.5; //6’5 - 6’10 giant

int main()
{
    float height=6.6;
    stg_begin_test();
    stg_symbolic_variable_float(&height, "H");
    //stg_input_float(&height, 6.6);
    //stg_assert(isTall(height));
    bool istall = isTall(height);
    stg_end_test();
    stg_record_test(istall);
    return 0;

}
bool isTall(float height)
{

   if(height < short_ ) return false;
   else if (5.8<= height  && height <= low_end_of_average ) return false;
   else if (5.10<= height && height <= medium_end_of_average ) return false;
   else if (high_end_of_average<= height && height <= 6.1 ) return false;
   else if (tall<= height  && height < giant ) return true;
   else if (6.9 > height && height >= giant ) return true;
   else return false;

}