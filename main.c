#include <stdio.h>

extern void hello(char *);

int main() {
    char* target = "World!";
    hello(&target);
    return 0;
}
