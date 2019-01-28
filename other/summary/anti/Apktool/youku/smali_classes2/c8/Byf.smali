.class public Lc8/Byf;
.super Ljava/lang/Object;
.source "BranchThrottlingScheduler.java"

# interfaces
.implements Lc8/Lyf;
.implements Lc8/Pyf;


# instance fields
.field private mCurrentRunning:I

.field private final mHostScheduler:Lc8/Nyf;

.field private mMaxRunningCount:I

.field private final mWaitQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/Kyf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Nyf;I)V
    .locals 1
    .param p1, "hostScheduler"    # Lc8/Nyf;
    .param p2, "maxConcurrentCount"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lc8/Byf;->mHostScheduler:Lc8/Nyf;

    .line 17
    iput p2, p0, Lc8/Byf;->mMaxRunningCount:I

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/Byf;->mWaitQueue:Ljava/util/Queue;

    .line 19
    return-void
.end method

.method private checkRunningCount()V
    .locals 5

    .prologue
    .line 54
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Kyf;

    .line 56
    .local v2, "ourParentAction":Lc8/Kyf;
    :goto_0
    const/4 v1, 0x0

    .line 57
    .local v1, "nextAction":Lc8/Kyf;
    monitor-enter p0

    .line 58
    :try_start_0
    iget v3, p0, Lc8/Byf;->mCurrentRunning:I

    iget v4, p0, Lc8/Byf;->mMaxRunningCount:I

    if-ge v3, v4, :cond_0

    .line 59
    iget-object v3, p0, Lc8/Byf;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/Kyf;

    move-object v1, v0

    .line 61
    :cond_0
    if-eqz v1, :cond_1

    .line 62
    iget v3, p0, Lc8/Byf;->mCurrentRunning:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Byf;->mCurrentRunning:I

    .line 64
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    if-eqz v1, :cond_2

    .line 68
    iget-object v3, p0, Lc8/Byf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v3, v1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 70
    sget-object v3, Lc8/Kyf;->sActionCallerThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 73
    :cond_2
    return-void
.end method


# virtual methods
.method public getQueueSize()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lc8/Byf;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Byf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->getStatus()Ljava/lang/String;
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

.method public declared-synchronized isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Byf;->mHostScheduler:Lc8/Nyf;

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
    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget v0, p0, Lc8/Byf;->mCurrentRunning:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc8/Byf;->mCurrentRunning:I

    .line 95
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-direct {p0}, Lc8/Byf;->checkRunningCount()V

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public schedule(Lc8/Kyf;)V
    .locals 3
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 23
    invoke-virtual {p1, p0}, Lc8/Kyf;->setBranchActionListener(Lc8/Lyf;)V

    .line 25
    monitor-enter p0

    .line 31
    :try_start_0
    iget v1, p0, Lc8/Byf;->mCurrentRunning:I

    iget v2, p0, Lc8/Byf;->mMaxRunningCount:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc8/Byf;->mWaitQueue:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 32
    .local v0, "scheduleNow":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    iget v1, p0, Lc8/Byf;->mCurrentRunning:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc8/Byf;->mCurrentRunning:I

    .line 35
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iget-object v1, p0, Lc8/Byf;->mHostScheduler:Lc8/Nyf;

    invoke-interface {v1, p1}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 39
    :cond_2
    return-void

    .line 31
    .end local v0    # "scheduleNow":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setMaxRunningCount(I)V
    .locals 1
    .param p1, "maxRunningCount"    # I

    .prologue
    .line 47
    monitor-enter p0

    .line 48
    :try_start_0
    iput p1, p0, Lc8/Byf;->mMaxRunningCount:I

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-direct {p0}, Lc8/Byf;->checkRunningCount()V

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
