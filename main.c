#include <stdio.h>


void printX(const char* x)
{
    printf("%s\n", x);
}

int main()
{
    printX(__FILE__);
    return 0;
}