#include "stdio.h"
#include "stg.h"

#define private public
#include "OddEven.hpp"

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

	stg_symbolic_variable(&oe._number, "NUM", 50, 60, "normal" , 0,0);  //some random min, max
	stg_begin_test();
	stg_input_int(&oe._number, 5);

	if (oe.isEven())
		printf("%d is even\n", oe._number);

	if (oe.isOdd())
		printf("%d is odd\n", oe._number);

	stg_end_test();
	stg_record_test(true);
}
