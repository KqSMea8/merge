#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "stringUtil.h"

#define BUFF_SIZE 25 

static char array[] = JSON;
static char *obj = JSON;
static char str[] = "http://localhost:9000/ws1tx/adfs1sdf/xueleifeng.mp3";

int loge(const char *tag, const char *info) {
    printf("%s:%s\n", tag, info);
    printf("strlen:%ld\n", strlen(info));
    return 0;
}

int test_strsep() {
#if 0
    char str[] = "root:x::0:root:/root:/bin/bash:";
    char *buf;
    char *token;
    buf = str;

    printf("0------\n");
    while((token = strsep(&buf, ":")) != NULL){
        printf("%s\n", token);
    }
    printf("1------\n");
#endif

#if 0
    char str[] = "Number=100&maxMtu=200";
    char *name, *value, *next;
    int i = 0;
    value = str;
    for (i = 0; i < 2; ++i) {
        name = strsep(&value, "=");
        next = value;
        value = strsep(&next, "&");
        printf("name=%s\n", name);
        printf("value=%s\n", value);
        value = next;
    }
#endif

#if 0
    char *next = str;
    char *value, *aim;

    printf("low:%c\n", tolower('A'));
    printf("up:%c\n", toupper('c'));

    while (NULL != strsep(&next, "/")) {    
        printf("0next:%s\n", next);
        if (NULL != next)
            aim = next;
    }
    printf("aim:%s\n", aim);

#endif

#if 0
    char *dup = strdup(str);
    printf("dup:%s\n", dup);
    free(dup);
    dup = NULL;
#endif

    return 0;
}

int testStringUtil(void) {
    printf("testStringUtil begin.\n");    
    
    char buf[BUFF_SIZE] = {0};
    char *p = (char *)malloc(sizeof(char) * BUFF_SIZE);
    memset(p, 0, BUFF_SIZE);

    int strlen_a = strlen(array);
    int strlen_p = strlen(obj);
    int sizeof_a = sizeof(array);
    int sizeof_p = sizeof(obj);
    printf("strlen_a:%d\n", strlen_a);
    printf("strlen_p:%d\n", strlen_p);
    printf("sizeof_a:%d\n", sizeof_a);
    printf("sizeof_p:%d\n", sizeof_p);

    //memset(array, 0, sizeof_a);
    //printf("array init:%s\n", array);

#if 0
    strncpy(p, obj, 5 );
    printf("--->%c\n", p[5]);
    loge("p", p);
    strncpy(buf, obj, 5);
    printf("===>%c\n", obj[5]);
    loge("buf", buf);
#endif
    
#if 0
    char *cmp1 = "abc";
    char cmp2[] = "123";
    strncat(p, cmp2, strlen(cmp2));
    loge("p", p);
    strncat(p, cmp1, strlen(cmp1) - 1);
    loge("p", p);
#endif

    //printf("strncpm:%d\n", strncmp(array, obj, strlen(obj)));
    //printf("strchr:%s\n", strrchr(obj, 'a'));
    printf("strstr:%s\n", strstr(obj, "ang"));

    test_strsep();

    

    free(p);
    p = NULL;
    printf("testStringUtil end.\n");

    return 0;
}

#if 0
strcpy(des, src) // 即使des的长度不足以容纳src，但是依然可以复制所有src的内容到des，此时会出现stack smashing detected错误。
strncpy(des, src, n) // 在进行复制时，如果刚好复制的字符串src长度超过des，那么只会复制src中n个字符到des中，此时需要注意des的长度。 
当des使用malloc进行堆内存分配是，一定要记得memset(des, 0, len)，因为有可能之前使用过的堆内存中的内容依然存在，导致出现错误的结果。巨坑！！！

strncat(des, src, n) //把src所指向的n个字符串复制到dest所指向的字符串后面（删除*dest原来末尾的“\0”）。要保证*dest足够长，以容纳被复制进来的*src。*src中原有的字符不变。返回指向dest的指针。如果n大于字符串src的长度，那么仅将src指向的字符串内容追加到dest的尾部。strncat()会将dest字符串最后的'\0'覆盖掉，字符追加完成后，再追加'\0'。

strstr(src, substr); 判断字符串src中是否包含substr。如果是，则返回substr在src中首次出现的地址(包含substr)；如果否，返回NULL。

strsep(src, substr); 通过substr字符分割字符串src，substr最好为单个字符。str中如果包含substr，substr中的字符将会被替换成NULL，src的地址将会被改变为第一次出现substr字符之后的位置，返回原src到第一次出现substr字符的字符串。
如: char *str = "root:x::0:root:/root:/bin/bash:"
调用char *m = strsep(str, ":");之后，m = "root";, str = "x::0:root:/root:/bin/bash:";


#endif
