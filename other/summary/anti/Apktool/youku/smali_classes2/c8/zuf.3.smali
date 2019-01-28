.class public Lc8/zuf;
.super Ljava/lang/Object;
.source "SoInstallMgrSdk.java"


# static fields
.field static sContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lc8/zuf;->sContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _1load(Ljava/lang/String;)V
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

.method public static init(Landroid/content/Context;)V
    .locals 0
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 23
    sput-object p0, Lc8/zuf;->sContext:Landroid/content/Context;

    .line 24
    return-void
.end method

.method public static loadBackup(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 27
    const/4 v3, 0x0

    .line 29
    .local v3, "success":Z
    invoke-static {p0, p1}, Lc8/zuf;->targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 30
    .local v2, "soPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 31
    .local v1, "soFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 33
    :try_start_0
    invoke-static {v2}, Lc8/zuf;->_1load(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    const/4 v3, 0x1

    .line 40
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    const-string/jumbo v4, "mips"

    invoke-static {v4}, Lc8/xuf;->isCpuAbiSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "x86"

    invoke-static {v4}, Lc8/xuf;->isCpuAbiSupported(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 42
    :try_start_1
    invoke-static {p0, p1}, Lc8/zuf;->unzipTargetAndLoad(Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 48
    :cond_1
    :goto_1
    return v3

    .line 36
    :catch_0
    move-exception v4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 43
    :catch_1
    move-exception v0

    .line 44
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method static targetSoFile(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "version"    # I

    .prologue
    .line 52
    sget-object v2, Lc8/zuf;->sContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 53
    const-string/jumbo v2, ""

    .line 63
    :goto_0
    return-object v2

    .line 56
    :cond_0
    sget-object v2, Lc8/zuf;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 58
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/data/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lc8/zuf;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/files"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "path":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/lib"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_bk_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 61
    .end local v1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_1
.end method

.method static unzipTargetAndLoad(Ljava/lang/String;I)Z
    .locals 19
    .param p0, "libName"    # Ljava/lang/String;
    .param p1, "version"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    sget-object v17, Lc8/zuf;->sContext:Landroid/content/Context;

    if-nez v17, :cond_0

    .line 68
    const/16 v17, 0x0

    .line 132
    :goto_0
    return v17

    .line 71
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "lib/armeabi/lib"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ".so"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "sourcePath":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Lc8/zuf;->targetSoFile(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 73
    .local v14, "targetPath":Ljava/lang/String;
    const-string/jumbo v11, ""

    .line 74
    .local v11, "sourceApk":Ljava/lang/String;
    sget-object v17, Lc8/zuf;->sContext:Landroid/content/Context;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 76
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_1

    .line 77
    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 80
    :cond_1
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 81
    .local v16, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 83
    .local v4, "entries":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 84
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 85
    .local v5, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 86
    const/4 v7, 0x0

    .line 87
    .local v7, "in":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 88
    .local v8, "os":Ljava/io/FileOutputStream;
    const/4 v15, 0x0

    .line 91
    .local v15, "total":I
    :try_start_0
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v13, "targetFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 93
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    .line 96
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    .line 97
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .local v9, "os":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_1
    move/from16 v0, v17

    new-array v3, v0, [B

    .local v3, "buffer":[B
    :goto_1
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "realLength":I
    if-lez v10, :cond_4

    .line 101
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v10}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 100
    add-int/2addr v15, v10

    goto :goto_1

    .line 104
    :cond_4
    if-eqz v7, :cond_5

    .line 106
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 110
    :cond_5
    :goto_2
    if-eqz v9, :cond_6

    .line 112
    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 116
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 120
    :goto_4
    if-lez v15, :cond_9

    .line 122
    :try_start_5
    invoke-static {v14}, Lc8/zuf;->_1load(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 123
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 104
    .end local v3    # "buffer":[B
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v13    # "targetFile":Ljava/io/File;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v7, :cond_7

    .line 106
    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 110
    :cond_7
    :goto_6
    if-eqz v8, :cond_8

    .line 112
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 116
    :cond_8
    :goto_7
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 117
    :goto_8
    throw v17

    .line 124
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "buffer":[B
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v13    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v6

    .line 125
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .end local v6    # "ex":Ljava/lang/Throwable;
    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 132
    .end local v3    # "buffer":[B
    .end local v5    # "entry":Ljava/util/zip/ZipEntry;
    .end local v7    # "in":Ljava/io/InputStream;
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v13    # "targetFile":Ljava/io/File;
    .end local v15    # "total":I
    :cond_a
    const/16 v17, 0x0

    goto/16 :goto_0

    .restart local v3    # "buffer":[B
    .restart local v5    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v7    # "in":Ljava/io/InputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v10    # "realLength":I
    .restart local v13    # "targetFile":Ljava/io/File;
    .restart local v15    # "total":I
    :catch_1
    move-exception v17

    goto :goto_2

    :catch_2
    move-exception v17

    goto :goto_3

    .line 118
    :catch_3
    move-exception v17

    goto :goto_4

    .end local v3    # "buffer":[B
    .end local v9    # "os":Ljava/io/FileOutputStream;
    .end local v10    # "realLength":I
    .end local v13    # "targetFile":Ljava/io/File;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v18

    goto :goto_6

    :catch_5
    move-exception v18

    goto :goto_7

    :catch_6
    move-exception v18

    goto :goto_8

    .line 104
    .end local v8    # "os":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v13    # "targetFile":Ljava/io/File;
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "os":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/FileOutputStream;
    goto :goto_5
.end method
