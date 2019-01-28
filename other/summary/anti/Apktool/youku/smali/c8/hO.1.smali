.class public Lc8/hO;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/gO;
    }
.end annotation


# instance fields
.field private rc:Lc8/cO;


# direct methods
.method public constructor <init>(Lc8/HN;Lc8/GN;)V
    .locals 4
    .param p1, "config"    # Lc8/HN;
    .param p2, "repeater"    # Lc8/GN;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Lc8/HN;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc8/GN;->setSeqNo(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lc8/cO;

    invoke-direct {v0, p1, p2}, Lc8/cO;-><init>(Lc8/HN;Lc8/NN;)V

    iput-object v0, p0, Lc8/hO;->rc:Lc8/cO;

    .line 38
    invoke-virtual {p1}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->start:J

    .line 39
    return-void
.end method

.method static synthetic access$000(Lc8/hO;)Lc8/cO;
    .locals 1
    .param p0, "x0"    # Lc8/hO;

    .prologue
    .line 29
    iget-object v0, p0, Lc8/hO;->rc:Lc8/cO;

    return-object v0
.end method

.method static synthetic access$100(Lc8/hO;)V
    .locals 0
    .param p0, "x0"    # Lc8/hO;

    .prologue
    .line 29
    invoke-direct {p0}, Lc8/hO;->commitTimeoutTask()V

    return-void
.end method

.method private commitTimeoutTask()V
    .locals 5

    .prologue
    .line 106
    iget-object v0, p0, Lc8/hO;->rc:Lc8/cO;

    new-instance v1, Lc8/fO;

    invoke-direct {v1, p0}, Lc8/fO;-><init>(Lc8/hO;)V

    iget-object v2, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2}, Lc8/HN;->getWaitTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3, v4}, Lc8/EL;->submitScheduledTask(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, v0, Lc8/cO;->timeoutTask:Ljava/util/concurrent/Future;

    .line 126
    return-void
.end method


# virtual methods
.method cancelTask()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/16 v6, -0xcc

    .line 129
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 130
    invoke-static {v5}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    const-string/jumbo v1, "anet.UnifiedRequestTask"

    const-string/jumbo v2, "task cancelled"

    iget-object v3, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    :cond_0
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    invoke-virtual {v1}, Lc8/cO;->cancelRunningTask()V

    .line 135
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    invoke-virtual {v1}, Lc8/cO;->cancelTimeoutTask()V

    .line 136
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    iput v6, v1, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 137
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->callback:Lc8/NN;

    new-instance v2, Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-static {v6}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v2, v6, v3, v4}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    invoke-interface {v1, v2}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 139
    iget-object v1, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    .line 140
    .local v0, "rs":Lanet/channel/statist/RequestStatistic;
    iput v5, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 141
    iput v6, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 142
    invoke-static {v6}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 143
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 144
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 145
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v2, v6, v7, v0, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 147
    .end local v0    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_1
    return-void
.end method

.method public request()Ljava/util/concurrent/Future;
    .locals 7

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 90
    invoke-static {v3}, Lc8/KL;->isPrintLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, "anet.UnifiedRequestTask"

    const-string/jumbo v1, "request"

    iget-object v2, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "Url"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/hO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v5}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    new-instance v0, Lc8/eO;

    invoke-direct {v0, p0}, Lc8/eO;-><init>(Lc8/hO;)V

    invoke-static {v0, v6}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    .line 102
    new-instance v0, Lc8/YN;

    invoke-direct {v0, p0}, Lc8/YN;-><init>(Lc8/hO;)V

    return-object v0
.end method
