#include <string.h>

// Define the interface for the FORTRAN 'hello' subroutine
extern void hello(char [], size_t);

int main() {
    char target[] = "World!";

    // Call the FORTRAN function
    hello(target, strlen(target));
    return 0;
}
