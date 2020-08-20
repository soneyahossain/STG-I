#include "OddEven.hpp"
//#include "stdio.h"  // is this required?
#include "stg_lib/stg.h"


OddEven::OddEven()
{
	_number = 0;
}

bool OddEven::isEven() {
	return _number % 2;
}

bool OddEven::isOdd() {
	return !isEven();
}

int main()
{
	OddEven oe;
	int myNumber ;//= 5;

	// set_symbolic(&myNumber, "NUM");
	stg_symbolic_variable(&myNumber, "NUM", 50, 60, "normal" , 0,0);  //some random min, max
	stg_begin_test();
    stg_input_int(&myNumber, 5);

	oe.setNumber(myNumber);

	if (oe.isEven())
		printf("%d is even\n", myNumber);

	if (oe.isOdd())
		printf("%d is odd\n", myNumber);

   stg_end_test();
   stg_record_test(true);
}
