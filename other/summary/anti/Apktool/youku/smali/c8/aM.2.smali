.class public Lc8/aM;
.super Ljava/lang/Object;
.source "SerializeHelper.java"


# static fields
.field private static cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lc8/aM;->cacheDir:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCacheFiles(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "cacheFile"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v1, Lc8/aM;->cacheDir:Ljava/io/File;

    if-nez v1, :cond_0

    .line 32
    invoke-static {}, Lc8/TI;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sput-object v1, Lc8/aM;->cacheDir:Ljava/io/File;

    .line 37
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lc8/aM;->cacheDir:Ljava/io/File;

    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public static declared-synchronized persist(Ljava/io/Serializable;Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)V
    .locals 20
    .param p0, "s"    # Ljava/io/Serializable;
    .param p1, "toFile"    # Ljava/io/File;
    .param p2, "sso"    # Lanet/channel/statist/StrategyStatObject;

    .prologue
    .line 45
    const-class v12, Lc8/aM;

    monitor-enter v12

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 46
    :cond_0
    :try_start_0
    const-string/jumbo v11, "awcn.SerializeHelper"

    const-string/jumbo v13, "persist fail. Invalid parameter"

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v11, v13, v14, v15}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    :goto_0
    monitor-exit v12

    return-void

    .line 50
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 51
    .local v8, "start":J
    const/4 v3, 0x0

    .line 52
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 54
    .local v4, "fos":Ljava/io/FileOutputStream;
    const/4 v10, 0x0

    .line 57
    .local v10, "writeSuccess":Z
    :try_start_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "-"

    const-string/jumbo v14, ""

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lc8/aM;->getCacheFiles(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 58
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 59
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Ljava/io/File;->setReadable(Z)Z

    .line 60
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v6, Ljava/io/ObjectOutputStream;

    new-instance v11, Ljava/io/BufferedOutputStream;

    invoke-direct {v11, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v6, v11}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 62
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->flush()V

    .line 64
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 65
    const/4 v10, 0x1

    .line 72
    if-eqz v5, :cond_b

    .line 74
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v4, v5

    .line 79
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_3
    :goto_1
    if-eqz p2, :cond_4

    .line 80
    :try_start_5
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    iput-object v11, v0, Lanet/channel/statist/StrategyStatObject;->writeTempFilePath:Ljava/lang/String;

    .line 81
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p2

    iput-object v11, v0, Lanet/channel/statist/StrategyStatObject;->writeStrategyFilePath:Ljava/lang/String;

    .line 82
    if-eqz v10, :cond_7

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p2

    iput v11, v0, Lanet/channel/statist/StrategyStatObject;->isTempWriteSucceed:I

    .line 86
    :cond_4
    if-eqz v10, :cond_1

    .line 87
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    .line 88
    .local v7, "ret":Z
    if-eqz v7, :cond_8

    .line 89
    const-string/jumbo v11, "awcn.SerializeHelper"

    const-string/jumbo v13, "persist end."

    const/4 v14, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "file"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "cost"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v8

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v13, v14, v15}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_3
    if-eqz p2, :cond_1

    .line 95
    if-eqz v7, :cond_9

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p2

    iput v11, v0, Lanet/channel/statist/StrategyStatObject;->isRenameSucceed:I

    .line 96
    if-eqz v7, :cond_a

    const/4 v11, 0x1

    :goto_5
    move-object/from16 v0, p2

    iput v11, v0, Lanet/channel/statist/StrategyStatObject;->isSucceed:I

    .line 97
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-interface {v11, v0}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 45
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "ret":Z
    .end local v8    # "start":J
    .end local v10    # "writeSuccess":Z
    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    .line 76
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v8    # "start":J
    .restart local v10    # "writeSuccess":Z
    :catch_0
    move-exception v11

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 66
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_6
    const-string/jumbo v11, "awcn.SerializeHelper"

    const-string/jumbo v13, "persist fail. "

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string/jumbo v17, "file"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v11, v13, v14, v2, v15}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    if-eqz p2, :cond_5

    .line 69
    const-string/jumbo v11, "SerializeHelper.persist()"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 72
    :cond_5
    if-eqz v4, :cond_3

    .line 74
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 76
    :catch_2
    move-exception v11

    goto/16 :goto_1

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v11

    :goto_7
    if-eqz v4, :cond_6

    .line 74
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 76
    :cond_6
    :goto_8
    :try_start_9
    throw v11

    .line 82
    :cond_7
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 91
    .restart local v7    # "ret":Z
    :cond_8
    const-string/jumbo v11, "awcn.SerializeHelper"

    const-string/jumbo v13, "rename failed."

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v11, v13, v14, v15}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v11

    new-instance v13, Lanet/channel/statist/ExceptionStatistic;

    const/16 v14, -0x6a

    const/4 v15, 0x0

    const-string/jumbo v16, "rt"

    invoke-direct/range {v13 .. v16}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v11, v13}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 95
    :cond_9
    const/4 v11, 0x0

    goto :goto_4

    .line 96
    :cond_a
    const/4 v11, 0x0

    goto :goto_5

    .end local v7    # "ret":Z
    :catch_3
    move-exception v13

    goto :goto_8

    .line 72
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v11

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 66
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_b
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static declared-synchronized restore(Ljava/io/File;Lanet/channel/statist/StrategyStatObject;)Ljava/lang/Object;
    .locals 14
    .param p0, "file"    # Ljava/io/File;
    .param p1, "sso"    # Lanet/channel/statist/StrategyStatObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/File;",
            "Lanet/channel/statist/StrategyStatObject;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 107
    const-class v7, Lc8/aM;

    monitor-enter v7

    const/4 v1, 0x0

    .line 109
    .local v1, "fis":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 110
    .local v4, "ret":Ljava/lang/Object;
    if-eqz p1, :cond_0

    .line 111
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lanet/channel/statist/StrategyStatObject;->readStrategyFilePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_4

    .line 115
    const/4 v8, 0x3

    invoke-static {v8}, Lc8/KL;->isPrintLog(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 116
    const-string/jumbo v8, "awcn.SerializeHelper"

    const-string/jumbo v9, "file not exist."

    const/4 v10, 0x0

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string/jumbo v13, "file"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10, v11}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 139
    :cond_1
    if-eqz v1, :cond_2

    .line 141
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    move-object v4, v6

    .line 147
    .end local v4    # "ret":Ljava/lang/Object;
    :cond_3
    :goto_1
    monitor-exit v7

    return-object v4

    .line 142
    .restart local v4    # "ret":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 107
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "ret":Ljava/lang/Object;
    :catchall_0
    move-exception v6

    :goto_2
    monitor-exit v7

    throw v6

    .line 121
    .restart local v4    # "ret":Ljava/lang/Object;
    :cond_4
    if-eqz p1, :cond_5

    .line 122
    const/4 v6, 0x1

    :try_start_4
    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isFileExists:I

    .line 124
    :cond_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 125
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v6}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 126
    .local v3, "ois":Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 127
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V

    .line 128
    if-eqz p1, :cond_6

    .line 129
    const/4 v6, 0x1

    iput v6, p1, Lanet/channel/statist/StrategyStatObject;->isReadObjectSucceed:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 139
    :cond_6
    if-eqz v2, :cond_a

    .line 141
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object v1, v2

    .line 144
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 142
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v1, v2

    .line 144
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "ois":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v5

    .line 132
    .end local v4    # "ret":Ljava/lang/Object;
    .local v5, "t":Ljava/lang/Throwable;
    :goto_3
    const/4 v6, 0x3

    :try_start_8
    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 133
    const-string/jumbo v6, "awcn.SerializeHelper"

    const-string/jumbo v8, "restore file fail."

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v6, v8, v9, v5, v10}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 135
    :cond_7
    if-eqz p1, :cond_8

    .line 136
    const-string/jumbo v6, "SerializeHelper.restore()"

    invoke-virtual {p1, v6, v5}, Lanet/channel/statist/StrategyStatObject;->appendErrorTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 139
    :cond_8
    if-eqz v1, :cond_3

    .line 141
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 142
    :catch_3
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v6

    :goto_4
    if-eqz v1, :cond_9

    .line 141
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 144
    :cond_9
    :goto_5
    :try_start_c
    throw v6

    .line 142
    :catch_4
    move-exception v0

    .line 143
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_5

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 131
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v5

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 107
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "ois":Ljava/io/ObjectInputStream;
    .restart local v4    # "ret":Ljava/lang/Object;
    :catchall_3
    move-exception v6

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v1    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :cond_a
    move-object v1, v2

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    goto/16 :goto_1
.end method
