.class public Lc8/kog;
.super Ljava/lang/Object;
.source "AntFileUtil.java"


# static fields
.field public static volatile sContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 9
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 86
    const/4 v1, 0x0

    .line 87
    .local v1, "fisfrom":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 89
    .local v3, "fosto":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 92
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .local v2, "fisfrom":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .local v4, "fosto":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 96
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-lez v5, :cond_3

    .line 97
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 100
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 101
    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "AntFileUtil"

    invoke-static {v7, v6}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    if-eqz v1, :cond_1

    .line 105
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 110
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 111
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 115
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    return-void

    .line 99
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :cond_3
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 104
    if-eqz v2, :cond_4

    .line 105
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 110
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 111
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 114
    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_3

    .line 115
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_3

    .line 103
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v7

    .line 104
    :goto_5
    if-eqz v1, :cond_6

    .line 105
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 110
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 111
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 114
    :cond_7
    :goto_7
    throw v7

    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v5    # "read":I
    :catch_2
    move-exception v7

    goto :goto_4

    .end local v0    # "buffer":[B
    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .end local v5    # "read":I
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    .restart local v6    # "t":Ljava/lang/Throwable;
    :catch_3
    move-exception v7

    goto :goto_2

    .line 115
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v8

    goto :goto_6

    :catch_6
    move-exception v8

    goto :goto_7

    .line 103
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v1, v2

    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v4    # "fosto":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_5

    .line 100
    :catch_7
    move-exception v6

    goto :goto_1

    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v2    # "fisfrom":Ljava/io/FileInputStream;
    :catch_8
    move-exception v6

    move-object v1, v2

    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private static getCacheFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lc8/kog;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "external"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 27
    sget-object v3, Lc8/kog;->sContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 28
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "AntFileUtil"

    aput-object v4, v3, v5

    const-string/jumbo v4, "getExternalFilesDir sContext null"

    aput-object v4, v3, v6

    invoke-static {v3}, Lc8/log;->info([Ljava/lang/String;)V

    .line 49
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    .local v0, "dir":Ljava/io/File;
    if-eqz p1, :cond_2

    .line 34
    const-string/jumbo v3, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-nez v3, :cond_2

    .line 35
    :cond_1
    sget-object v3, Lc8/kog;->sContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 38
    :cond_2
    if-nez v0, :cond_3

    .line 39
    sget-object v3, Lc8/kog;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 42
    :cond_3
    if-nez v0, :cond_4

    .line 43
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v4, "AntFileUtil"

    aput-object v4, v3, v5

    const-string/jumbo v4, "getExternalFilesDir path null"

    aput-object v4, v3, v6

    invoke-static {v3}, Lc8/log;->info([Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    goto :goto_0
.end method

.method public static declared-synchronized persistentObject(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 119
    const-class v14, Lc8/kog;

    monitor-enter v14

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 120
    .local v8, "start":J
    const/4 v10, 0x0

    .line 121
    .local v10, "tempFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 123
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    .line 126
    .local v12, "writeSuccess":Z
    :try_start_1
    new-instance v11, Ljava/io/File;

    invoke-static {}, Lc8/kog;->getCacheFilesDir()Ljava/io/File;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".tmp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v11, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    .end local v10    # "tempFile":Ljava/io/File;
    .local v11, "tempFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    move-result v13

    if-nez v13, :cond_6

    .line 128
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "AntFileUtil"

    aput-object v16, v13, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "cache dir cannot write, use file menu"

    aput-object v16, v13, v15

    invoke-static {v13}, Lc8/log;->info([Ljava/lang/String;)V

    .line 129
    new-instance v10, Ljava/io/File;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lc8/kog;->getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v13

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ".tmp"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v10, v13, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 131
    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v10    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_3
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 132
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 134
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v6, Ljava/io/ObjectOutputStream;

    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v13}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 136
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 138
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 139
    const/4 v12, 0x1

    .line 143
    if-eqz v4, :cond_5

    .line 145
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v3, v4

    .line 153
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    if-eqz v12, :cond_3

    .line 154
    :try_start_6
    new-instance v5, Ljava/io/File;

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lc8/kog;->getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-direct {v5, v13, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v5, "indexFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 156
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 158
    :cond_2
    invoke-static {v10, v5}, Lc8/kog;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 160
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 163
    .end local v5    # "indexFile":Ljava/io/File;
    :cond_3
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string/jumbo v16, "AntFileUtil"

    aput-object v16, v13, v15

    const/4 v15, 0x1

    const-string/jumbo v16, "persistentObject end"

    aput-object v16, v13, v15

    const/4 v15, 0x2

    const-string/jumbo v16, "cost(ms)"

    aput-object v16, v13, v15

    const/4 v15, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v13, v15

    invoke-static {v13}, Lc8/log;->info([Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    :goto_2
    monitor-exit v14

    return-void

    .line 146
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v4

    .line 148
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 140
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v7

    .line 141
    .local v7, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_8
    const-string/jumbo v13, "AntFileUtil"

    invoke-static {v13, v7}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 143
    if-eqz v3, :cond_1

    .line 145
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 146
    :catch_2
    move-exception v2

    .line 147
    .restart local v2    # "e":Ljava/lang/Exception;
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 119
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v8    # "start":J
    .end local v10    # "tempFile":Ljava/io/File;
    .end local v12    # "writeSuccess":Z
    :catchall_0
    move-exception v13

    monitor-exit v14

    throw v13

    .line 143
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "start":J
    .restart local v10    # "tempFile":Ljava/io/File;
    .restart local v12    # "writeSuccess":Z
    :catchall_1
    move-exception v13

    :goto_4
    if-eqz v3, :cond_4

    .line 145
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 148
    :cond_4
    :goto_5
    :try_start_c
    throw v13

    .line 146
    :catch_3
    move-exception v2

    .line 147
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 164
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    .line 165
    .restart local v7    # "t":Ljava/lang/Throwable;
    const-string/jumbo v13, "AntFileUtil"

    invoke-static {v13, v7}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_2

    .line 143
    .end local v7    # "t":Ljava/lang/Throwable;
    .end local v10    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v10, v11

    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v10    # "tempFile":Ljava/io/File;
    goto :goto_4

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v13

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 140
    .end local v10    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    :catch_5
    move-exception v7

    move-object v10, v11

    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v10    # "tempFile":Ljava/io/File;
    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v7

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_5
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .end local v10    # "tempFile":Ljava/io/File;
    .restart local v11    # "tempFile":Ljava/io/File;
    :cond_6
    move-object v10, v11

    .end local v11    # "tempFile":Ljava/io/File;
    .restart local v10    # "tempFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public static readFile(Ljava/lang/String;Ljava/lang/String;Z)[B
    .locals 12
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "external"    # Z

    .prologue
    const/4 v9, 0x0

    .line 236
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v9

    .line 240
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-static {p0, p2}, Lc8/kog;->getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v10

    invoke-direct {v3, v10, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 242
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 246
    const/4 v4, 0x0

    .line 247
    .local v4, "inputStream":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 249
    .local v6, "outputStream":Ljava/io/ByteArrayOutputStream;
    if-eqz v3, :cond_5

    .line 250
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 252
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .local v7, "outputStream":Ljava/io/ByteArrayOutputStream;
    const/16 v10, 0x1000

    :try_start_2
    new-array v0, v10, [B

    .line 254
    .local v0, "buff":[B
    :goto_1
    const/4 v10, 0x0

    const/16 v11, 0x1000

    invoke-virtual {v5, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_3

    .line 255
    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 259
    .end local v0    # "buff":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v8

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .line 260
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .local v8, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-static {v8}, Lc8/log;->exception(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 263
    if-eqz v4, :cond_2

    .line 264
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_2
    if-eqz v6, :cond_0

    .line 267
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 269
    :catch_1
    move-exception v2

    .line 270
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 257
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .end local v8    # "t":Ljava/lang/Throwable;
    .restart local v0    # "buff":[B
    .restart local v1    # "count":I
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_3
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v9

    .line 263
    if-eqz v5, :cond_4

    .line 264
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_4
    if-eqz v7, :cond_0

    .line 267
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_0

    .line 269
    :catch_2
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 263
    .end local v0    # "buff":[B
    .end local v1    # "count":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :cond_5
    if-eqz v4, :cond_6

    .line 264
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_6
    if-eqz v6, :cond_0

    .line 267
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 269
    :catch_3
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    .line 263
    :goto_3
    if-eqz v4, :cond_7

    .line 264
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 266
    :cond_7
    if-eqz v6, :cond_8

    .line 267
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 271
    :cond_8
    :goto_4
    throw v9

    .line 269
    :catch_4
    move-exception v2

    .line 270
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v2}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 262
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catchall_1
    move-exception v9

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catchall_2
    move-exception v9

    move-object v6, v7

    .end local v7    # "outputStream":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 259
    :catch_5
    move-exception v8

    goto :goto_2

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v8

    move-object v4, v5

    .end local v5    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static declared-synchronized restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 18
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 170
    const-class v12, Lc8/kog;

    monitor-enter v12

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 172
    .local v8, "start":J
    const/4 v4, 0x0

    .line 174
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 176
    .local v6, "obj":Ljava/lang/Object;
    :try_start_1
    new-instance v3, Ljava/io/File;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lc8/kog;->getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-direct {v3, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_1

    .line 178
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "AntFileUtil"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "restoreObject file not exist"

    aput-object v14, v11, v13

    invoke-static {v11}, Lc8/log;->info([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    const/4 v6, 0x0

    .line 188
    .end local v6    # "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 190
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :cond_0
    :goto_0
    const/4 v11, 0x4

    :try_start_3
    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "AntFileUtil"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "restoreObject end"

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "cost(ms)"

    aput-object v14, v11, v13

    const/4 v13, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v11}, Lc8/log;->info([Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 197
    .end local v3    # "file":Ljava/io/File;
    :goto_1
    monitor-exit v12

    return-object v6

    .line 191
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 170
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v8    # "start":J
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 181
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "obj":Ljava/lang/Object;
    .restart local v8    # "start":J
    :cond_1
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 182
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v7, Ljava/io/ObjectInputStream;

    new-instance v11, Ljava/io/BufferedInputStream;

    invoke-direct {v11, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v11}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    .local v7, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    .line 184
    invoke-virtual {v7}, Ljava/io/ObjectInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 188
    if-eqz v5, :cond_2

    .line 190
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    :cond_2
    :goto_2
    const/4 v11, 0x4

    :try_start_8
    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "AntFileUtil"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "restoreObject end"

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "cost(ms)"

    aput-object v14, v11, v13

    const/4 v13, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v11}, Lc8/log;->info([Ljava/lang/String;)V

    move-object v4, v5

    .line 196
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 191
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_2
    move-exception v10

    .line 186
    .end local v6    # "obj":Ljava/lang/Object;
    .local v10, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_9
    const-string/jumbo v11, "AntFileUtil"

    invoke-static {v11, v10}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 188
    if-eqz v4, :cond_3

    .line 190
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 195
    :cond_3
    :goto_4
    const/4 v11, 0x4

    :try_start_b
    new-array v11, v11, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "AntFileUtil"

    aput-object v14, v11, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "restoreObject end"

    aput-object v14, v11, v13

    const/4 v13, 0x2

    const-string/jumbo v14, "cost(ms)"

    aput-object v14, v11, v13

    const/4 v13, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    invoke-static {v11}, Lc8/log;->info([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 191
    :catch_3
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    .end local v10    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v11

    :goto_5
    if-eqz v4, :cond_4

    .line 190
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 195
    :cond_4
    :goto_6
    const/4 v13, 0x4

    :try_start_d
    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "AntFileUtil"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string/jumbo v15, "restoreObject end"

    aput-object v15, v13, v14

    const/4 v14, 0x2

    const-string/jumbo v15, "cost(ms)"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lc8/log;->info([Ljava/lang/String;)V

    throw v11

    .line 191
    :catch_4
    move-exception v2

    .line 192
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    .line 188
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 185
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v10

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;[BZ)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "external"    # Z

    .prologue
    .line 228
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lc8/kog;->writeFile(Ljava/lang/String;Ljava/lang/String;[BZZ)Z

    move-result v0

    return v0
.end method

.method public static writeFile(Ljava/lang/String;Ljava/lang/String;[BZZ)Z
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "data"    # [B
    .param p3, "append"    # Z
    .param p4, "external"    # Z

    .prologue
    .line 201
    const/4 v2, 0x0

    .line 204
    .local v2, "outputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0, p4}, Lc8/kog;->getStorageFilesDir(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v5

    invoke-direct {v1, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 205
    .local v1, "file":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .local v3, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V

    .line 207
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    const/4 v5, 0x1

    .line 213
    if-eqz v3, :cond_0

    .line 214
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 220
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :goto_1
    return v5

    .line 216
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v4

    .line 210
    .local v4, "t":Ljava/lang/Throwable;
    :goto_2
    :try_start_3
    invoke-static {v4}, Lc8/log;->exception(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    if-eqz v2, :cond_1

    .line 214
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 220
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 216
    :catch_2
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    .line 213
    :goto_4
    if-eqz v2, :cond_2

    .line 214
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 218
    :cond_2
    :goto_5
    throw v5

    .line 216
    :catch_3
    move-exception v0

    .line 217
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_4

    .line 209
    .end local v2    # "outputStream":Ljava/io/OutputStream;
    .restart local v3    # "outputStream":Ljava/io/OutputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .restart local v2    # "outputStream":Ljava/io/OutputStream;
    goto :goto_2
.end method
