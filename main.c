#include <stdio.h>

extern void hello_(const char **);

int main() {
    const char* target = "World!";
    hello_(&target);
    return 0;
}
