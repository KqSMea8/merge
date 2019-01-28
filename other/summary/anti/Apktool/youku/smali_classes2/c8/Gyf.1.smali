.class public Lc8/Gyf;
.super Ljava/lang/Object;
.source "MasterThrottlingScheduler.java"

# interfaces
.implements Lc8/Fyf;
.implements Lc8/Lyf;
.implements Lc8/Pyf;


# instance fields
.field private mCurrentRunning:I

.field private final mHostScheduler:Lc8/Nyf;

.field private mMaxRunningCount:I

.field private final mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;


# direct methods
.method public constructor <init>(Lc8/Nyf;III)V
    .locals 1
    .param p1, "scheduler"    # Lc8/Nyf;
    .param p2, "maxConcurrentCount"    # I
    .param p3, "queueSize"    # I
    .param p4, "patienceSize"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/Gyf;->mHostScheduler:Lc8/Nyf;

    .line 17
    iput p2, p0, Lc8/Gyf;->mMaxRunningCount:I

    .line 18
    new-instance v0, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-direct {v0, p0, p3, p4}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;-><init>(Lc8/Fyf;II)V

    iput-object v0, p0, Lc8/Gyf;->mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    .line 19
    return-void
.end method

.method private checkRunningCount()V
    .locals 5

    .prologue
    .line 69
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Kyf;

    .line 71
    .local v2, "ourParentAction":Lc8/Kyf;
    :goto_0
    const/4 v1, 0x0

    .line 72
    .local v1, "nextAction":Lc8/Kyf;
    monitor-enter p0

    .line 74
    :try_start_0
    iget v3, p0, Lc8/Gyf;->mCurrentRunning:I

    iget v4, p0, Lc8/Gyf;->mMaxRunningCount:I

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lc8/Gyf;->mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v3}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->reachPatienceCapacity()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 75
    :cond_0
    iget-object v3, p0, Lc8/Gyf;->mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v3}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/Kyf;

    move-object v1, v0

    .line 77
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-eqz v1, :cond_2

    .line 81
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lc8/Gyf;->scheduleInner(Lc8/Kyf;Z)V

    .line 83
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 85
    :cond_2
    return-void
.end method

.method private handleReject(Lc8/Kyf;)V
    .locals 5
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 26
    const-string/jumbo v0, "RxSysLog"

    const-string/jumbo v1, "master throttling queue is full, directly run in thread(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p1}, Lc8/Kyf;->run()V

    .line 28
    return-void
.end method

.method private scheduleInner(Lc8/Kyf;Z)V
    .locals 2
    .param p1, "action"    # Lc8/Kyf;
    .param p2, "needQueue"    # Z

    .prologue
    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v1, p0, Lc8/Gyf;->mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v1, p1, p2}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->moveIn(Lc8/Kyf;Z)I

    move-result v0

    .line 34
    .local v0, "result":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 35
    iget v1, p0, Lc8/Gyf;->mCurrentRunning:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Gyf;->mCurrentRunning:I

    .line 37
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 44
    iget-object v1, p0, Lc8/Gyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v1, p1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 48
    :cond_1
    :goto_0
    return-void

    .line 37
    .end local v0    # "result":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 45
    .restart local v0    # "result":I
    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    invoke-direct {p0, p1}, Lc8/Gyf;->handleReject(Lc8/Kyf;)V

    goto :goto_0
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lc8/Gyf;->mScheduleQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MasterThrottling[running="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gyf;->mCurrentRunning:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lc8/Gyf;->mMaxRunningCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Gyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v1}, Lc8/Nyf;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isNotFull()Z
    .locals 2

    .prologue
    .line 22
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lc8/Gyf;->mCurrentRunning:I

    iget v1, p0, Lc8/Gyf;->mMaxRunningCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Gyf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->isScheduleMainThread()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onActionFinished(Lc8/Kyf;)V
    .locals 1
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 105
    monitor-enter p0

    .line 106
    :try_start_0
    iget v0, p0, Lc8/Gyf;->mCurrentRunning:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Gyf;->mCurrentRunning:I

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-direct {p0}, Lc8/Gyf;->checkRunningCount()V

    .line 109
    return-void

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedule(Lc8/Kyf;)V
    .locals 1
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 52
    invoke-virtual {p1, p0}, Lc8/Kyf;->setMasterActionListener(Lc8/Lyf;)V

    .line 53
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lc8/Gyf;->scheduleInner(Lc8/Kyf;Z)V

    .line 54
    return-void
.end method

.method public setMaxRunningCount(I)V
    .locals 1
    .param p1, "maxRunningCount"    # I

    .prologue
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iput p1, p0, Lc8/Gyf;->mMaxRunningCount:I

    .line 64
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-direct {p0}, Lc8/Gyf;->checkRunningCount()V

    .line 66
    return-void

    .line 64
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
