.class public Lc8/Eyf;
.super Ljava/lang/Object;
.source "CentralWorkScheduler.java"

# interfaces
.implements Lc8/Fyf;
.implements Lc8/Nyf;


# instance fields
.field private final mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

.field private final mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final mName:Ljava/lang/String;

.field private final mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "corePoolSize"    # I
    .param p3, "maxPoolSize"    # I
    .param p4, "keepAliveSeconds"    # I
    .param p5, "blockingQueueCapacity"    # I

    .prologue
    .line 30
    const/16 v6, 0x5dc

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lc8/Eyf;-><init>(Ljava/lang/String;IIIII)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIII)V
    .locals 12
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "corePoolSize"    # I
    .param p3, "maxPoolSize"    # I
    .param p4, "keepAliveSeconds"    # I
    .param p5, "blockingQueueCapacity"    # I
    .param p6, "patienceCapacity"    # I

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lc8/Eyf;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 38
    if-ltz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    const-string/jumbo v3, "corePoolSize must be >=0"

    invoke-static {v2, v3}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 39
    if-lt p3, p2, :cond_1

    const/4 v2, 0x1

    :goto_1
    const-string/jumbo v3, "maxPoolSize shouldn\'t be less than corePoolSize"

    invoke-static {v2, v3}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 40
    iput-object p1, p0, Lc8/Eyf;->mName:Ljava/lang/String;

    .line 41
    new-instance v2, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v2, p0, v0, v1}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;-><init>(Lc8/Fyf;II)V

    iput-object v2, p0, Lc8/Eyf;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    .line 42
    new-instance v3, Ljava/util/concurrent/ThreadPoolExecutor;

    move/from16 v0, p4

    int-to-long v6, v0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v9, p0, Lc8/Eyf;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    new-instance v10, Lc8/Cyf;

    invoke-direct {v10, p0}, Lc8/Cyf;-><init>(Lc8/Eyf;)V

    new-instance v11, Lc8/Dyf;

    invoke-direct {v11, p0}, Lc8/Dyf;-><init>(Lc8/Eyf;)V

    move v4, p2

    move v5, p3

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v3, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 70
    return-void

    .line 38
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 39
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic access$000(Lc8/Eyf;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/Eyf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/Eyf;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/Eyf;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lc8/Eyf;

    .prologue
    .line 23
    iget-object v0, p0, Lc8/Eyf;->mThreadNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lc8/Eyf;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoolSize()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/Eyf;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    invoke-virtual {v0}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v0

    return v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Eyf;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " status: queue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Eyf;->mCentralQueue:Lcom/taobao/rxm/schedule/CentralSchedulerQueue;

    .line 90
    invoke-virtual {v1}, Lcom/taobao/rxm/schedule/CentralSchedulerQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 91
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " pool="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 92
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " largest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNotFull()Z
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v0

    iget-object v1, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScheduleMainThread()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public schedule(Lc8/Kyf;)V
    .locals 3
    .param p1, "action"    # Lc8/Kyf;

    .prologue
    .line 82
    const/4 v0, 0x3

    invoke-static {v0}, Lc8/RNf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "RxSysLog"

    invoke-virtual {p0}, Lc8/Eyf;->getStatus()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lc8/Eyf;->mExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method
