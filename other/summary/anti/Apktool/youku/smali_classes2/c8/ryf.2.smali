.class public abstract Lc8/ryf;
.super Lc8/syf;
.source "BaseChainProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT::",
        "Lc8/iyf;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Lc8/syf",
        "<TOUT;TNEXT_OUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private mActionPool:Lc8/Myf;

.field private mDelegateConsumerPool:Lc8/pyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/pyf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "produceType"    # I
    .param p2, "consumeType"    # I

    .prologue
    .line 22
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lc8/ryf;-><init>(Ljava/lang/String;II)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "producerName"    # Ljava/lang/String;
    .param p2, "produceType"    # I
    .param p3, "consumeType"    # I

    .prologue
    .line 26
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0, p1, p2, p3}, Lc8/syf;-><init>(Ljava/lang/String;II)V

    .line 27
    new-instance v0, Lc8/Myf;

    invoke-direct {v0}, Lc8/Myf;-><init>()V

    iput-object v0, p0, Lc8/ryf;->mActionPool:Lc8/Myf;

    .line 28
    new-instance v0, Lc8/pyf;

    invoke-direct {v0}, Lc8/pyf;-><init>()V

    iput-object v0, p0, Lc8/ryf;->mDelegateConsumerPool:Lc8/pyf;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lc8/ryf;Lc8/oyf;Lc8/Jyf;Lc8/Kyf;)V
    .locals 0
    .param p0, "x0"    # Lc8/ryf;
    .param p1, "x1"    # Lc8/oyf;
    .param p2, "x2"    # Lc8/Jyf;
    .param p3, "x3"    # Lc8/Kyf;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lc8/ryf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;Lc8/Kyf;)V

    return-void
.end method

.method private dispatchResultByType(Lc8/oyf;Lc8/Jyf;Lc8/Kyf;)V
    .locals 6
    .param p3, "currentAction"    # Lc8/Kyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Jyf",
            "<TNEXT_OUT;>;",
            "Lc8/Kyf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p2, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    const/4 v5, 0x1

    .line 56
    if-nez p2, :cond_2

    .line 58
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;

    invoke-virtual {v0}, Lc8/zyf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string/jumbo v1, "RxSysLog"

    const-string/jumbo v2, "[ChainProducer] ID=%d cancelled before conducting result, producer=%s type=%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;

    invoke-virtual {v0}, Lc8/zyf;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p0}, Lc8/ryf;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    const/4 v0, 0x2

    invoke-virtual {p0}, Lc8/ryf;->getProduceType()I

    move-result v4

    invoke-static {v4}, Lc8/tyf;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-interface {p1}, Lc8/oyf;->onCancellation()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0, p1, p3}, Lc8/ryf;->conductResult(Lc8/oyf;Lc8/Kyf;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lc8/ryf;->getProduceType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 62
    invoke-direct {p0, p1}, Lc8/ryf;->leadToNextProducer(Lc8/oyf;)V

    goto :goto_0

    .line 67
    :cond_2
    iget v0, p2, Lc8/Jyf;->consumeType:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 69
    :sswitch_0
    iget-boolean v1, p2, Lc8/Jyf;->isLast:Z

    iget-object v0, p2, Lc8/Jyf;->newResult:Ljava/lang/Object;

    check-cast v0, Lc8/iyf;

    invoke-virtual {p0, p1, v1, v0}, Lc8/ryf;->consumeNewResult(Lc8/oyf;ZLc8/iyf;)V

    goto :goto_0

    .line 72
    :sswitch_1
    iget v0, p2, Lc8/Jyf;->progress:F

    invoke-virtual {p0, p1, v0}, Lc8/ryf;->consumeProgressUpdate(Lc8/oyf;F)V

    goto :goto_0

    .line 75
    :sswitch_2
    iget-object v0, p2, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p0, p1, v0}, Lc8/ryf;->consumeFailure(Lc8/oyf;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 78
    :sswitch_3
    invoke-virtual {p0, p1}, Lc8/ryf;->consumeCancellation(Lc8/oyf;)V

    goto :goto_0

    .line 67
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_3
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method private getDelegatingConsumer(Lc8/oyf;)Lc8/myf;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-virtual {p0}, Lc8/ryf;->getDelegateConsumerPool()Lc8/pyf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/pyf;->offer()Lc8/myf;

    move-result-object v0

    .line 115
    .local v0, "reuseConsumer":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0}, Lc8/myf;->reset(Lc8/oyf;Lc8/syf;)Lc8/myf;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lc8/myf;

    invoke-direct {v1, p1, p0}, Lc8/myf;-><init>(Lc8/oyf;Lc8/syf;)V

    goto :goto_0
.end method

