.class public Lc8/Ztf;
.super Ljava/lang/Object;
.source "FileUtil.java"


# static fields
.field public static final DIR_CONIFG:Ljava/lang/String; = "/orange_config_content"

.field public static final DIR_INDEX:Ljava/lang/String; = "/orange_config"

.field public static final DIR_IPS:Ljava/lang/String; = "/orange_ips"

.field private static final TAG:Ljava/lang/String; = "FileUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearCacheFile(Ljava/lang/String;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v3, Lc8/Ztf;

    monitor-enter v3

    :try_start_0
    invoke-static {p0}, Lc8/Ztf;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lc8/Ztf;->deleteDir(Ljava/io/File;)Z

    move-result v0

    .line 53
    .local v0, "result":Z
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v4, "clearCacheFile"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "path"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p0, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "result"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v4, v5}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .end local v0    # "result":Z
    :goto_0
    monitor-exit v3

    return-void

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "t":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v2, "private_orange"

    const-string/jumbo v4, "ORANGE_EXCEPTION"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clearCacheFile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    invoke-static {v2, v4, v5, v6, v7}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 56
    const-string/jumbo v2, "FileUtil"

    const-string/jumbo v4, "clearCacheFile"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v1, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 52
    .end local v1    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static copyfile(Ljava/io/File;Ljava/io/File;)V
    .locals 12
    .param p0, "fromFile"    # Ljava/io/File;
    .param p1, "toFile"    # Ljava/io/File;

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "fisfrom":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 94
    .local v3, "fosto":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 97
    :cond_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "fisfrom":Ljava/io/FileInputStream;
    .local v2, "fisfrom":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 99
    .end local v3    # "fosto":Ljava/io/FileOutputStream;
    .local v4, "fosto":Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    :try_start_2
    new-array v0, v7, [B

    .line 101
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "read":I
    if-lez v5, :cond_3

    .line 102
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 105
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catch_0
    move-exception v6

    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 106
    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    .local v6, "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    const-string/jumbo v7, "FileUtil"

    const-string/jumbo v8, "copyfile"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v6, v9}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 107
    const-string/jumbo v7, "private_orange"

    const-string/jumbo v8, "ORANGE_EXCEPTION"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "copyfile "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    if-eqz v1, :cond_1

    .line 111
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 116
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 117
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 121
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_3
    return-void

    .line 104
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

    .line 110
    if-eqz v2, :cond_4

    .line 111
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 116
    :cond_4
    :goto_4
    if-eqz v4, :cond_5

    .line 117
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    :cond_5
    move-object v3, v4

    .end local v4    # "fosto":Ljava/io/FileOutputStream;
    .restart local v3    # "fosto":Ljava/io/FileOutputStream;
    move-object v1, v2

    .line 120
    .end local v2    # "fisfrom":Ljava/io/FileInputStream;
    .restart local v1    # "fisfrom":Ljava/io/FileInputStream;
    goto :goto_3

    .line 121
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

    .line 109
    .end local v0    # "buffer":[B
    .end local v5    # "read":I
    :catchall_0
    move-exception v7

    .line 110
    :goto_5
    if-eqz v1, :cond_6

    .line 111
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 116
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 117
    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 120
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

    .line 121
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

    .line 109
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

    .line 105
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
    goto/16 :goto_1
.end method

.method private static deleteDir(Ljava/io/File;)Z
    .locals 11
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x0

    .line 61
    const/4 v2, 0x0

    .line 62
    .local v2, "result":Z
    if-nez p0, :cond_0

    .line 63
    const-string/jumbo v6, "FileUtil"

    const-string/jumbo v7, "deleteDir null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v5, v2

    .line 87
    :goto_0
    return v5

    .line 67
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 68
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, v0

    if-ge v1, v6, :cond_2

    .line 71
    new-instance v6, Ljava/io/File;

    aget-object v7, v0, v1

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lc8/Ztf;->deleteDir(Ljava/io/File;)Z

    move-result v3

    .line 72
    .local v3, "success":Z
    if-nez v3, :cond_1

    .line 73
    const-string/jumbo v6, "FileUtil"

    const-string/jumbo v7, "deleteDir fail"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "path"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aget-object v10, v0, v1

    aput-object v10, v8, v9

    invoke-static {v6, v7, v8}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "success":Z
    :catch_0
    move-exception v4

    .line 83
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v6, "FileUtil"

    const-string/jumbo v7, "deleteDir"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 84
    const-string/jumbo v5, "private_orange"

    const-string/jumbo v6, "ORANGE_EXCEPTION"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "deleteDir "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .end local v4    # "t":Ljava/lang/Throwable;
    :goto_2
    move v5, v2

    .line 87
    goto :goto_0

    .line 70
    .restart local v0    # "children":[Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v3    # "success":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    .end local v1    # "i":I
    .end local v3    # "success":Z
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v2

    .line 79
    goto :goto_2

    .line 80
    .end local v0    # "children":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_2
