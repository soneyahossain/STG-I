#include "../../lib/stg.h"
#include "../../lib/distribution.hpp"
#include <gtest/gtest.h>


int updateFutureBonus(int m_score, int p_score) {

    int score=0;
    int bonus=0;
    if( m_score>80) score+=2;
    else  score+=1;

    if(p_score>80) score+=3;
    else score+=2;

    //update futureBonus
    if( score>=4) bonus=100;
    else bonus=50;

    return score;
}

TEST(MissionCheck, CheckCombined)
{
  printf("hello");
  ASSERT_EQ(5, 5);
}

TEST(MissionCheck, CheckCombined1)
{
  printf("hi there !");
  ASSERT_EQ(5, updateFutureBonus(0,0));
}

int main(int argc, char** argv)
{

  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();

}