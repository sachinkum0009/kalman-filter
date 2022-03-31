#include <gtest/gtest.h>
#include "../include/simple_math.hpp"

TEST(CubicTest, OddNumber)
{
    ASSERT_EQ(27, cubic(3));
    
}

TEST(CubicTest, EvenNumber)
{
    ASSERT_EQ(8, cubic(2));
    
}


// int main(int argc, char *argv[])
// {
//     testing::InitGoogleTest(&argc, argv);
//     return RUN_ALL_TESTS();
// }
