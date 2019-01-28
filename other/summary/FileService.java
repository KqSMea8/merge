package com.example.wtx.service;

import android.content.Context;
import android.os.Environment;
import android.util.Log;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/**
 * Created by wtx on 2017/8/21.
 */

//有的Android设备将内部存储设置为SDCard，所以定义的文件需要到内部存储中去查找
public class FileService {
    private Context context;
    private final static String TAG = "FileService";
    private final static String sdcardDir = "/wtx";

    public FileService(Context context) {
        this.context = context;
    }

    public static boolean writeToSDCard(String fileName, String content) throws Exception {
        boolean flag = false;
        FileOutputStream outStream = null;

        //判断sdcard是否可用
        if (Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
            //判断文件夹是否存在，如果不存在，就创建该文件夹。
            File dir = new File(Environment.getExternalStorageDirectory() + sdcardDir);
            if (!dir.exists()) {
                dir.mkdirs();
            }

            File file = new File(Environment.getExternalStorageDirectory() + sdcardDir, fileName);
            try {
                outStream = new FileOutputStream(file);
                outStream.write(content.getBytes());
                Log.i(TAG, "The content has been written to file");
                flag = true;
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (outStream != null) {
                    try {
                        outStream.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        } else {
            Log.e(TAG, "there is no SDCard");
        }

        return flag;
    }

    public static String readFromSDCard(String fileName) throws Exception {
        FileInputStream inStream = null;
        //缓存的流，与磁盘无关，不需要关闭
        ByteArrayOutputStream outSream = new ByteArrayOutputStream();

        if (Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())) {
            //判断文件夹和文件是否存在
            File dir = new File(Environment.getExternalStorageDirectory() + sdcardDir);
            if (!dir.exists()) {
                Log.e(TAG, "There is no this directory");
                return null;
            }

            File file = new File(Environment.getExternalStorageDirectory() + sdcardDir, fileName);
            if (!file.exists()) {
                Log.e(TAG, "There is no this file");
                return null;
            }
            try {
                inStream = new FileInputStream(file);
                int len = 0;
                byte[] data = new byte[1024];
                while ((len = inStream.read(data)) != -1) {
                    outSream.write(data, 0, len);
                }

            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (inStream != null)
                    inStream.close();
            }
        }

        return new String(outSream.toByteArray());
    }

    /**
     * android提供的openFileOutStream方法。
     * 默认路径：data/data/
     */
    public boolean writeToMemory(String fileName, String content, int mode) throws Exception {
        FileOutputStream outStream = null;
        boolean flag = false;
        try {
            outStream = context.openFileOutput(fileName, mode);
            outStream.write(content.getBytes());
            flag = true;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            outStream.close();
        }

        return flag;
    }

    public boolean writeToMemory(String fileName, String content) throws Exception {
        return writeToMemory(fileName, content,Context.MODE_PRIVATE);
    }

    public String ReadFromMemory(String fileName) throws Exception {
        FileInputStream inStream = context.openFileInput(fileName);

        //往内存中写入缓存数据。
        ByteArrayOutputStream outStream = new ByteArrayOutputStream();

        byte[] buffer = new byte[1024];
        int len = 0;
        //读到末尾，返回值-1。
        while((len = inStream.read(buffer)) != -1 ) {
            outStream.write(buffer, 0, len);
        }

        //得到存放在内存中的所有数据
        byte[] data = outStream.toByteArray();

        return new String(data);
    }

}
