#include <stdio.h>
#include <stdlib.h>
#include "version.h"

int main(void) {
    Carnage_Version version = carnage_version();
    printf("current version: %d.%d.%d\n", version.major, version.minor, version.patch);
    printf("program exit..\n");
    return EXIT_SUCCESS;
}


