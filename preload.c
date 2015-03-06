#include <stdio.h>


void (*p)(const char* x) = ADDR;

void callPrintfX()__attribute__((constructor));


void callPrintfX()
{
    p(__FILE__);
}