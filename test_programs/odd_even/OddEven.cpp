#include "OddEven.hpp"
#include "stdio.h"

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
	int myNumber = 5;

	// set_symbolic(&myNumber, "NUM");
	oe.setNumber(myNumber);

	if (oe.isEven())
		printf("%d is even\n", myNumber);

	if (oe.isOdd())
		printf("%d is odd\n", myNumber);
}
