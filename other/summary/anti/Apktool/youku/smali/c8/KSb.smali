.class public final Lc8/KSb;
.super Ljava/lang/Object;
.source "CatcherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/FSb;,
        Lc8/HSb;,
        Lc8/ISb;,
        Lcom/alibaba/motu/crashreporter/CatcherManager$UncaughtExceptionLinsterAdapterCopyOnWriteArrayList;,
        Lc8/JSb;
    }
.end annotation


# instance fields
.field mANRCatcher:Lc8/FSb;

.field mConfiguration:Lc8/LSb;

.field mContext:Landroid/content/Context;

.field mProcessName:Ljava/lang/String;

.field mReportBuilder:Lc8/iTb;

.field mReporterContext:Lc8/kTb;

.field mSendManager:Lc8/qTb;

.field mStorageManager:Lc8/rTb;

.field mUCNativeExceptionCatcher:Lc8/HSb;

.field mUncaughtExceptionCatcher:Lc8/ISb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lc8/kTb;Lc8/LSb;Lc8/rTb;Lc8/iTb;Lc8/qTb;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "reporterContext"    # Lc8/kTb;
    .param p4, "configuration"    # Lc8/LSb;
    .param p5, "storageManager"    # Lc8/rTb;
    .param p6, "reportBuilder"    # Lc8/iTb;
    .param p7, "sendManager"    # Lc8/qTb;

    .prologue
    const/4 v6, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p3, p0, Lc8/KSb;->mReporterContext:Lc8/kTb;

    .line 49
    iput-object p1, p0, Lc8/KSb;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lc8/KSb;->mProcessName:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lc8/KSb;->mConfiguration:Lc8/LSb;

    .line 52
    iput-object p5, p0, Lc8/KSb;->mStorageManager:Lc8/rTb;

    .line 53
    iput-object p6, p0, Lc8/KSb;->mReportBuilder:Lc8/iTb;

    .line 54
    iput-object p7, p0, Lc8/KSb;->mSendManager:Lc8/qTb;

    .line 56
    const-string/jumbo v2, "Configuration.enableUncaughtExceptionCatch"

    invoke-virtual {p4, v2, v6}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    .local v0, "start":J
    new-instance v2, Lc8/ISb;

    invoke-direct {v2, p0}, Lc8/ISb;-><init>(Lc8/KSb;)V

    iput-object v2, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    .line 59
    iget-object v2, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    new-instance v3, Lc8/zTb;

    invoke-direct {v3}, Lc8/zTb;-><init>()V

    invoke-virtual {v2, v3}, Lc8/ISb;->addIgnore(Lc8/ATb;)Z

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK UncaughtExceptionCatcher initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 64
    .end local v0    # "start":J
    :cond_0
    const-string/jumbo v2, "Configuration.enableNativeExceptionCatch"

    invoke-virtual {p4, v2, v6}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 66
    .restart local v0    # "start":J
    new-instance v2, Lc8/HSb;

    invoke-direct {v2, p0}, Lc8/HSb;-><init>(Lc8/KSb;)V

    iput-object v2, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK UCNativeExceptionCatcher initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 71
    .end local v0    # "start":J
    :cond_1
    const-string/jumbo v2, "Configuration.enableANRCatch"

    invoke-virtual {p4, v2, v6}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 73
    .restart local v0    # "start":J
    new-instance v2, Lc8/FSb;

    invoke-direct {v2, p0}, Lc8/FSb;-><init>(Lc8/KSb;)V

    iput-object v2, p0, Lc8/KSb;->mANRCatcher:Lc8/FSb;

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK ANRCatcher initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 78
    .end local v0    # "start":J
    :cond_2
    const-string/jumbo v2, "Configuration.enableMainLoopBlockCatch"

    invoke-virtual {p4, v2, v6}, Lc8/LSb;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .restart local v0    # "start":J
    iget-object v2, p0, Lc8/KSb;->mReporterContext:Lc8/kTb;

    const-string/jumbo v3, "APP_VERSION"

    invoke-virtual {v2, v3}, Lc8/kTb;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lc8/KSb;->mainLoopCatcher(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "CrashSDK MainLoopCatcher initialize complete elapsed time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/USb;->d(Ljava/lang/String;)V

    .line 84
    .end local v0    # "start":J
    :cond_3
    return-void
.end method


# virtual methods
.method public addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 133
    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    invoke-virtual {v0, p1, p2}, Lc8/HSb;->addNativeHeaderInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method addUncaughtExceptionIgnore(Lc8/ATb;)V
    .locals 1
    .param p1, "ignore"    # Lc8/ATb;

    .prologue
    .line 100
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    invoke-virtual {v0, p1}, Lc8/ISb;->addIgnore(Lc8/ATb;)Z

    .line 103
    :cond_0
    return-void
.end method

.method addUncaughtExceptionLinster(Lc8/JSb;)V
    .locals 1
    .param p1, "linster"    # Lc8/JSb;

    .prologue
    .line 107
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    invoke-virtual {v0, p1}, Lc8/ISb;->addLinster(Lc8/JSb;)Z

    .line 110
    :cond_0
    return-void
.end method

.method disable()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    invoke-virtual {v0}, Lc8/ISb;->disable()V

    .line 95
    :cond_0
    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    invoke-virtual {v0}, Lc8/HSb;->disable()V

    .line 96
    :cond_1
    return-void
.end method

.method doScan()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    invoke-static {v0}, Lc8/HSb;->access$000(Lc8/HSb;)V

    .line 125
    iget-object v0, p0, Lc8/KSb;->mANRCatcher:Lc8/FSb;

    invoke-virtual {v0}, Lc8/FSb;->doScan()V

    .line 126
    return-void
.end method

.method enable()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    iget-object v1, p0, Lc8/KSb;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lc8/ISb;->enable(Landroid/content/Context;)V

    .line 89
    :cond_0
    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    invoke-virtual {v0}, Lc8/HSb;->enable()V

    .line 90
    :cond_1
    return-void
.end method

.method getAllUncaughtExceptionLinster()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/JSb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lc8/KSb;->mUncaughtExceptionCatcher:Lc8/ISb;

    invoke-virtual {v0}, Lc8/ISb;->getAllLinster()Ljava/util/List;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mainLoopCatcher(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 617
    :try_start_0
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 618
    .local v2, "timer":Ljava/util/Timer;
    new-instance v1, Lc8/CSb;

    invoke-direct {v1, p0, p1, p2}, Lc8/CSb;-><init>(Lc8/KSb;Landroid/content/Context;Ljava/lang/String;)V

    .line 645
    .local v1, "task":Ljava/util/TimerTask;
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v1, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    .end local v1    # "task":Ljava/util/TimerTask;
    .end local v2    # "timer":Ljava/util/Timer;
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshNativeInfo()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lc8/KSb;->mUCNativeExceptionCatcher:Lc8/HSb;

    invoke-virtual {v0}, Lc8/HSb;->refreshNativeInfo()V

    .line 130
    return-void
.end method
