#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"
#include <gtest/gtest.h>
#include "def.hpp"



TEST(foo, test1)
{
    int m=90, p=80;

    stg_begin_test();
    stg_symbolic_variable_int(&m, "M", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&p, "P", -20, 20, uniform, 0, 0);

    stg_start_intrmnt();

    int result = foo(m,p);
    stg_stop_intrmnt();

    stg_end_test();
    stg_record_test(result==10);
    ASSERT_EQ(10, result);


}
/*
TEST(foo, test2)
{

    int m=90,  p=20;

    stg_begin_test();
    stg_symbolic_variable_int(&m, "M", -20, 20, uniform, 0, 0);
    stg_symbolic_variable_int(&p, "P", -20, 20, uniform, 0, 0);

    stg_start_intrmnt();
    int result = foo(m,p);
    stg_stop_intrmnt();


    stg_end_test();
    stg_record_test(result==5);
    ASSERT_EQ(5, result);

}

*/
int main(int argc, char** argv)
{

  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();

}