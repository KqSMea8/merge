//
// Created by Administrator on 2018/3/21.
//
#include <jni.h>
#include <stdio.h>
#include <stdlib.h>
#include "com_example_ndkdemo_JniTest.h"

JNIEXPORT jstring JNICALL Java_com_example_ndkdemo_JniTest_getPackname(JNIEnv *env, jclass clazz, jobject obj) {
    jclass native_class = env->GetObjectClass(obj);
    jmethodID mId = env->GetMethodID(native_class, "getPackageName", "()Ljava/lang/String;");
    jstring packName = static_cast<jstring>(env->CallObjectMethod(obj, mId));
    return packName;
}