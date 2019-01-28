#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "string/stringUtil.h"
#include "file/fileUtil.h"
#include "json/jsonUtil.h"

int main(int argc, char *argv[]) {
    printf("argc:%d\n", argc);	
    int i = 0;
    for (i = 0; i < argc; ++i) {
        printf("argv[%d]:%s\n", i, argv[i]);
    }

    //testStringUtil();
    //testFileUtil();
    testJsonUtil();

    printf("main over.\n");
}
