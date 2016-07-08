#include <stdio.h>

int __attribute__ ((weak))
foo()
{
    printf("weak foo\n");
    return 0;
}
