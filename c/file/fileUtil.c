#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dirent.h>
#include <sys/stat.h>

#include "fileUtil.h"

typedef int (*dirent_cb) (const char *dir_path, struct dirent *dir_info, int del_dir);

int is_dir(const char *path) {
    struct stat statbuf;
    //返回文件的信息，文件信息存放在stat结构中
    if (0 == stat(path, &statbuf)) { 
        //lstat返回文件的信息，文件信息存放在stat结构中
        return (0 != S_ISDIR(statbuf.st_mode));
    }
    return -1;
}

int is_file(const char *path) {
    struct stat statbuf;
    if (0 == stat(path, &statbuf)) { 
        //判断文件是否为常规文件
        return (0 != S_ISREG(statbuf.st_mode));
    }
    return -1;
}

// need free;
char *get_file_path(const char *dir_path, const char *file_name, int check) {
    //printf("0**********dir_path:%s, file_name:%s, check:%d\n", dir_path, file_name, check);
    int dir_path_len = strlen(dir_path);
    int file_name_len = strlen(file_name);
    int file_path_len = dir_path_len + file_name_len + 2;

    char *file_path = (char *) malloc(sizeof(char) * file_path_len);
    memset(file_path, 0, file_path_len);
    //printf("1**********file_path:%s, dir_path:%s, dir_path_len:%d\n", file_path, dir_path, dir_path_len);
    //printf("--\n");
    strncpy(file_path, dir_path, dir_path_len);
    //printf("file_path:%s\n", file_path);
    if ('/' != file_path[dir_path_len - 1]) {
        strncat(file_path, "/", 1);
    }
    //printf("2**********file_path:%s, file_name:%s, file_name_len:%d\n", file_path, file_name, file_name_len);

    strncat(file_path, file_name, file_name_len);

    //printf("3**********file_path:%s, is_dir:%d, is_file_%d\n", file_path, is_dir(file_path), is_file(file_path));
    if (check) {
        if (1 == is_dir(file_path) || 1 == is_file(file_path)) {
            return file_path;
        } else {
            free(file_path);
            file_path = NULL;
            return NULL;
        }
    } else {
        return file_path;
    }
}

char *get_file_name(const char *file_path) {
    int len = strlen(file_path);
    int temp = len;
    printf("file_path:%s\n", file_path);
    printf("len:%d\n", len);

    while (temp > 0) {
        if ('/' == file_path[temp]) {
            break;
        }
        temp--;
    }

    printf("len0:%d\n", temp);
    if (temp > 0) {
        char *p = (char *) malloc(sizeof(char) * (len - temp));
        memset(p, 0, len - temp);
        memcpy(p, file_path + temp + 1, len - temp);
        printf("p0:%s\n", p);
        return p;
    } else {
        return NULL;
    }
}

char *get_file_dir(const char *file_path) {
    int len = strlen(file_path);
    int temp = len;
    printf("file_path:%s\n", file_path);
    printf("len:%d\n", len);

    while (temp > 0) {
        if ('/' == file_path[temp]) {
            break;
        }
        temp--;
    }

    printf("len0:%d\n", temp);
    if (temp > 0) {
        char *p = (char *) malloc(sizeof(char) * (temp + 1));
        memset(p, 0, len - temp);
        memcpy(p, file_path, temp);
        return p;
    } else {
        return NULL;
    }
}

// del_dir: 是否删除目录下的子目录
int rm_f(const char *dir_path, struct dirent* dir_info, int del_dir) {
    char *file_path = get_file_path(dir_path, dir_info->d_name, 1);
    //printf("+++++++++dir_path:%s, name:%s, file_path:%s\n", dir_path, dir_info->d_name, file_path);
    if (NULL == file_path) {
        return -1;
    }
    
    //printf("===>file_path:%s, is_file:%d, is_dir:%d\n", file_path, is_file(file_path), is_dir(file_path));
    if (1 == is_file(file_path)) {
        printf("0--->file:%s\n", file_path);
    } else if (1 == is_dir(file_path)) {
        if (del_dir) {
            printf("1---> dir:%s\n", file_path);
            get_dirent_in_dir(file_path, rm_f, del_dir);
        }
    }
    free(file_path);
    file_path = NULL;

    return 0;
}

// 获取指定目录下的文件和目录
int get_dirent_in_dir(const char *dir_path, dirent_cb callback, int del_dir) {
    DIR *dir;
    struct dirent *dir_info;

    //printf("is_dir:%d, dir:%p\n", is_dir(dir_path), dir);
    if (1 == is_dir(dir_path)) {
        if (NULL != (dir = opendir(dir_path))) { //打开目录指针
            while (NULL != (dir_info = readdir(dir))) {
                //printf("0===>dir_info->d_name:%s\n", dir_info->d_name);
                if (0 == strcmp(".", dir_info->d_name) 
                        || 0 == strcmp("..", dir_info->d_name)) {
                    continue;
                }
                //printf("1===>dir_path:%s, dir_info->d_name:%s\n", dir_path, dir_info->d_name);
                callback(dir_path, dir_info, del_dir);
            }
        }
    }

    return 0;
}

int testFileUtil(void) {
    char *filePath;
    filePath = get_file_path("./", "a.txt", 0);
    printf("filePath:%s\n", filePath);
    free(filePath);
    filePath = NULL;

    printf("0-----------\n"); 
    get_dirent_in_dir("./sdf12", rm_f, 1);
    printf("1-----------\n"); 

    return 0;
}

