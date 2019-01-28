.class public final Lcom/uc/webview/export/internal/setup/p;
.super Lcom/uc/webview/export/internal/setup/UCSubSetupTask;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/uc/webview/export/internal/setup/UCSubSetupTask",
        "<",
        "Lcom/uc/webview/export/internal/setup/p;",
        "Lcom/uc/webview/export/internal/setup/p;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/p;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    .prologue
    const/16 v13, 0xbbf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 42
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/p;->mCL:Ljava/lang/ClassLoader;

    sput-object v0, Lcom/uc/webview/export/internal/SDKFactory;->c:Ljava/lang/ClassLoader;

    invoke-static {}, Lcom/uc/webview/export/internal/uc/CoreFactory;->updateLazy()V

    .line 44
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/p;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "CONTEXT"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 45
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v9, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->soDirPath:Ljava/lang/String;

    .line 47
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "BREAKPAD_CONFIG"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/webview/export/extension/BreakpadConfig;

    .line 48
    if-eqz v1, :cond_0

    .line 49
    invoke-static {v0, v9, v1}, Lcom/uc/webview/export/internal/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/uc/webview/export/extension/BreakpadConfig;)V

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->mainLibrary:Ljava/lang/String;

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->a:Ljava/lang/String;

    .line 61
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    :try_start_1
    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->coreImplModule:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    .line 65
    :try_start_2
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/p;->mUCM:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->resDirPath:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_7

    move-object v5, v1

    move-object v14, v2

    move-object v2, v3

    move-object v3, v14

    .line 67
    :goto_0
    const-string/jumbo v6, "4"

    .line 72
    new-instance v10, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V

    .line 75
    const-string/jumbo v1, "PRIVATE_DATA_DIRECTORY_SUFFIX"

    invoke-virtual {p0, v1}, Lcom/uc/webview/export/internal/setup/p;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 78
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 79
    const-string/jumbo v12, "ucm_dex_path"

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v5, "ucm_odex_path"

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v3, "ucm_private_data_dir_suffix"

    invoke-virtual {v11, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string/jumbo v1, "ucm_paks_resource_dir"

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    :try_start_3
    invoke-static {v9}, Lcom/uc/webview/export/internal/utility/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 87
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    .line 89
    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xbbe

    const-string/jumbo v3, "Directory expected for LibraryTask but [%s] given."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v9, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 99
    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v6

    .line 106
    :goto_1
    if-nez v8, :cond_2

    .line 108
    :try_start_4
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "lib"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/uc/webview/export/internal/setup/p;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ".so"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 110
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 111
    const-string/jumbo v5, "ucm_corelib_path"

    invoke-virtual {v11, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v0, v11}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebkitCoreSoEnv(Landroid/content/Context;Ljava/util/HashMap;)Z

    .line 114
    const-string/jumbo v0, "2"
    :try_end_4
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_2
    move-object v1, v0

    .line 129
    :cond_2
    :goto_3
    :try_start_5
    new-instance v3, Landroid/util/Pair;

    const-string/jumbo v5, "sdk_lib"

    new-instance v0, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v6, "cnt"

    const-string/jumbo v7, "1"

    .line 132
    invoke-virtual {v0, v6, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v6, "code"

    .line 133
    invoke-virtual {v0, v6, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "cost_cpu"

    .line 134
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "cost"

    .line 135
    invoke-virtual {v10}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v6, "data"

    if-eqz v2, :cond_4

    .line 137
    invoke-virtual {v2}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_4
    invoke-virtual {v1, v6, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    invoke-direct {v3, v5, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 129
    invoke-virtual {p0, v3}, Lcom/uc/webview/export/internal/setup/p;->callbackStat(Landroid/util/Pair;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 142
    :goto_5
    if-eqz v2, :cond_5

    .line 146
    throw v2

    :catch_1
    move-exception v1

    move-object v2, v4

    move-object v1, v4

    :goto_6
    move-object v3, v2

    move-object v5, v1

    move-object v2, v4

    goto/16 :goto_0

    .line 92
    :cond_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "ucm_corelib_path"

    invoke-virtual {v11, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-static {v0, v11}, Lcom/uc/webview/export/internal/uc/CoreFactory;->initUCMobileWebkitCoreSoEnv(Landroid/content/Context;Ljava/util/HashMap;)Z

    .line 96
    const-string/jumbo v1, "1"
    :try_end_6
    .catch Lcom/uc/webview/export/internal/setup/UCSetupException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    move v2, v7

    :goto_7
    move v8, v2

    move-object v2, v4

    .line 103
    goto/16 :goto_1

    .line 101
    :catch_2
    move-exception v1

    .line 102
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v2, v13, v1}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    move-object v1, v6

    goto/16 :goto_1

    .line 117
    :catch_3
    move-exception v0

    .line 118
    if-nez v2, :cond_6

    :goto_8
    move-object v2, v0

    .line 123
    goto :goto_3

    .line 120
    :catch_4
    move-exception v0

    .line 121
    if-nez v2, :cond_2

    .line 122
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v2, v13, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    goto/16 :goto_3

    .line 137
    :cond_4
    :try_start_7
    const-string/jumbo v0, ""
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_4

    .line 148
    :cond_5
    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, "sdk_stp_l"

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/p;->callbackStat(Landroid/util/Pair;)V

    .line 149
    return-void

    :catch_5
    move-exception v0

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v2, v4

    goto :goto_6

    :catch_7
    move-exception v3

    goto :goto_6

    :cond_6
    move-object v0, v2

    goto :goto_8

    :cond_7
    move-object v0, v1

    goto/16 :goto_2

    :cond_8
    move-object v1, v6

    move v2, v8

    goto :goto_7
.end method