.end method

.method private static getCacheFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lc8/Ksf;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 24
    sget-object v3, Lc8/Ksf;->mContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 25
    const-string/jumbo v3, "FileUtil"

    const-string/jumbo v4, "getExternalFilesDir context null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1

    .line 29
    :cond_0
    sget-object v3, Lc8/Ksf;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 36
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 37
    const-string/jumbo v3, "FileUtil"

    const-string/jumbo v4, "getExternalFilesDir path null"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_1
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

    .line 41
    .local v2, "filepath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
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
    .line 125
    const-class v12, Lc8/Ztf;

    monitor-enter v12

    const/4 v8, 0x0

    .line 126
    .local v8, "tempFile":Ljava/io/File;
    const/4 v2, 0x0

    .line 127
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 128
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    const/4 v10, 0x0

    .line 131
    .local v10, "writeSuccess":Z
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lc8/Ztf;->getCacheFilesDir()Ljava/io/File;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v8    # "tempFile":Ljava/io/File;
    .local v9, "tempFile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v11

    if-nez v11, :cond_9

    .line 133
    new-instance v8, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lc8/Ztf;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ".tmp"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v11, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 135
    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    :goto_0
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 136
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 138
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Ljava/io/ObjectOutputStream;

    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v11}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 140
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 141
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 142
    const/4 v10, 0x1

    .line 147
    if-eqz v6, :cond_1

    .line 149
    :try_start_5
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 153
    :cond_1
    :goto_1
    if-eqz v3, :cond_8

    .line 155
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .line 162
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :goto_2
    if-eqz v10, :cond_4

    .line 163
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-static/range {p1 .. p1}, Lc8/Ztf;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-direct {v4, v11, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 164
    .local v4, "indexFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 167
    :cond_3
    invoke-static {v8, v4}, Lc8/Ztf;->copyfile(Ljava/io/File;Ljava/io/File;)V

    .line 168
    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 175
    .end local v4    # "indexFile":Ljava/io/File;
    :cond_4
    :goto_3
    monitor-exit v12

    return-void

    .line 157
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_0
    move-exception v11

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 143
    :catch_1
    move-exception v7

    .line 144
    .local v7, "t":Ljava/lang/Throwable;
    :goto_4
    :try_start_8
    const-string/jumbo v11, "private_orange"

    const-string/jumbo v13, "ORANGE_EXCEPTION"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "persistentObject "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v11, v13, v14, v0, v1}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    .line 145
    const-string/jumbo v11, "FileUtil"

    const-string/jumbo v13, "persistentObject fail"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v13, v7, v14}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 147
    if-eqz v5, :cond_5

    .line 149
    :try_start_9
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 153
    :cond_5
    :goto_5
    if-eqz v2, :cond_2

    .line 155
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    .line 157
    :catch_2
    move-exception v11

    goto :goto_2

    .line 147
    .end local v7    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v5, :cond_6

    .line 149
    :try_start_b
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 153
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 155
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 157
    :cond_7
    :goto_8
    :try_start_d
    throw v11
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 125
    :catchall_1
    move-exception v11

    :goto_9
    monitor-exit v12

    throw v11

    .line 171
    :catch_3
    move-exception v7

    .line 172
    .restart local v7    # "t":Ljava/lang/Throwable;
    :try_start_e
    const-string/jumbo v11, "FileUtil"

    const-string/jumbo v13, "persistentObject move file fail"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v11, v13, v7, v14}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 173
    const-string/jumbo v11, "private_orange"

    const-string/jumbo v13, "ORANGE_EXCEPTION"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "persistentObject1 "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v11, v13, v14, v0, v1}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .end local v7    # "t":Ljava/lang/Throwable;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v11

    goto/16 :goto_1

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v7    # "t":Ljava/lang/Throwable;
    :catch_5
    move-exception v11

    goto :goto_5

    .end local v7    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v13

    goto :goto_7

    :catch_7
    move-exception v13

    goto :goto_8

    .line 147
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v9    # "tempFile":Ljava/io/File;
    :catchall_2
    move-exception v11

    move-object v8, v9

    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    goto :goto_6

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v11

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v11

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 143
    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v9    # "tempFile":Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v8, v9

    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    goto/16 :goto_4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_a
    move-exception v7

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 125
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_5
    move-exception v11

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_8
    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .end local v8    # "tempFile":Ljava/io/File;
    .restart local v9    # "tempFile":Ljava/io/File;
    :cond_9
    move-object v8, v9

    .end local v9    # "tempFile":Ljava/io/File;
    .restart local v8    # "tempFile":Ljava/io/File;
    goto/16 :goto_0
