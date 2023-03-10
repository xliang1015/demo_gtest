#include "foo.h"
#include <gtest/gtest.h>

TEST(GCDTest, EvenTest)
{
    EXPECT_EQ(2, gcd(4, 10));
    EXPECT_EQ(6, gcd(30, 18));
    EXPECT_EQ(15, gcd(30, 45));
}

TEST(GCDTest, PrimeTest)
{
    EXPECT_EQ(1, gcd(23, 10));
    EXPECT_EQ(1, gcd(359, 71));
    EXPECT_EQ(1, gcd(47, 83));
}

TEST(FactorialTest, HandlesZeroInput) {
  EXPECT_EQ(factorial(0), 1);
}

TEST(FactorialTest, HandlesPositiveInput) {
  EXPECT_EQ(factorial(1), 1);
  EXPECT_EQ(factorial(2), 2);
  EXPECT_EQ(factorial(3), 6);
  EXPECT_EQ(factorial(8), 40320);
}

#if 0
int main(int argc, char *argv[])
{
  testing::InitGoogleTest(&argc, argv);
  return RUN_ALL_TESTS();
}
#endif
