.class public Lc8/ZA;
.super Ljava/lang/Object;
.source "SoLoader.java"


# static fields
.field private static final LIB_DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 230
    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/py;->STORAGE_LOCATION:Ljava/lang/String;

    const-string/jumbo v2, "lib"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    sput-object v0, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    sget-object v0, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 234
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1loadLibrary(Ljava/lang/Runtime;Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/ali/mobisecenhance/Library;->isKeepSoloadLibrary(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    move-object v2, p0

    invoke-virtual {v0, v2}, Lcom/ali/mobisecenhance/Invocation;->initThis(Ljava/lang/Object;)V

    const/4 v1, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p1, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p1}, Ljava/lang/Runtime;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static _2load(Ljava/lang/String;)V
    .locals 5

    invoke-static {p0}, Lcom/ali/mobisecenhance/Library;->isKeepSoload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/ali/mobisecenhance/Invocation;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ali/mobisecenhance/Invocation;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, p0

    invoke-virtual/range {v0 .. v2}, Lcom/ali/mobisecenhance/Invocation;->setParam(ILjava/lang/Object;)V

    invoke-static {v0}, Lcom/ali/mobisecenhance/Library;->before_System_load(Lcom/ali/mobisecenhance/Invocation;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/mobisecenhance/Invocation;->getParamL(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object p0, v2

    :cond_1
    const/4 v3, 0x0

    if-eqz v4, :cond_2

    :try_start_0
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->load(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :cond_2
    :goto_0
    invoke-static {v0, v3}, Lcom/ali/mobisecenhance/Library;->after_System_loadLibrary(Lcom/ali/mobisecenhance/Invocation;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static declared-synchronized extractSoFromApk(Ljava/lang/String;)V
    .locals 18
    .param p0, "soName"    # Ljava/lang/String;

    .prologue
    .line 294
    const-class v13, Lc8/ZA;

    monitor-enter v13

    :try_start_0
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v12

    sget-object v14, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v12, v14}, Lc8/TA;->LockExclusive(Ljava/io/File;)Z

    .line 295
    invoke-static/range {p0 .. p0}, Lc8/ZA;->findLocalLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 296
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v12

    sget-object v14, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v12, v14}, Lc8/TA;->unLock(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_0
    monitor-exit v13

    return-void

    .line 300
    :cond_0
    const/4 v8, 0x2

    .line 302
    .local v8, "retryCount":I
    :cond_1
    add-int/lit8 v8, v8, -0x1

    .line 303
    :try_start_1
    const-string/jumbo v12, "lib/armeabi/%s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    invoke-static {v12, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "entryName":Ljava/lang/String;
    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v12

    if-eqz v12, :cond_8

    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v9

    .local v9, "targetEntry":Ljava/util/zip/ZipEntry;
    if-eqz v9, :cond_8

    .line 306
    new-instance v10, Ljava/io/File;

    sget-object v12, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v10, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 307
    .local v10, "targetFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    sget-object v12, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".tmp"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v11, v12, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    .local v11, "targetFileTmp":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v16

    cmp-long v12, v14, v16

    if-eqz v12, :cond_5

    .line 309
    :cond_2
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 310
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 312
    :cond_3
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    .line 313
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 314
    .local v3, "bos":Ljava/io/BufferedOutputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-static {}, Lc8/OA;->getApk()Ljava/util/zip/ZipFile;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v2, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 315
    .local v2, "bi":Ljava/io/BufferedInputStream;
    const/16 v12, 0x200

    new-array v6, v12, [B

    .line 316
    .local v6, "readContent":[B
    invoke-virtual {v2, v6}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .line 317
    .local v7, "readCount":I
    :goto_1
    const/4 v12, -0x1

    if-eq v7, v12, :cond_4

    .line 318
    const/4 v12, 0x0

    invoke-virtual {v3, v6, v12, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 319
    invoke-virtual {v2, v6}, Ljava/io/BufferedInputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    goto :goto_1

    .line 322
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 323
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    .end local v2    # "bi":Ljava/io/BufferedInputStream;
    .end local v3    # "bos":Ljava/io/BufferedOutputStream;
    .end local v6    # "readContent":[B
    .end local v7    # "readCount":I
    :cond_5
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 328
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v16

    cmp-long v12, v14, v16

    if-nez v12, :cond_7

    .line 329
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 330
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_6

    .line 331
    invoke-virtual {v11, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 333
    :cond_6
    invoke-virtual {v10}, Ljava/io/File;->exists()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v12

    if-eqz v12, :cond_8

    .line 346
    .end local v9    # "targetEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "targetFileTmp":Ljava/io/File;
    :goto_3
    :try_start_4
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v12

    sget-object v14, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v12, v14}, Lc8/TA;->unLock(Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 294
    .end local v5    # "entryName":Ljava/lang/String;
    .end local v8    # "retryCount":I
    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    .line 337
    .restart local v5    # "entryName":Ljava/lang/String;
    .restart local v8    # "retryCount":I
    .restart local v9    # "targetEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v11    # "targetFileTmp":Ljava/io/File;
    :cond_7
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 342
    .end local v9    # "targetEntry":Ljava/util/zip/ZipEntry;
    .end local v10    # "targetFile":Ljava/io/File;
    .end local v11    # "targetFileTmp":Ljava/io/File;
    :cond_8
    if-gtz v8, :cond_1

    goto :goto_3

    .line 343
    .end local v5    # "entryName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 344
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 346
    :try_start_7
    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v12

    sget-object v14, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v12, v14}, Lc8/TA;->unLock(Ljava/io/File;)V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    invoke-static {}, Lc8/TA;->getInstance()Lc8/TA;

    move-result-object v14

    sget-object v15, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v14, v15}, Lc8/TA;->unLock(Ljava/io/File;)V

    throw v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .restart local v2    # "bi":Ljava/io/BufferedInputStream;
    .restart local v3    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v5    # "entryName":Ljava/lang/String;
    .restart local v6    # "readContent":[B
    .restart local v7    # "readCount":I
    .restart local v9    # "targetEntry":Ljava/util/zip/ZipEntry;
    .restart local v10    # "targetFile":Ljava/io/File;
    .restart local v11    # "targetFileTmp":Ljava/io/File;
    :catch_1
    move-exception v12

    goto :goto_2
.end method

.method private static findLocalLibrary(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 286
    sget-object v1, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "soFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    .end local v0    # "soFile":Ljava/io/File;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadLibrary(Ljava/lang/String;)V
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;

    .prologue
    .line 237
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "can not load library without a name"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-static {v3, p0}, Lc8/ZA;->_1loadLibrary(Ljava/lang/Runtime;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_1
    :goto_0
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "error":Ljava/lang/UnsatisfiedLinkError;
    sget-object v3, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    sget-object v3, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 246
    :cond_2
    sget-object v3, Lc8/ZA;->LIB_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 247
    throw v0

    .line 249
    :cond_3
    invoke-static {p0}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 250
    .local v2, "soName":Ljava/lang/String;
    invoke-static {}, Lc8/ZA;->supportArmeabi()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 252
    invoke-static {v2}, Lc8/ZA;->findLocalLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_4

    .line 253
    invoke-static {v2}, Lc8/ZA;->extractSoFromApk(Ljava/lang/String;)V

    .line 255
    :cond_4
    invoke-static {v2}, Lc8/ZA;->findLocalLibrary(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .local v1, "soFile":Ljava/io/File;
    if-eqz v1, :cond_5

    .line 256
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lc8/ZA;->_2load(Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_5
    throw v0
.end method

.method private static supportArmeabi()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_2

    .line 267
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 268
    .local v1, "abis":[Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 269
    array-length v5, v1

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v1, v4

    .line 270
    .local v0, "abi":Ljava/lang/String;
    const-string/jumbo v6, "armeabi"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "abis":[Ljava/lang/String;
    :cond_0
    :goto_1
    return v2

    .line 269
    .restart local v0    # "abi":Ljava/lang/String;
    .restart local v1    # "abis":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 276
    .end local v0    # "abi":Ljava/lang/String;
    .end local v1    # "abis":[Ljava/lang/String;
    :cond_2
    sget-object v4, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v5, "armeabi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    const-string/jumbo v5, "armeabi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    move v2, v3

    .line 281
    goto :goto_1
.end method
