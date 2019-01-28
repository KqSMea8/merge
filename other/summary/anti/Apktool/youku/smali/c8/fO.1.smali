.class public Lc8/fO;
.super Ljava/lang/Object;
.source "UnifiedRequestTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/hO;->commitTimeoutTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/hO;


# direct methods
.method constructor <init>(Lc8/hO;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/16 v6, -0xca

    .line 109
    iget-object v1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    iget-object v1, v1, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string/jumbo v1, "anet.UnifiedRequestTask"

    const-string/jumbo v2, "task time out"

    iget-object v3, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v3}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v3

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    iget-object v1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    invoke-virtual {v1}, Lc8/cO;->cancelRunningTask()V

    .line 113
    iget-object v1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    iget-object v1, v1, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    iput v6, v1, Lanetwork/channel/statist/StatisticData;->resultCode:I

    .line 114
    iget-object v1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    iget-object v1, v1, Lc8/cO;->callback:Lc8/NN;

    new-instance v2, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v3, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v3}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v3

    iget-object v3, v3, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v2, v6, v7, v3}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    invoke-interface {v1, v2}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 116
    iget-object v1, p0, Lc8/fO;->this$0:Lc8/hO;

    invoke-static {v1}, Lc8/hO;->access$000(Lc8/hO;)Lc8/cO;

    move-result-object v1

    iget-object v1, v1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    .line 117
    .local v0, "rs":Lanet/channel/statist/RequestStatistic;
    iput v5, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 118
    iput v6, v0, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 119
    invoke-static {v6}, Lc8/PL;->getErrMsg(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 121
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, v0}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 122
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    invoke-direct {v2, v6, v7, v0, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 124
    .end local v0    # "rs":Lanet/channel/statist/RequestStatistic;
    :cond_0
    return-void
.end method
