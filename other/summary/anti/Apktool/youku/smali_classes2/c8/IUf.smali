.class public Lc8/IUf;
.super Ljava/lang/Object;
.source "UpdateCenterUtils.java"


# static fields
.field public static final IS_ENABLE_HOTPATCH_KEY:Ljava/lang/String; = "is_enable_hotpatch"

.field private static final IS_TRACE_DVM_CRASH:Ljava/lang/String; = "is_trace_dvm_crash"

.field private static MODULE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "hotpatch"

.field private static final hexDigits:[C

.field private static mReadBuffer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final mSync:Ljava/lang/Object;

.field private static sApplication:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lc8/IUf;->hexDigits:[C

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/IUf;->mSync:Ljava/lang/Object;

    .line 399
    const-string/jumbo v0, "hotpatch"

    sput-object v0, Lc8/IUf;->MODULE:Ljava/lang/String;

    return-void

    .line 43
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static _2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    const/4 v1, 0x1

    move-object v2, p2

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->before_Method_invoke(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Object;

    move-object p1, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    move-object p2, v2

    :cond_0
    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v4, :cond_1

    :try_start_0
    invoke-virtual/range {p0 .. p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_1
    :goto_0
    invoke-static {v0, v1, v3}, Lcom/ali/mobisecenhance/ReflectMap;->after_Method_invoke(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static final byteToHexString([B)Ljava/lang/String;
    .locals 8
    .param p0, "tmp"    # [B

    .prologue
    .line 90
    const/16 v6, 0x20

    new-array v5, v6, [C

    .line 91
    .local v5, "str":[C
    const/4 v2, 0x0

    .line 92
    .local v2, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_0
    const/16 v6, 0x10

    if-ge v1, v6, :cond_0

    .line 93
    aget-byte v0, p0, v1

    .line 94
    .local v0, "byte0":B
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    sget-object v6, Lc8/IUf;->hexDigits:[C

    ushr-int/lit8 v7, v0, 0x4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v3

    .line 95
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    sget-object v6, Lc8/IUf;->hexDigits:[C

    and-int/lit8 v7, v0, 0xf

    aget-char v6, v6, v7

    aput-char v6, v5, v2

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "byte0":B
    :cond_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    .line 98
    .local v4, "s":Ljava/lang/String;
    return-object v4
.end method

.method public static cleanFileDirs(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 329
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_1

    .line 339
    :cond_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 334
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 335
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 336
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lc8/IUf;->deleteFile(Ljava/io/File;)Z

    .line 335
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 401
    sget-object v0, Lc8/IUf;->MODULE:Ljava/lang/String;

    invoke-static {v0, p0, p1, p2, p3}, Lc8/uVb;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    return-void
.end method

.method public static commitSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "monitorPoint"    # Ljava/lang/String;
    .param p1, "arg"    # Ljava/lang/String;

    .prologue
    .line 405
    sget-object v0, Lc8/IUf;->MODULE:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lc8/uVb;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v7, v2, :cond_3

    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "inChannel":Ljava/nio/channels/FileChannel;
    const/4 v6, 0x0

    .line 419
    .local v6, "outChannel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 420
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 421
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 423
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 425
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 426
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    .line 427
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    if-eqz v1, :cond_2

    .line 437
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 439
    :cond_2
    if-eqz v6, :cond_3

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 444
    .end local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .end local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :cond_3
    return-void

    .line 429
    .restart local v1    # "inChannel":Ljava/nio/channels/FileChannel;
    .restart local v6    # "outChannel":Ljava/nio/channels/FileChannel;
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 431
    const/4 v2, 0x2

    if-ne v7, v2, :cond_6

    .line 432
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to copy file[src="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", dest="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    .end local v0    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 437
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 439
    :cond_4
    if-eqz v6, :cond_5

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    throw v2

    .line 436
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_6
    if-eqz v1, :cond_7

    .line 437
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 439
    :cond_7
    if-eqz v6, :cond_8

    .line 440
    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 415
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0
.end method

.method public static deleteFile(Ljava/io/File;)Z
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 313
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 314
    :cond_0
    const/4 v5, 0x1

    .line 324
    :goto_0
    return v5

    .line 316
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 317
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 318
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_2

    .line 319
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 320
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lc8/IUf;->deleteFile(Ljava/io/File;)Z

    .line 319
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 324
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v5

    goto :goto_0
.end method

.method public static downloadFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p0, "httpUrl"    # Ljava/lang/String;
    .param p1, "saveFile"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 355
    const/4 v2, 0x0

    .line 360
    .local v2, "bytesum":I
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 368
    .local v9, "url":Ljava/net/URL;
    :try_start_1
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 369
    .local v8, "parentFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_0

    .line 370
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 372
    :cond_0
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 373
    .local v3, "conn":Ljava/net/URLConnection;
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 374
    .local v7, "inStream":Ljava/io/InputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 376
    .local v6, "fs":Ljava/io/FileOutputStream;
    const/16 v11, 0x4b4

    new-array v0, v11, [B

    .line 377
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v7, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "byteread":I
    const/4 v11, -0x1

    if-eq v1, v11, :cond_1

    .line 378
    add-int/2addr v2, v1

    .line 379
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v11, v2}, Ljava/io/PrintStream;->println(I)V

    .line 380
    const/4 v11, 0x0

    invoke-virtual {v6, v0, v11, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 383
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v6    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/InputStream;
    .end local v8    # "parentFile":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 384
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 388
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "url":Ljava/net/URL;
    :goto_1
    return v10

    .line 361
    :catch_1
    move-exception v5

    .line 363
    .local v5, "e1":Ljava/net/MalformedURLException;
    invoke-virtual {v5}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_1

    .line 382
    .end local v5    # "e1":Ljava/net/MalformedURLException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "byteread":I
    .restart local v3    # "conn":Ljava/net/URLConnection;
    .restart local v6    # "fs":Ljava/io/FileOutputStream;
    .restart local v7    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "parentFile":Ljava/io/File;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_1
    const/4 v10, 0x1

    goto :goto_1

    .line 386
    .end local v0    # "buffer":[B
    .end local v1    # "byteread":I
    .end local v3    # "conn":Ljava/net/URLConnection;
    .end local v6    # "fs":Ljava/io/FileOutputStream;
    .end local v7    # "inStream":Ljava/io/InputStream;
    .end local v8    # "parentFile":Ljava/io/File;
    :catch_2
    move-exception v4

    .line 387
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getApkSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 201
    const/4 v11, 0x0

    .line 202
    .local v11, "readBuffer":[B
    sget-object v15, Lc8/IUf;->mSync:Ljava/lang/Object;

    monitor-enter v15

    .line 203
    :try_start_0
    sget-object v12, Lc8/IUf;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 204
    .local v12, "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    if-eqz v12, :cond_0

    .line 205
    const/4 v14, 0x0

    sput-object v14, Lc8/IUf;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 206
    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v11, v0

    .line 208
    :cond_0
    if-nez v11, :cond_1

    .line 209
    const/16 v14, 0x2000

    new-array v11, v14, [B

    .line 210
    new-instance v12, Ljava/lang/ref/WeakReference;

    .end local v12    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    invoke-direct {v12, v11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 212
    .restart local v12    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_1
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :try_start_1
    new-instance v7, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 217
    .local v7, "jarFile":Ljava/util/jar/JarFile;
    const/4 v2, 0x0

    .line 219
    .local v2, "certs":[Ljava/security/cert/Certificate;
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 220
    .local v3, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 221
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/jar/JarEntry;

    .line 222
    .local v8, "je":Ljava/util/jar/JarEntry;
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v14

    if-nez v14, :cond_2

    .line 225
    invoke-virtual {v8}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    .line 227
    .local v10, "name":Ljava/lang/String;
    const-string/jumbo v14, "META-INF/"

    invoke-virtual {v10, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 229
    invoke-static {v7, v8, v11}, Lc8/IUf;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v9

    .line 231
    .local v9, "localCerts":[Ljava/security/cert/Certificate;
    if-nez v9, :cond_3

    .line 232
    const/4 v14, 0x0

    .line 271
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarFile":Ljava/util/jar/JarFile;
    .end local v8    # "je":Ljava/util/jar/JarEntry;
    .end local v9    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v10    # "name":Ljava/lang/String;
    :goto_1
    return-object v14

    .line 212
    .end local v12    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 233
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v7    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v8    # "je":Ljava/util/jar/JarEntry;
    .restart local v9    # "localCerts":[Ljava/security/cert/Certificate;
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v12    # "readBufferRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<[B>;"
    :cond_3
    if-nez v2, :cond_4

    .line 234
    move-object v2, v9

    goto :goto_0

    .line 237
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_3
    array-length v14, v2

    if-ge v5, v14, :cond_2

    .line 238
    const/4 v4, 0x0

    .line 239
    .local v4, "found":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v14, v9

    if-ge v6, v14, :cond_5

    .line 240
    aget-object v14, v2, v5

    if-eqz v14, :cond_7

    aget-object v14, v2, v5

    aget-object v15, v9, v6

    invoke-virtual {v14, v15}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 242
    const/4 v4, 0x1

    .line 246
    :cond_5
    if-eqz v4, :cond_6

    array-length v14, v2

    array-length v15, v9

    if-eq v14, v15, :cond_8

    .line 247
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 239
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 237
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 252
    .end local v4    # "found":Z
    .end local v5    # "i":I
    .end local v6    # "j":I
    .end local v8    # "je":Ljava/util/jar/JarEntry;
    .end local v9    # "localCerts":[Ljava/security/cert/Certificate;
    .end local v10    # "name":Ljava/lang/String;
    :cond_9
    invoke-virtual {v7}, Ljava/util/jar/JarFile;->close()V

    .line 253
    sget-object v15, Lc8/IUf;->mSync:Ljava/lang/Object;

    monitor-enter v15
    :try_end_3
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 254
    :try_start_4
    sput-object v12, Lc8/IUf;->mReadBuffer:Ljava/lang/ref/WeakReference;

    .line 255
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 256
    if-eqz v2, :cond_b

    :try_start_5
    array-length v14, v2

    if-lez v14, :cond_b

    .line 257
    array-length v1, v2

    .line 258
    .local v1, "N":I
    array-length v14, v2

    new-array v13, v14, [Landroid/content/pm/Signature;

    .line 259
    .local v13, "signatures":[Landroid/content/pm/Signature;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    if-ge v5, v1, :cond_a

    .line 260
    new-instance v14, Landroid/content/pm/Signature;

    aget-object v15, v2, v5

    invoke-virtual {v15}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v15

    invoke-direct {v14, v15}, Landroid/content/pm/Signature;-><init>([B)V

    aput-object v14, v13, v5
    :try_end_5
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    .line 259
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 255
    .end local v1    # "N":I
    .end local v5    # "i":I
    .end local v13    # "signatures":[Landroid/content/pm/Signature;
    :catchall_1
    move-exception v14

    :try_start_6
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v14

    .line 267
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v14

    const/4 v14, 0x0

    goto :goto_1

    .line 262
    .restart local v1    # "N":I
    .restart local v2    # "certs":[Ljava/security/cert/Certificate;
    .restart local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v5    # "i":I
    .restart local v7    # "jarFile":Ljava/util/jar/JarFile;
    .restart local v13    # "signatures":[Landroid/content/pm/Signature;
    :cond_a
    const/4 v14, 0x0

    aget-object v14, v13, v14

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v14

    goto :goto_1

    .line 264
    .end local v1    # "N":I
    .end local v5    # "i":I
    .end local v13    # "signatures":[Landroid/content/pm/Signature;
    :cond_b
    const/4 v14, 0x0

    goto :goto_1

    .line 269
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v14

    const/4 v14, 0x0

    goto :goto_1

    .line 271
    :catch_2
    move-exception v14

    const/4 v14, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getApplication()Landroid/app/Application;
    .locals 2

    .prologue
    .line 60
    const-class v1, Lc8/IUf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/IUf;->sApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Lc8/IUf;->getSystemApp()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lc8/IUf;->sApplication:Landroid/app/Application;

    .line 63
    :cond_0
    sget-object v0, Lc8/IUf;->sApplication:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getContainerSign(Landroid/app/Application;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    const/4 v3, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 162
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 163
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v4, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v4

    if-nez v4, :cond_1

    .line 171
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-object v3

    .line 166
    .restart local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 167
    .local v3, "str":Ljava/lang/String;
    goto :goto_0

    .line 168
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static final getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v9

    .line 105
    :cond_1
    const/4 v5, 0x0

    .line 106
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 108
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    :try_start_0
    const-string/jumbo v10, "MD5"

    invoke-static {v10}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    .line 109
    .local v8, "md":Ljava/security/MessageDigest;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 111
    const/16 v10, 0x400

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_1
    invoke-virtual {v4, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    .local v7, "length":I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_3

    .line 114
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 115
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    const-wide/16 v10, 0x1

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 121
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v7    # "length":I
    :catch_0
    move-exception v3

    move-object v5, v6

    .line 122
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "md":Ljava/security/MessageDigest;
    .local v3, "ex":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    if-eqz v5, :cond_2

    .line 128
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 133
    :cond_2
    :goto_3
    if-eqz v4, :cond_0

    .line 135
    :try_start_4
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 136
    :catch_1
    move-exception v2

    .line 137
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 118
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "length":I
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :cond_3
    :try_start_5
    invoke-virtual {v8}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 119
    .local v0, "b":[B
    invoke-static {v0}, Lc8/IUf;->byteToHexString([B)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v9

    .line 126
    if-eqz v6, :cond_4

    .line 128
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 133
    :cond_4
    :goto_4
    if-eqz v4, :cond_0

    .line 135
    :try_start_7
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 136
    :catch_2
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 129
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 129
    .end local v0    # "b":[B
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "length":I
    .end local v8    # "md":Ljava/security/MessageDigest;
    .restart local v3    # "ex":Ljava/lang/Exception;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    :goto_5
    if-eqz v5, :cond_5

    .line 128
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 133
    :cond_5
    :goto_6
    if-eqz v4, :cond_6

    .line 135
    :try_start_9
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 138
    :cond_6
    :goto_7
    throw v9

    .line 129
    :catch_5
    move-exception v2

    .line 130
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 137
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 126
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "md":Ljava/security/MessageDigest;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 121
    .end local v8    # "md":Ljava/security/MessageDigest;
    :catch_7
    move-exception v3

    goto :goto_2
.end method

.method private static getProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 458
    if-nez p0, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-object v5

    .line 460
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    .line 461
    .local v4, "pid":I
    const-string/jumbo v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 462
    .local v3, "mActivityManager":Landroid/app/ActivityManager;
    if-eqz v3, :cond_0

    .line 464
    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 465
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 468
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 469
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v4, :cond_2

    .line 470
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    .end local v0    # "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "mActivityManager":Landroid/app/ActivityManager;
    .end local v4    # "pid":I
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method private static getSystemApp()Landroid/app/Application;
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 68
    :try_start_0
    const-string/jumbo v7, "android.app.ActivityThread"

    invoke-static {v7}, Lc8/IUf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "activitythread":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "currentActivityThread"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 73
    .local v5, "m_currentActivityThread":Ljava/lang/reflect/Method;
    const-string/jumbo v7, "mInitialApplication"

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 75
    .local v4, "f_mInitialApplication":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lc8/IUf;->_2invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "current":Ljava/lang/Object;
    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    .local v1, "app":Ljava/lang/Object;
    check-cast v1, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v1    # "app":Ljava/lang/Object;
    .end local v2    # "current":Ljava/lang/Object;
    .end local v4    # "f_mInitialApplication":Ljava/lang/reflect/Field;
    .end local v5    # "m_currentActivityThread":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v3

    .line 83
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v6

    .line 84
    goto :goto_0
.end method

.method public static final getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 297
    :try_start_0
    invoke-static {}, Lc8/IUf;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lc8/IUf;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-object v1

    .line 300
    :catch_0
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 303
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public static isApkDebugable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 345
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 349
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static isEnableHotPatch(Landroid/app/Application;)Z
    .locals 4
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    .line 143
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 144
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "is_enable_hotpatch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "result":Z
    return v0
.end method

.method public static isMainProcess(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    invoke-static {p0}, Lc8/IUf;->getProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "processName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const/4 v2, 0x1

    .line 452
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isPublicKeyMatch(Landroid/app/Application;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-static {p0}, Lc8/IUf;->getContainerSign(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "containKey":Ljava/lang/String;
    invoke-static {p1}, Lc8/IUf;->getApkSign(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "patchKey":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const/4 v2, 0x1

    .line 156
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isSupportPatch(Landroid/app/Application;)Z
    .locals 1
    .param p0, "context"    # Landroid/app/Application;

    .prologue
    .line 175
    invoke-static {p0}, Lc8/IUf;->isEnableHotPatch(Landroid/app/Application;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lc8/hqf;->isDeviceSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, 0x1

    .line 179
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPatch(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/app/Application;
    .param p1, "apkPath"    # Ljava/lang/String;
    .param p2, "expectDM5"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v2

    .line 186
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-static {p1}, Lc8/IUf;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "fileMd5":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lc8/IUf;->isPublicKeyMatch(Landroid/app/Application;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 6
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .param p2, "readBuffer"    # [B

    .prologue
    const/4 v2, 0x0

    .line 278
    :try_start_0
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 279
    .local v1, "is":Ljava/io/InputStream;
    :cond_0
    const/4 v3, 0x0

    array-length v4, p2

    invoke-virtual {v1, p2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 281
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 282
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 292
    .end local v1    # "is":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return-object v2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "Hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "Hotpatch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception reading "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static randomTime()I
    .locals 3

    .prologue
    .line 393
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 394
    .local v0, "random":Ljava/util/Random;
    const/16 v2, 0x3c

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 395
    .local v1, "ret":I
    return v1
.end method
