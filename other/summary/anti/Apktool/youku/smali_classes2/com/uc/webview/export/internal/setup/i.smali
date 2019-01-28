.class public final Lcom/uc/webview/export/internal/setup/i;
.super Lcom/uc/webview/export/internal/setup/o;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/o;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/16 v8, 0x2733

    const/4 v5, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 30
    const-string/jumbo v0, "ucmZipDir"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/i;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "ucmZipFile"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/i;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 33
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v0

    .line 34
    invoke-static {v2}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v3

    .line 35
    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    .line 36
    :cond_1
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbc2

    const-string/jumbo v2, "Option [%s] or  [%s] expected."

    new-array v3, v5, [Ljava/lang/Object;

    const-string/jumbo v4, "ucmZipDir"

    aput-object v4, v3, v11

    const-string/jumbo v4, "ucmZipFile"

    aput-object v4, v3, v12

    .line 37
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 41
    :cond_2
    const-string/jumbo v0, "CONTEXT"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/i;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 43
    if-eqz v3, :cond_3

    const/16 v2, 0x272c

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v11

    aput-object v0, v3, v12

    invoke-static {v2, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 44
    :goto_0
    if-nez v2, :cond_4

    .line 45
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbc3

    const-string/jumbo v3, "No kernel file found in dir [%s]."

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v1, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 43
    :cond_3
    invoke-static {v2}, Lcom/uc/webview/export/cyclone/UCCyclone;->expectFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    goto :goto_0

    .line 47
    :cond_4
    new-array v3, v5, [Ljava/lang/Object;

    const/16 v1, 0x2713

    new-array v4, v12, [Ljava/lang/Object;

    aput-object v0, v4, v11

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    aput-object v1, v3, v11

    .line 48
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    .line 47
    invoke-static {v8, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 49
    new-array v3, v5, [Ljava/lang/Object;

    aput-object v1, v3, v11

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v12

    invoke-static {v8, v3}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 51
    const-string/jumbo v7, ""

    .line 52
    const-string/jumbo v9, "0"

    .line 53
    const-string/jumbo v6, "0"

    .line 54
    const-string/jumbo v8, ""

    .line 57
    :try_start_0
    new-instance v10, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 58
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->decompressIfNeeded(Landroid/content/Context;ZLjava/io/File;Ljava/io/File;Ljava/io/FilenameFilter;Z)Z

    move-result v4

    .line 59
    if-eqz v4, :cond_7

    .line 60
    const-string/jumbo v2, "0"
    :try_end_0
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 61
    :try_start_1
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_1
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 62
    :try_start_2
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_2
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    .line 76
    :goto_1
    :try_start_3
    new-instance v5, Landroid/util/Pair;

    const-string/jumbo v6, "sdk_7z"

    new-instance v7, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v9, "cnt"

    const-string/jumbo v10, "1"

    .line 79
    invoke-virtual {v7, v9, v10}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v7

    const-string/jumbo v9, "code"

    .line 80
    invoke-virtual {v7, v9, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v7, "cost"

    .line 81
    invoke-virtual {v2, v7, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v2, "cost_cpu"

    .line 82
    invoke-virtual {v0, v2, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "data"

    .line 83
    invoke-virtual {v0, v1, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "cpu_cnt"

    .line 84
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "cpu_freq"

    .line 85
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, v5}, Lcom/uc/webview/export/internal/setup/i;->callbackStat(Landroid/util/Pair;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 91
    :goto_2
    if-nez v4, :cond_5

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-nez v0, :cond_6

    .line 92
    :cond_5
    new-instance v0, Lcom/uc/webview/export/internal/setup/ao;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ao;-><init>()V

    const/16 v1, 0x2711

    new-array v2, v12, [Ljava/lang/Object;

    aput-object p0, v2, v11

    .line 93
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ao;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/i;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 94
    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/o;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const/16 v1, 0x2712

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/uc/webview/export/internal/setup/i;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v4, v2, v11

    .line 95
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "dexFilePath"

    .line 96
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "soFilePath"

    .line 97
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "resFilePath"

    .line 98
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmCfgFile"

    .line 99
    invoke-virtual {v0, v1, v13}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "ucmKrlDir"

    .line 100
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    const-string/jumbo v1, "stop"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;

    invoke-direct {v2, p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;-><init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 101
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/o;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/o;

    .line 102
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/o;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    .line 106
    :cond_6
    iput-object v13, p0, Lcom/uc/webview/export/internal/setup/i;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    return-void

    .line 64
    :cond_7
    :try_start_4
    const-string/jumbo v2, "1"
    :try_end_4
    .catch Lcom/uc/webview/export/cyclone/UCKnownException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v6

    move-object v0, v9

    goto/16 :goto_1

    .line 66
    :catch_0
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    .line 67
    :goto_3
    :try_start_5
    const-string/jumbo v7, "2"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    :try_start_6
    invoke-virtual {v0}, Lcom/uc/webview/export/cyclone/UCKnownException;->errCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move-result-object v2

    .line 69
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 71
    :catchall_0
    move-exception v0

    move-object v6, v1

    move-object v1, v2

    move-object v2, v7

    .line 76
    :goto_4
    :try_start_8
    new-instance v3, Landroid/util/Pair;

    const-string/jumbo v4, "sdk_7z"

    new-instance v5, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v5}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v7, "cnt"

    const-string/jumbo v8, "1"

    .line 79
    invoke-virtual {v5, v7, v8}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v5

    const-string/jumbo v7, "code"

    .line 80
    invoke-virtual {v5, v7, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v5, "cost"

    .line 81
    invoke-virtual {v2, v5, v9}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v5, "cost_cpu"

    .line 82
    invoke-virtual {v2, v5, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v2

    const-string/jumbo v5, "data"

    .line 83
    invoke-virtual {v2, v5, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v2, "cpu_cnt"

    .line 84
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v2, "cpu_freq"

    .line 85
    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/i;->callbackStat(Landroid/util/Pair;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    .line 88
    :goto_5
    throw v0

    :catch_1
    move-exception v1

    goto :goto_5

    .line 71
    :catchall_1
    move-exception v0

    move-object v1, v8

    move-object v2, v7

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v6, v1

    move-object v1, v8

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v6, v1

    move-object v2, v7

    move-object v1, v8

    goto :goto_4

    .line 66
    :catch_2
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_3

    .line 89
    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method
