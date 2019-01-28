#include <stdio.h>

#include "cJSON.h"
#include "jsonUtil.h"

char *addNumber() {
    cJSON *root = cJSON_CreateObject();
    
    cJSON_AddNumberToObject(root, "value", 15);

    char *str = cJSON_Print(root);
    cJSON_Delete(root);

    return str;
}

int parseJson(const char *str) {
    cJSON *pJson = cJSON_Parse(str);

    if (cJSON_HasObjectItem(pJson, "value")) {
        cJSON *item = cJSON_GetObjectItem(pJson, "value");
        printf("value:%d\n", item->valueint);
    }

    return 0;
}

int testJsonUtil(void)
{
    char *string = addNumber();
    printf("string:%s\n", string);
    parseJson(string);
    
    return 0;
}

