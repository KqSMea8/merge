.class public Lcom/uc/webview/export/internal/setup/an;
.super Lcom/uc/webview/export/internal/setup/l;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/l;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 80
    const-string/jumbo v0, "ucmZipFile"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/an;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    iget-object v1, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 83
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const/16 v1, 0x2713

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 86
    iget-object v4, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 87
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v0, Ljava/io/File;

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/io/File;

    .line 91
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v6, v7, v4, v5}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    iget-object v0, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 138
    :goto_0
    return v0

    .line 98
    :cond_0
    const-string/jumbo v0, "ucmUpdUrl"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/an;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 100
    const/16 v1, 0x2712

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-static {v1, v4}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 102
    iget-object v4, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 103
    new-instance v4, Ljava/io/File;

    .line 104
    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 106
    iget-object v1, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 107
    if-nez v1, :cond_1

    move v0, v2

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->l:Z

    if-nez v1, :cond_2

    move v0, v3

    .line 111
    goto :goto_0

    .line 113
    :cond_2
    const-string/jumbo v1, "dlChecker"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/an;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    .line 115
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;Ljava/net/URL;)Landroid/util/Pair;

    move-result-object v1

    .line 117
    new-instance v5, Ljava/io/File;

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    .line 118
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v6, v7, v0, v1}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(JJ)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    iget-object v0, p2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    .line 121
    goto/16 :goto_0

    :cond_3
    move v0, v3

    .line 126
    goto/16 :goto_0

    .line 129
    :catch_0
    move-exception v0

    move v0, v3

    goto/16 :goto_0

    :cond_4
    move v0, v3

    .line 138
    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 32

    .prologue
    .line 35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v5, "CONTEXT"

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 36
    sget-boolean v23, Lcom/uc/webview/export/internal/SDKFactory;->r:Z

    .line 38
    const/4 v7, 0x0

    .line 40
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v6, "scanUcmPrefix"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 41
    if-eqz v5, :cond_0

    .line 43
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->listFromSharedApps(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    .line 48
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_14

    .line 49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v8, "VERIFY_POLICY"

    invoke-virtual {v5, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 50
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v9, "chkDecFinish"

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 51
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v9, "sdk_setup"

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-static {v5}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/Boolean;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 52
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v9, "core_ver_excludes"

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v18, v5

    check-cast v18, Ljava/lang/String;

    .line 53
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v9, "sdk_ver_excludes"

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v19, v5

    check-cast v19, Ljava/lang/String;

    .line 55
    const-class v5, Lcom/uc/webview/export/internal/setup/an;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v24

    .line 59
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v22, v7

    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    .line 61
    :try_start_0
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-eqz v20, :cond_3

    new-instance v6, Ljava/io/File;

    iget-object v7, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uc/webview/export/cyclone/UCCyclone;->isDecompressFinished(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v7, 0x7d7

    const-string/jumbo v9, "Package [%s] decompress not finished."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v7, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_0
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 63
    :catch_0
    move-exception v5

    move-object/from16 v22, v5

    .line 67
    goto :goto_3

    .line 45
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/uc/webview/export/internal/setup/an;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->a(Landroid/content/Context;Ljava/util/concurrent/ConcurrentHashMap;)Ljava/util/List;

    move-result-object v5

    move-object v6, v5

    goto/16 :goto_0

    .line 50
    :cond_1
    const/4 v5, 0x0

    move/from16 v20, v5

    goto/16 :goto_1

    .line 51
    :cond_2
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_2

    .line 61
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/uc/webview/export/internal/setup/an;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/an;->a(Landroid/content/Context;Lcom/uc/webview/export/internal/setup/UCMPackageInfo;)Z

    move-result v26

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/uc/webview/export/cyclone/UCCyclone;->optimizedFileFor(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    move v9, v6

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v2}, Lcom/uc/webview/export/internal/setup/an;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;ZZ)V

    sget-object v6, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v6, :cond_4

    sput-object v5, Lcom/uc/webview/export/utility/SetupTask;->sFirstUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    :cond_4
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v8, v6}, Lcom/uc/webview/export/internal/setup/an;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v6

    const-wide/16 v10, 0x0

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v12

    add-long/2addr v12, v10

    const-wide/16 v10, 0x0

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long/2addr v10, v6

    :cond_5
    new-instance v14, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v14}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    new-instance v15, Lcom/uc/webview/export/cyclone/UCLoader;

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v7, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->sdkShellModule:Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v0, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-direct {v15, v6, v7, v0, v1}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v14}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v16

    add-long v16, v16, v6

    const-wide/16 v6, 0x0

    invoke-virtual {v14}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v28

    add-long v28, v28, v6

    iput-object v15, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mSdkShellClassLoader:Ljava/lang/ClassLoader;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/uc/webview/export/internal/setup/an;->mShellCL:Ljava/lang/ClassLoader;
    :try_end_1
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v21, :cond_8

    if-nez v23, :cond_7

    :try_start_2
    const-string/jumbo v6, "com.uc.webview.browser.shell.Build"

    const/4 v7, 0x0

    invoke-static {v6, v7, v15}, Lcom/ali/mobisecenhance/ReflectMap;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "TYPE"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-boolean v7, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->isSpecified:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "ucrelease"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v14, "ucpatch"

    invoke-virtual {v7, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v7, 0xfab

    const-string/jumbo v9, "ucrelease or ucpatch is expected but get [%s] to shared UCM."

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v5

    :try_start_3
    new-instance v6, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v7, 0xfac

    invoke-direct {v6, v7, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    throw v6
    :try_end_3
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 65
    :catch_2
    move-exception v5

    move-object v6, v5

    .line 66
    new-instance v5, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v7, 0xbbb

    invoke-direct {v5, v7, v6}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    move-object/from16 v22, v5

    .line 68
    goto/16 :goto_3

    .line 61
    :cond_6
    const/4 v6, 0x0

    move v9, v6

    goto/16 :goto_4

    :cond_7
    :try_start_4
    const-string/jumbo v6, "com.uc.webview.browser.shell.Build"

    const-string/jumbo v7, "CORE_VERSION"

    move-object/from16 v0, v18

    invoke-static {v0, v15, v6, v7}, Lcom/uc/webview/export/internal/setup/an;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "com.uc.webview.browser.shell.Build$Version"

    const-string/jumbo v7, "NAME"

    move-object/from16 v0, v19

    invoke-static {v0, v15, v6, v7}, Lcom/uc/webview/export/internal/setup/an;->a(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v15}, Lcom/uc/webview/export/internal/setup/an;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;)V

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v8, v6}, Lcom/uc/webview/export/internal/setup/an;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v30

    add-long v12, v12, v30

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long/2addr v10, v6

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    new-instance v6, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v15, v7}, Lcom/uc/webview/export/internal/setup/an;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Landroid/content/Context;Ljava/lang/ClassLoader;I)V

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long/2addr v10, v6

    :cond_9
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_a

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v8, v6}, Lcom/uc/webview/export/internal/setup/an;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v6

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v14

    add-long/2addr v12, v14

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long/2addr v10, v6

    :cond_a
    new-instance v7, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v7}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v21, :cond_f

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_f

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->browserIFModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v15, ":"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_5
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v27, Lcom/uc/webview/export/cyclone/UCLoader;

    iget-object v6, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v5, v5, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v14, v6, v5, v1}, Lcom/uc/webview/export/cyclone/UCLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v7}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v14

    add-long v16, v16, v14

    invoke-virtual {v7}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    add-long v14, v28, v6

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/uc/webview/export/internal/setup/an;->mCL:Ljava/lang/ClassLoader;

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/uc/webview/export/internal/setup/an;->a:Z

    if-nez v9, :cond_b

    const-wide/16 v6, 0x3e8

    cmp-long v5, v14, v6

    if-ltz v5, :cond_10

    :cond_b
    const/4 v5, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/uc/webview/export/internal/setup/an;->b:Z

    const-string/jumbo v6, "sdk_vrf"

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/uc/webview/export/internal/setup/an;->b:Z

    if-eqz v21, :cond_11

    const-string/jumbo v9, "sdk"

    :goto_7
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v13}, Lcom/uc/webview/export/internal/setup/an;->a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V

    const-string/jumbo v10, "sdk_opt"

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/uc/webview/export/internal/setup/an;->b:Z

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v21, :cond_12

    const-string/jumbo v13, "sdk"

    :goto_8
    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v17}, Lcom/uc/webview/export/internal/setup/an;->a(Ljava/lang/String;ZLjava/lang/Integer;Ljava/lang/String;JJ)V

    new-instance v5, Landroid/util/Pair;

    const-string/jumbo v6, "sdk_stp_s"

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/uc/webview/export/internal/setup/an;->callbackStat(Landroid/util/Pair;)V
    :try_end_4
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 71
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/an;->mCL:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/uc/webview/export/internal/setup/an;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v4, :cond_13

    .line 72
    :cond_d
    if-nez v22, :cond_e

    .line 73
    new-instance v22, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v4, 0xbbc

    const-string/jumbo v5, "UCM packages not found."

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    .line 75
    :cond_e
    throw v22

    .line 61
    :cond_f
    :try_start_5
    const-string/jumbo v6, ""

    goto/16 :goto_5

    :cond_10
    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    const-string/jumbo v9, "ucm"

    goto :goto_7

    :cond_12
    const-string/jumbo v13, "ucm"
    :try_end_5
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_8

    .line 77
    :cond_13
    return-void

    :cond_14
    move-object/from16 v22, v7

    goto :goto_9
.end method
