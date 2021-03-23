#include <stdio.h>
#include "classify.hpp"

#define SCALENE         1
#define ISOSCELES       2
#define EQUILATERAL     3
#define NOT_A_TRIANGLE  4

int classify(int a, int b, int c)
{
    if (a <= 0 || b <= 0 || c <= 0)
        return 4;

    int type = 0;

    if (a == b)
        type += 1;
    if (a == c)
        type += 2;
    if (b == c)
        type += 3;

    if (type == 0) {
        if (a + b <= c || b + c <= a || a + c <= b)
            type = 4;
        else
            type = 1;
        return type;
    }

    if (type > 3)
        type = 3;
    else if (type == 1 && a + b > c)
        type = 2;
    else if (type == 2 && a + c > b)
        type = 2;
    else if (type == 3 && b + c > a)
        type = 2;
    else
        type = 4;

    return type;
}

void print_triangle_type(int a, int b, int c, int ttype)
{
 switch (ttype) {
 case SCALENE:
 printf("type(%d) triangle (%d,%d,%d) is scalene\n", ttype, a, b, c);
 break;
 case ISOSCELES:
 printf("type(%d) triangle (%d,%d,%d) is isosceles\n", ttype, a, b, c);
 break;
 case EQUILATERAL:
 printf("type(%d) triangle (%d,%d,%d) is equilateral\n", ttype, a, b, c);
 break;
 case NOT_A_TRIANGLE:
 default:
 printf("type(%d) triangle (%d,%d,%d) is not a valid triangle\n", ttype, a, b, c);
 break;
 }
}
