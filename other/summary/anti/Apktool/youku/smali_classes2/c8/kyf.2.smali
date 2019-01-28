.class public abstract Lc8/kyf;
.super Ljava/lang/Object;
.source "BaseConsumer.java"

# interfaces
.implements Lc8/oyf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/oyf",
        "<TOUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private final mActionPool:Lc8/Myf;

.field final mContext:Lc8/zyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCONTEXT;"
        }
    .end annotation
.end field

.field mIsFinished:Z

.field private mScheduler:Lc8/Nyf;


# direct methods
.method public constructor <init>(Lc8/zyf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCONTEXT;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    .local p1, "context":Lc8/zyf;, "TCONTEXT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lc8/kyf;->mContext:Lc8/zyf;

    .line 24
    new-instance v0, Lc8/Myf;

    invoke-direct {v0}, Lc8/Myf;-><init>()V

    iput-object v0, p0, Lc8/kyf;->mActionPool:Lc8/Myf;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lc8/kyf;Lc8/Jyf;)V
    .locals 0
    .param p0, "x0"    # Lc8/kyf;
    .param p1, "x1"    # Lc8/Jyf;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lc8/kyf;->dispatchResultByType(Lc8/Jyf;)V

    return-void
.end method

.method private dispatchResultByType(Lc8/Jyf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jyf",
            "<TOUT;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    .local p1, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    const/16 v1, 0x8

    :try_start_0
    iget v2, p1, Lc8/Jyf;->consumeType:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lc8/kyf;->mContext:Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p0}, Lc8/kyf;->onCancellationImpl()V

    .line 83
    :goto_0
    return-void

    .line 69
    :cond_1
    iget v1, p1, Lc8/Jyf;->consumeType:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 71
    :sswitch_0
    iget-object v1, p1, Lc8/Jyf;->newResult:Ljava/lang/Object;

    iget-boolean v2, p1, Lc8/Jyf;->isLast:Z

    invoke-virtual {p0, v1, v2}, Lc8/kyf;->onNewResultImpl(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v0}, Lc8/kyf;->onUnhandledException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 74
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    :try_start_1
    iget v1, p1, Lc8/Jyf;->progress:F

    invoke-virtual {p0, v1}, Lc8/kyf;->onProgressUpdateImpl(F)V

    goto :goto_0

    .line 77
    :sswitch_2
    iget-object v1, p1, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lc8/kyf;->onFailureImpl(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 69
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private scheduleConsumingResult(Lc8/Jyf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Jyf",
            "<TOUT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    .local p1, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    invoke-virtual {p0}, Lc8/kyf;->needScheduleAction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lc8/kyf;->mActionPool:Lc8/Myf;

    invoke-virtual {v1}, Lc8/Myf;->offer()Lc8/Kyf;

    move-result-object v0

    .line 44
    .local v0, "actionNow":Lc8/Kyf;
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lc8/jyf;

    .end local v0    # "actionNow":Lc8/Kyf;
    invoke-virtual {p0}, Lc8/kyf;->getContext()Lc8/zyf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zyf;->getSchedulePriority()I

    move-result v1

    invoke-direct {v0, p0, v1, p0, p1}, Lc8/jyf;-><init>(Lc8/kyf;ILc8/oyf;Lc8/Jyf;)V

    .line 51
    .restart local v0    # "actionNow":Lc8/Kyf;
    iget-object v1, p0, Lc8/kyf;->mActionPool:Lc8/Myf;

    invoke-virtual {v0, v1}, Lc8/Kyf;->setScheduledActionPool(Lc8/Myf;)V

    .line 55
    :goto_0
    iget-object v1, p0, Lc8/kyf;->mScheduler:Lc8/Nyf;

    invoke-interface {v1, v0}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 60
    .end local v0    # "actionNow":Lc8/Kyf;
    :goto_1
    return-void

    .line 53
    .restart local v0    # "actionNow":Lc8/Kyf;
    :cond_0
    invoke-virtual {p0}, Lc8/kyf;->getContext()Lc8/zyf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zyf;->getSchedulePriority()I

    move-result v1

    invoke-virtual {v0, v1, p0, p1}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;)Lc8/Kyf;

    goto :goto_0

    .line 58
    .end local v0    # "actionNow":Lc8/Kyf;
    :cond_1
    invoke-direct {p0, p1}, Lc8/kyf;->dispatchResultByType(Lc8/Jyf;)V

    goto :goto_1
.end method


# virtual methods
.method public consumeOn(Lc8/Nyf;)Lc8/oyf;
    .locals 0
    .param p1, "scheduler"    # Lc8/Nyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            ")",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    iput-object p1, p0, Lc8/kyf;->mScheduler:Lc8/Nyf;

    .line 147
    return-object p0
.end method

.method public getContext()Lc8/zyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCONTEXT;"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/kyf;->mContext:Lc8/zyf;

    return-object v0
.end method

.method public bridge synthetic getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    invoke-virtual {p0}, Lc8/kyf;->getContext()Lc8/zyf;

    move-result-object v0

    return-object v0
.end method

.method protected getScheduler()Lc8/Nyf;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/kyf;->mScheduler:Lc8/Nyf;

    return-object v0
.end method

.method protected needScheduleAction()Z
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/kyf;->mScheduler:Lc8/Nyf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/kyf;->mScheduler:Lc8/Nyf;

    invoke-interface {v0}, Lc8/Nyf;->isScheduleMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCancellation()V
    .locals 3

    .prologue
    .line 117
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/kyf;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 123
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lc8/kyf;->mIsFinished:Z

    .line 121
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 122
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    invoke-direct {p0, v0}, Lc8/kyf;->scheduleConsumingResult(Lc8/Jyf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    .end local v0    # "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract onCancellationImpl()V
.end method

.method public declared-synchronized onFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 102
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/kyf;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 105
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/kyf;->mContext:Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {p0}, Lc8/kyf;->onCancellation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 109
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    iput-boolean v1, p0, Lc8/kyf;->mIsFinished:Z

    .line 110
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 111
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput-object p1, v0, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    .line 112
    invoke-direct {p0, v0}, Lc8/kyf;->scheduleConsumingResult(Lc8/Jyf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract onFailureImpl(Ljava/lang/Throwable;)V
.end method

.method public declared-synchronized onNewResult(Ljava/lang/Object;Z)V
    .locals 3
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT;Z)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    .local p1, "newResult":Ljava/lang/Object;, "TOUT;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/kyf;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    monitor-exit p0

    return-void

    .line 90
    :cond_0
    :try_start_1
    iget-object v1, p0, Lc8/kyf;->mContext:Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    invoke-virtual {p0}, Lc8/kyf;->onCancellation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 94
    :cond_1
    :try_start_2
    iput-boolean p2, p0, Lc8/kyf;->mIsFinished:Z

    .line 95
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lc8/kyf;->mIsFinished:Z

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 96
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput-object p1, v0, Lc8/Jyf;->newResult:Ljava/lang/Object;

    .line 97
    invoke-direct {p0, v0}, Lc8/kyf;->scheduleConsumingResult(Lc8/Jyf;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract onNewResultImpl(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOUT;Z)V"
        }
    .end annotation
.end method

.method public declared-synchronized onProgressUpdate(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    .line 132
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lc8/kyf;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 138
    :goto_0
    monitor-exit p0

    return-void

    .line 135
    :cond_0
    :try_start_1
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 136
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput p1, v0, Lc8/Jyf;->progress:F

    .line 137
    invoke-direct {p0, v0}, Lc8/kyf;->scheduleConsumingResult(Lc8/Jyf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected onProgressUpdateImpl(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 169
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    return-void
.end method

.method protected onUnhandledException(Ljava/lang/Exception;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 141
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    const-string/jumbo v0, "RxSysLog"

    const-string/jumbo v1, "UnhandledException when BaseConsumer dispatch result: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    .local p0, "this":Lc8/kyf;, "Lcom/taobao/rxm/consume/BaseConsumer<TOUT;TCONTEXT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lc8/NNf;->getClassShortName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[cxt-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/kyf;->getContext()Lc8/zyf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zyf;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
