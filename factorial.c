#include "foo.h"

int factorial(int n)
{
    int i, res;

    res = 1;
    for (i=n; i>0; i--)
    {
        res *= i;
    }

    return res;
}
