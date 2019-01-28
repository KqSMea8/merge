#ifndef FILE_UTIL_H
#define FILE_UTIL_H

#include <dirent.h>

typedef int (*dirent_cb) (const char *dir_path, struct dirent *dir_info, int del_dir);

int get_dirent_in_dir(const char *dir_path, dirent_cb callback, int del_dir);

int testFileUtil(void);

#endif
