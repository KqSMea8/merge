.class public Lc8/Dwf;
.super Ljava/lang/Object;
.source "TBScheduler4Phenix.java"

# interfaces
.implements Lc8/Nyf;


# static fields
.field private static final QUEUE_PRIORITY_IMAGE:I = 0x1b


# instance fields
.field private final mExecutor:Lc8/Ocf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lc8/Vcf;->getDefaultThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    check-cast v0, Lc8/Ocf;

    iput-object v0, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 24
    return-void
.end method

.method public static setupScheduler(ZZ)V
    .locals 14
    .param p0, "enableUnifiedPool"    # Z
    .param p1, "enableNetworkLimit"    # Z

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 59
    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/ixf;->schedulerBuilder()Lc8/Avf;

    move-result-object v7

    new-instance v8, Lc8/Dwf;

    invoke-direct {v8}, Lc8/Dwf;-><init>()V

    invoke-virtual {v7, v8}, Lc8/Avf;->central(Lc8/Nyf;)Lc8/Avf;

    .line 61
    const-string/jumbo v7, "TBScheduler4Phenix"

    const-string/jumbo v8, "enable unify thread pool"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_0
    const/4 v6, 0x0

    .line 65
    .local v6, "score":I
    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    if-eqz v7, :cond_1

    .line 66
    invoke-static {}, Lc8/msf;->getOnLineStat()Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-result-object v7

    iget-object v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget v6, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->deviceScore:I

    .line 68
    :cond_1
    const/4 v3, 0x6

    .line 69
    .local v3, "maxRunning":I
    const/4 v0, 0x3

    .line 70
    .local v0, "maxDecodeRunning":I
    const/4 v1, 0x5

    .line 71
    .local v1, "maxNetworkRunningAtFast":I
    const/4 v2, 0x2

    .line 72
    .local v2, "maxNetworkRunningAtSlow":I
    const/4 v4, -0x1

    .line 81
    .local v4, "networkRunningExpired":I
    if-lez v6, :cond_2

    .line 82
    const/16 v7, 0x28

    if-gt v6, v7, :cond_4

    .line 83
    const/4 v3, 0x4

    .line 84
    const/4 v0, 0x2

    .line 85
    const/4 v1, 0x3

    .line 86
    const/4 v2, 0x2

    .line 110
    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 111
    const/16 v4, 0x61a8

    .line 114
    :cond_3
    const-string/jumbo v7, "TBScheduler4Phenix"

    const-string/jumbo v8, "setup max running=%d, decode=%d, fast network=%d, slow network=%d, network expired=%d, score=%d"

    const/4 v9, 0x6

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/ixf;->schedulerBuilder()Lc8/Avf;

    move-result-object v7

    .line 116
    invoke-virtual {v7, v3}, Lc8/Avf;->maxRunning(I)Lc8/Avf;

    move-result-object v7

    .line 117
    invoke-virtual {v7, v0}, Lc8/Avf;->maxDecodeRunning(I)Lc8/Avf;

    move-result-object v7

    .line 118
    invoke-virtual {v7, v1}, Lc8/Avf;->maxNetworkRunningAtFast(I)Lc8/Avf;

    move-result-object v7

    .line 119
    invoke-virtual {v7, v2}, Lc8/Avf;->maxNetworkRunningAtSlow(I)Lc8/Avf;

    move-result-object v7

    .line 120
    invoke-virtual {v7, v4}, Lc8/Avf;->networkRunningExpired(I)Lc8/Avf;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v0    # "maxDecodeRunning":I
    .end local v1    # "maxNetworkRunningAtFast":I
    .end local v2    # "maxNetworkRunningAtSlow":I
    .end local v3    # "maxRunning":I
    .end local v4    # "networkRunningExpired":I
    .end local v6    # "score":I
    :goto_1
    return-void

    .line 87
    .restart local v0    # "maxDecodeRunning":I
    .restart local v1    # "maxNetworkRunningAtFast":I
    .restart local v2    # "maxNetworkRunningAtSlow":I
    .restart local v3    # "maxRunning":I
    .restart local v4    # "networkRunningExpired":I
    .restart local v6    # "score":I
    :cond_4
    const/16 v7, 0x3c

    if-gt v6, v7, :cond_5

    .line 88
    const/4 v3, 0x5

    .line 89
    const/4 v0, 0x3

    .line 90
    const/4 v1, 0x4

    .line 91
    const/4 v2, 0x2

    goto :goto_0

    .line 92
    :cond_5
    const/16 v7, 0x4b

    if-gt v6, v7, :cond_6

    .line 93
    const/4 v3, 0x6

    .line 94
    const/4 v0, 0x3

    .line 95
    const/4 v1, 0x5

    .line 96
    const/4 v2, 0x3

    goto :goto_0

    .line 97
    :cond_6
    const/16 v7, 0x5a

    if-gt v6, v7, :cond_7

    .line 98
    const/4 v3, 0x7

    .line 99
    const/4 v0, 0x3

    .line 100
    const/4 v1, 0x6

    .line 101
    const/4 v2, 0x3

    goto :goto_0

    .line 102
    :cond_7
    if-eqz p0, :cond_2

    .line 103
    const/16 v3, 0x8

    .line 104
    const/4 v0, 0x4

    .line 105
    const/4 v1, 0x6

    .line 106
    const/4 v2, 0x3

    goto :goto_0

    .line 121
    .end local v0    # "maxDecodeRunning":I
    .end local v1    # "maxNetworkRunningAtFast":I
    .end local v2    # "maxNetworkRunningAtSlow":I
    .end local v3    # "maxRunning":I
    .end local v4    # "networkRunningExpired":I
    .end local v6    # "score":I
    :catch_0
    move-exception v5

    .line 122
    .local v5, "re":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "TBScheduler4Phenix"

    const-string/jumbo v8, "init running scheduler error=%s"

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v12

    invoke-static {v7, v8, v9}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    invoke-virtual {v0}, Lc8/Ocf;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 4

    .prologue
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "TBScheduler4Phenix[queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/Dwf;->getQueueSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 34
    invoke-virtual {v1}, Lc8/Ocf;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 35
    invoke-virtual {v1}, Lc8/Ocf;->getPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",largest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 36
    invoke-virtual {v1}, Lc8/Ocf;->getLargestPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",tasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 37
    invoke-virtual {v1}, Lc8/Ocf;->getTaskCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",completes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    .line 38
    invoke-virtual {v1}, Lc8/Ocf;->getCompletedTaskCount()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Lc8/Kyf;)V
    .locals 2
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 28
    iget-object v0, p0, Lc8/Dwf;->mExecutor:Lc8/Ocf;

    const/16 v1, 0x1b

    invoke-virtual {v0, p1, v1}, Lc8/Ocf;->execute(Ljava/lang/Runnable;I)V

    .line 29
    return-void
.end method