.method private leadToNextProducer(Lc8/oyf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-virtual {p0}, Lc8/ryf;->getNextProducer()Lc8/uyf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lc8/ryf;->getNextProducer()Lc8/uyf;

    move-result-object v0

    invoke-direct {p0, p1}, Lc8/ryf;->getDelegatingConsumer(Lc8/oyf;)Lc8/myf;

    move-result-object v1

    invoke-virtual {p0}, Lc8/ryf;->getConsumeScheduler()Lc8/Nyf;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/myf;->consumeOn(Lc8/Nyf;)Lc8/oyf;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/uyf;->produceResults(Lc8/oyf;)V

    return-void

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lc8/ryf;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t conduct result while no next producer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public consumeCancellation(Lc8/oyf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    return-void
.end method

.method public consumeFailure(Lc8/oyf;Ljava/lang/Throwable;)V
    .locals 0
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    return-void
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZTNEXT_OUT;)V"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "interResult":Lc8/iyf;, "TNEXT_OUT;"
    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    check-cast p3, Lc8/iyf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/ryf;->consumeNewResult(Lc8/oyf;ZLc8/iyf;)V

    return-void
.end method

.method public consumeProgressUpdate(Lc8/oyf;F)V
    .locals 0
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;F)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    return-void
.end method

.method public getDelegateConsumerPool()Lc8/pyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/pyf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/ryf;->mDelegateConsumerPool:Lc8/pyf;

    return-object v0
.end method

.method public produceResults(Lc8/oyf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;

    invoke-virtual {v0}, Lc8/zyf;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v1, "RxSysLog"

    const-string/jumbo v2, "[ChainProducer] ID=%d cancelled before leading to produce result, producer=%s type=%s"

    const/4 v0, 0x3

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;

    invoke-virtual {v0}, Lc8/zyf;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lc8/ryf;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lc8/ryf;->getProduceType()I

    move-result v4

    invoke-static {v4}, Lc8/tyf;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v2, v3}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-interface {p1}, Lc8/oyf;->onCancellation()V

    .line 98
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-virtual {p0}, Lc8/ryf;->getProduceType()I

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lc8/ryf;->getProduceScheduler()Lc8/Nyf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lc8/ryf;->scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0, p1}, Lc8/ryf;->leadToNextProducer(Lc8/oyf;)V

    goto :goto_0
.end method

.method protected scheduleConductingResult(Lc8/Nyf;Lc8/oyf;Lc8/Jyf;Z)V
    .locals 6
    .param p1, "scheduler"    # Lc8/Nyf;
    .param p4, "isAllowedDirectRun"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nyf;",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Jyf",
            "<TNEXT_OUT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/ryf;, "Lcom/taobao/rxm/produce/BaseChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "scheduleWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TNEXT_OUT;>;"
    if-eqz p1, :cond_2

    if-eqz p4, :cond_0

    invoke-interface {p1}, Lc8/Nyf;->isScheduleMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    :cond_0
    iget-object v1, p0, Lc8/ryf;->mActionPool:Lc8/Myf;

    invoke-virtual {v1}, Lc8/Myf;->offer()Lc8/Kyf;

    move-result-object v0

    .line 36
    .local v0, "actionNow":Lc8/Kyf;
    if-nez v0, :cond_1

    .line 37
    new-instance v0, Lc8/qyf;

    .end local v0    # "actionNow":Lc8/Kyf;
    invoke-interface {p2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->getSchedulePriority()I

    move-result v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lc8/qyf;-><init>(Lc8/ryf;ILc8/oyf;Lc8/Jyf;Z)V

    .line 43
    .restart local v0    # "actionNow":Lc8/Kyf;
    iget-object v1, p0, Lc8/ryf;->mActionPool:Lc8/Myf;

    invoke-virtual {v0, v1}, Lc8/Kyf;->setScheduledActionPool(Lc8/Myf;)V

    .line 47
    :goto_0
    invoke-interface {p1, v0}, Lc8/Nyf;->schedule(Lc8/Kyf;)V

    .line 52
    .end local v0    # "actionNow":Lc8/Kyf;
    :goto_1
    return-void

    .line 45
    .restart local v0    # "actionNow":Lc8/Kyf;
    :cond_1
    invoke-interface {p2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    invoke-virtual {v1}, Lc8/zyf;->getSchedulePriority()I

    move-result v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lc8/Kyf;->reset(ILc8/oyf;Lc8/Jyf;Z)Lc8/Kyf;

    goto :goto_0

    .line 50
    .end local v0    # "actionNow":Lc8/Kyf;
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, v1}, Lc8/ryf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;Lc8/Kyf;)V

    goto :goto_1
.end method