.end method

.method public static declared-synchronized restoreObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 14
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v8, Lc8/Ztf;

    monitor-enter v8

    :try_start_0
    const-string/jumbo v7, "FileUtil"

    const-string/jumbo v9, "restoreObject"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "filename"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object p1, v10, v11

    invoke-static {v7, v9, v10}, Lc8/buf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 182
    .local v4, "ois":Ljava/io/ObjectInputStream;
    const/4 v3, 0x0

    .line 184
    .local v3, "obj":Ljava/lang/Object;
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lc8/Ztf;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v0, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 186
    const/4 v3, 0x0

    .line 195
    .end local v3    # "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 197
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 203
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 208
    .end local v0    # "file":Ljava/io/File;
    :cond_1
    :goto_1
    monitor-exit v8

    return-object v3

    .line 188
    .restart local v0    # "file":Ljava/io/File;
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_2
    :try_start_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v5, Ljava/io/ObjectInputStream;

    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v7}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 190
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .local v5, "ois":Ljava/io/ObjectInputStream;
    :try_start_6
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v3

    .line 195
    if-eqz v5, :cond_3

    .line 197
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 201
    :cond_3
    :goto_2
    if-eqz v2, :cond_7

    .line 203
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .line 205
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 191
    .end local v0    # "file":Ljava/io/File;
    :catch_1
    move-exception v6

    .line 192
    .local v6, "t":Ljava/lang/Throwable;
    :goto_3
    :try_start_9
    const-string/jumbo v7, "FileUtil"

    const-string/jumbo v9, "restoreObject fail"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v7, v9, v6, v10}, Lc8/buf;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 193
    const-string/jumbo v7, "private_orange"

    const-string/jumbo v9, "ORANGE_EXCEPTION"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "restoreObject "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-wide/16 v12, 0x0

    invoke-static {v7, v9, v10, v12, v13}, Lc8/Rtf;->commitCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 195
    if-eqz v4, :cond_4

    .line 197
    :try_start_a
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 201
    :cond_4
    :goto_4
    if-eqz v1, :cond_1

    .line 203
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_1

    .line 205
    :catch_2
    move-exception v7

    goto :goto_1

    .line 195
    .end local v6    # "t":Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v4, :cond_5

    .line 197
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 201
    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 203
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 205
    :cond_6
    :goto_7
    :try_start_e
    throw v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 178
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "file":Ljava/io/File;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v7

    goto :goto_0

    :catch_4
    move-exception v7

    goto :goto_1

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v7

    goto :goto_2

    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v6    # "t":Ljava/lang/Throwable;
    :catch_6
    move-exception v7

    goto :goto_4

    .end local v6    # "t":Ljava/lang/Throwable;
    :catch_7
    move-exception v9

    goto :goto_6

    :catch_8
    move-exception v9

    goto :goto_7

    .line 195
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v7

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 191
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :catch_a
    move-exception v6

    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "ois":Ljava/io/ObjectInputStream;
    :cond_7
    move-object v4, v5

    .end local v5    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method
