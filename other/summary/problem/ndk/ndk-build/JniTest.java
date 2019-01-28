package com.example.ndkdemo;

public class JniTest {

    public static native String getPackname(Object o);

    static {
        System.loadLibrary("JNI_ANDROID_TEST");
    }

}
