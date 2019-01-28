.class public Lc8/cO;
.super Ljava/lang/Object;
.source "RequestContext.java"


# instance fields
.field public callback:Lc8/NN;

.field public final config:Lc8/HN;

.field public volatile isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile runningTask:Lc8/ZN;

.field public final seqNum:Ljava/lang/String;

.field public volatile statisticData:Lanetwork/channel/statist/StatisticData;

.field public volatile timeoutTask:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Lc8/HN;Lc8/NN;)V
    .locals 2
    .param p1, "config"    # Lc8/HN;
    .param p2, "callback"    # Lc8/NN;

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    iput-object v0, p0, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    iput-object v1, p0, Lc8/cO;->runningTask:Lc8/ZN;

    .line 23
    iput-object v1, p0, Lc8/cO;->timeoutTask:Ljava/util/concurrent/Future;

    .line 26
    iput-object p1, p0, Lc8/cO;->config:Lc8/HN;

    .line 27
    invoke-virtual {p1}, Lc8/HN;->getSeqNo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/cO;->seqNum:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lc8/cO;->callback:Lc8/NN;

    .line 29
    iget-object v0, p0, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {p1}, Lc8/HN;->getHttpUrl()Lc8/XL;

    move-result-object v1

    invoke-virtual {v1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public cancelRunningTask()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lc8/cO;->runningTask:Lc8/ZN;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lc8/cO;->runningTask:Lc8/ZN;

    invoke-interface {v0}, Lc8/ZN;->cancel()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cO;->runningTask:Lc8/ZN;

    .line 45
    :cond_0
    return-void
.end method

.method public cancelTimeoutTask()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lc8/cO;->timeoutTask:Ljava/util/concurrent/Future;

    .line 34
    .local v0, "future":Ljava/util/concurrent/Future;
    if-eqz v0, :cond_0

    .line 35
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/cO;->timeoutTask:Ljava/util/concurrent/Future;

    .line 38
    :cond_0
    return-void
.end method
