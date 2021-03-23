#include <stdio.h>
#include <gtest/gtest.h>
#include "stgi/stg.h"
#include "classify.hpp"

TEST(ClassifyTest, InvalidTriangle)
{

    stg_start_instrument();

    int a=0, b=9, c=10;

    stg_begin_test();
    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    stg_symbolic_variable_int(&c, "C");

    int triangle_type = classify(a, b, c);

    stg_end_test();

    print_triangle_type(a, b, c, triangle_type);

    stg_record_test(true);
    stg_stop_instrument();

}

TEST(ClassifyTest, Scalene)
{

    stg_start_instrument();
    int a=8, b=9, c=10;
    stg_begin_test();

    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    stg_symbolic_variable_int(&c, "C");

    int triangle_type = classify(a, b, c);

    stg_end_test();

    print_triangle_type(a, b, c, triangle_type);

    stg_record_test(true);
    stg_stop_instrument();

}

TEST(ClassifyTest, Isosceles)
{

    stg_start_instrument();

    int a=38, b=78, c=78;
    stg_begin_test();

    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    stg_symbolic_variable_int(&c, "C");

    int triangle_type = classify(a, b, c);

    stg_end_test();

    print_triangle_type(a, b, c, triangle_type);

    stg_record_test(true);
    stg_stop_instrument();

}

TEST(ClassifyTest, Equilateral)
{

    stg_start_instrument();
    int a=1, b=1, c=1;
    stg_begin_test();

    stg_symbolic_variable_int(&a, "A");
    stg_symbolic_variable_int(&b, "B");
    stg_symbolic_variable_int(&c, "C");

    int triangle_type = classify(a, b, c);

    stg_end_test();

    print_triangle_type(a, b, c, triangle_type);

    stg_record_test(true);
    stg_stop_instrument();

}

int main(int argc, char** argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
