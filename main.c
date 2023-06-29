#include <stdio.h>
#include <string.h>
#include "ISO_Fortran_binding.h"

extern void hello(char [], size_t);

int main() {
    char target[] = "World!";

    hello(target, strlen(target));
    return 0;
}
