#include <stdio.h>
#include <string.h>
#include "ISO_Fortran_binding.h"

extern void hello(CFI_cdesc_t *);

int main() {
    char *target = "World!";

    CFI_cdesc_t targetDesc;

    CFI_establish( &targetDesc
            , target
            , CFI_attribute_other
            , CFI_type_char
            , strlen(target)
            , 0
            , NULL
    );

    printf("\r");
    hello(&targetDesc);
    return 0;
}
