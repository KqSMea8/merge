.class public final Lcom/uc/webview/export/internal/setup/w;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/o;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/v;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/v;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 14

    .prologue
    .line 56
    check-cast p1, Lcom/uc/webview/export/internal/setup/o;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/o;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    :try_start_0
    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/o;->getLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v9

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/internal/setup/v;->setLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-virtual {v0, v9}, Lcom/uc/webview/export/internal/setup/v;->setTotalLoadedUCM(Lcom/uc/webview/export/internal/setup/UCMRunningInfo;)V

    const-string/jumbo v0, "d"

    const-string/jumbo v1, "SdkSetupTask"

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mSuccessCB: dataDir is [%s]."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->dataDir:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Throwable;

    invoke-virtual {v10, v0, v1}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_f

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const-string/jumbo v1, "ucmUpdUrl"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-wide/16 v4, 0x0

    const/16 v1, 0x2733

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v6, 0x2715

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v11, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v11}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;)Landroid/content/Context;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v6, v7}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v6, "uc_upd"

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_frun"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "createNewFile firstTimeRunFlagFile failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    :try_start_3
    const-string/jumbo v1, "sdk_ucm_old"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "1"

    :goto_2
    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_e

    :goto_3
    :try_start_4
    const-string/jumbo v4, ""

    const-string/jumbo v3, ""

    const-string/jumbo v2, ""

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v5

    iget v5, v5, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_10

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v5}, Lcom/uc/webview/export/internal/setup/v;->b(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move v8, v5

    :goto_4
    if-eqz v8, :cond_1d

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->b(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->errCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_b

    move-result-object v4

    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->b(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_d

    move-result-object v3

    :goto_5
    :try_start_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->b(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupException;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_c

    move-result-object v2

    :goto_6
    :try_start_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->c(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getCrashCode()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->c(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    move-object v4, v1

    move-object v3, v0

    :goto_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const-string/jumbo v1, "setup_priority"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_b

    :try_start_8
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const-string/jumbo v2, "dlChecker"

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Callable;

    if-nez v1, :cond_11

    const-string/jumbo v1, "N"
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    :goto_8
    move-object v2, v1

    :goto_9
    :try_start_9
    new-instance v1, Lcom/uc/webview/export/cyclone/UCHashMap;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCHashMap;-><init>()V

    const-string/jumbo v11, "cnt"

    const-string/jumbo v12, "1"

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "code"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v12

    iget v12, v12, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v11

    const-string/jumbo v12, "dir"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    if-nez v1, :cond_13

    const-string/jumbo v1, "null"

    :goto_a
    invoke-virtual {v11, v12, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v11

    const-string/jumbo v12, "old"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v1, :cond_14

    const-string/jumbo v1, "T"

    :goto_b
    invoke-virtual {v11, v12, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v11

    const-string/jumbo v12, "frun"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-boolean v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isFirstTimeOdex:Z

    if-eqz v1, :cond_15

    const-string/jumbo v1, "T"

    :goto_c
    invoke-virtual {v11, v12, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "cpu_cnt"

    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "cpu_freq"

    invoke-static {}, Lcom/uc/webview/export/internal/utility/d;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "cost_cpu"

    iget-object v12, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v12}, Lcom/uc/webview/export/internal/setup/v;->d(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "cost"

    iget-object v12, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v12}, Lcom/uc/webview/export/internal/setup/v;->d(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/cyclone/UCElapseTime;

    move-result-object v12

    invoke-virtual {v12}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v1

    const-string/jumbo v11, "pri"

    if-nez v0, :cond_16

    const-string/jumbo v0, "n"

    :goto_d
    invoke-virtual {v1, v11, v0}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    new-instance v11, Landroid/util/Pair;

    const-string/jumbo v12, "sdk_stp_suc"

    if-eqz v8, :cond_2

    const-string/jumbo v8, "multi_core"

    sget-boolean v1, Lcom/uc/webview/export/internal/SDKFactory;->k:Z

    if-eqz v1, :cond_17

    const-string/jumbo v1, "1"

    :goto_e
    invoke-virtual {v0, v8, v1}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "err"

    invoke-virtual {v0, v1, v7}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "cls"

    invoke-virtual {v0, v1, v6}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "crash"

    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/cyclone/UCHashMap;->set(Ljava/lang/Object;Ljava/lang/Object;)Lcom/uc/webview/export/cyclone/UCHashMap;

    move-result-object v0

    :cond_2
    invoke-direct {v11, v12, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v11}, Lcom/uc/webview/export/internal/setup/v;->callbackStat(Landroid/util/Pair;)V

    const-string/jumbo v1, "sdk_ucm_old"

    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-eqz v0, :cond_18

    const-string/jumbo v0, "1"

    :goto_f
    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_b

    :goto_10
    :try_start_a
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/16 v0, 0x2739

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->shellClassLoader:Ljava/lang/ClassLoader;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->invoke(I[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    :cond_3
    :goto_11
    :try_start_b
    iget-object v1, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const-string/jumbo v2, "loadPolicy"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Lcom/uc/webview/export/internal/setup/UCMPackageInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/SDKFactory;->a(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_9

    :goto_12
    :try_start_c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const-string/jumbo v1, "vmsize_saving"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->getOption(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    move v1, v0

    :goto_13
    const-string/jumbo v0, "com.uc.crashsdk.export.CrashApi"

    const-string/jumbo v2, "getInstance"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string/jumbo v3, "addHeaderInfo"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v6, "vmsize_saving_enable"

    aput-object v6, v5, v0

    const/4 v6, 0x1

    if-eqz v1, :cond_1a

    const-string/jumbo v0, "true"

    :goto_14
    aput-object v0, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v10, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mSuccessCB: vmsize_saving_enable="

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1b

    const-string/jumbo v0, "true"

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v10, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    :cond_5
    if-eqz v1, :cond_6

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/cyclone/UCVmsize;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uc/webview/export/cyclone/UCVmsize;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_8

    :cond_6
    :goto_16
    :try_start_d
    new-instance v0, Lcom/uc/webview/export/internal/setup/k;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/k;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/k;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v1, "CONTEXT"

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/k;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v1, "del_dec_fil"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/k;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/k;

    const-string/jumbo v1, "del_upd_fil"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/k;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/k;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/k;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    :goto_17
    :try_start_e
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->e(Lcom/uc/webview/export/internal/setup/v;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/uc/webview/export/internal/setup/j;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/v;->e(Lcom/uc/webview/export/internal/setup/v;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/j;-><init>(Ljava/util/List;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/j;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/j;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/j;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/j;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/j;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/j;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/j;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_7
    :try_start_f
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;Ljava/util/List;)Ljava/util/List;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    :goto_18
    :try_start_10
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v0

    iget v0, v0, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    new-instance v0, Lcom/uc/webview/export/internal/setup/ad;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/ad;-><init>()V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ad;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/ad;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/ad;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/ad;

    const-string/jumbo v1, "stat"

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask$a;-><init>(Lcom/uc/webview/export/internal/setup/UCSubSetupTask;)V

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/ad;->onEvent(Ljava/lang/String;Landroid/webkit/ValueCallback;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/ad;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/ad;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    :cond_8
    :goto_19
    :try_start_11
    const-string/jumbo v0, "SdkSetupTask"

    const-string/jumbo v1, "CDInitTask new"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.uc.webview.export.cd.Utils"

    const-string/jumbo v1, "createInitTaskForSdkSetupTask"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/uc/webview/export/internal/setup/v;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "stat"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invoke(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/v;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCSubSetupTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5

    :goto_1a
    :try_start_12
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->f(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->f(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/o;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Lcom/uc/webview/export/internal/setup/o;->start(J)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/v;->g(Lcom/uc/webview/export/internal/setup/v;)Lcom/uc/webview/export/internal/setup/o;

    new-instance v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v1, Lcom/uc/webview/export/cyclone/UCDex;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/UCDex;-><init>()V

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0x2711

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/uc/webview/export/utility/SetupTask;->getRoot()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->start()Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4

    :cond_9
    :goto_1b
    return-void

    :cond_a
    :try_start_13
    iget v2, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->coreType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_ucrun"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "createNewFile ucrunFlagFile failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    sub-long/2addr v2, v12

    iget-boolean v7, v9, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->isOldExtraKernel:Z

    if-nez v7, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/uc/webview/export/cyclone/UCCyclone;->getSourceHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "_curucrun"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "createNewFile currentUcRunFlagFile failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :goto_1c
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    sub-long/2addr v0, v4

    :cond_d
    const-string/jumbo v4, "stp_uc_hour"

    const-wide/32 v6, 0x36ee80

    div-long/2addr v2, v6

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "stp_curuc_hour"

    const-wide/32 v4, 0x36ee80

    div-long/2addr v0, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_0

    move-result-wide v2

    sub-long/2addr v0, v2

    move-wide v2, v0

    move-wide v0, v4

    goto :goto_1c

    :cond_f
    :try_start_14
    const-string/jumbo v0, "0"
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_e

    goto/16 :goto_2

    :cond_10
    const/4 v5, 0x0

    move v8, v5

    goto/16 :goto_4

    :cond_11
    :try_start_15
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "T"

    goto/16 :goto_8

    :cond_12
    const-string/jumbo v1, "F"
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v1

    :try_start_16
    const-string/jumbo v1, "E"

    move-object v2, v1

    goto/16 :goto_9

    :cond_13
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCSetupTask;->getTotalLoadedUCM()Lcom/uc/webview/export/internal/setup/UCMRunningInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/UCMRunningInfo;->ucmPackageInfo:Lcom/uc/webview/export/internal/setup/UCMPackageInfo;

    iget-object v13, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    invoke-static {v13}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/uc/webview/export/internal/setup/UCMPackageInfo;->getDirAlias(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_14
    const-string/jumbo v1, "F"

    goto/16 :goto_b

    :cond_15
    const-string/jumbo v1, "F"

    goto/16 :goto_c

    :cond_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_17
    const-string/jumbo v1, "0"

    goto/16 :goto_e

    :cond_18
    const-string/jumbo v0, "0"
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_b

    goto/16 :goto_f

    :cond_19
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_13

    :cond_1a
    :try_start_17
    const-string/jumbo v0, "false"

    goto/16 :goto_14

    :cond_1b
    const-string/jumbo v0, "false"
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_8

    goto/16 :goto_15

    :catch_2
    move-exception v0

    :try_start_18
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;Ljava/util/List;)Ljava/util/List;
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3

    goto/16 :goto_18

    :catch_3
    move-exception v0

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v3, 0xfa4

    invoke-direct {v2, v3, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/uc/webview/export/internal/setup/v;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto/16 :goto_1b

    :catchall_0
    move-exception v0

    :try_start_19
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/setup/v;->a(Lcom/uc/webview/export/internal/setup/v;Ljava/util/List;)Ljava/util/List;

    throw v0
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_3

    :cond_1c
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/w;->a:Lcom/uc/webview/export/internal/setup/v;

    new-instance v1, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v2, 0xfa1

    const-string/jumbo v3, "Task [%s] report success but no loaded UCM."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/v;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    goto/16 :goto_1b

    :catch_4
    move-exception v0

    goto/16 :goto_1b

    :catch_5
    move-exception v0

    goto/16 :goto_1a

    :catch_6
    move-exception v0

    goto/16 :goto_19

    :catch_7
    move-exception v0

    goto/16 :goto_17

    :catch_8
    move-exception v0

    goto/16 :goto_16

    :catch_9
    move-exception v0

    goto/16 :goto_12

    :catch_a
    move-exception v0

    goto/16 :goto_11

    :catch_b
    move-exception v0

    goto/16 :goto_10

    :catch_c
    move-exception v0

    goto/16 :goto_6

    :catch_d
    move-exception v0

    goto/16 :goto_5

    :catch_e
    move-exception v0

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_0

    :cond_1d
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    move-object v4, v1

    move-object v3, v0

    goto/16 :goto_7

    :cond_1e
    move-wide v0, v4

    goto/16 :goto_1c
.end method
