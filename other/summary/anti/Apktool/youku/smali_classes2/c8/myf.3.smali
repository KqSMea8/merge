.class public Lc8/myf;
.super Ljava/lang/Object;
.source "ChainDelegateConsumer.java"

# interfaces
.implements Lc8/oyf;


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
        "Ljava/lang/Object;",
        "Lc8/oyf",
        "<TNEXT_OUT;TCONTEXT;>;"
    }
.end annotation


# instance fields
.field private mChainProducer:Lc8/syf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation
.end field

.field private mConsumer:Lc8/oyf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation
.end field

.field private mScheduler:Lc8/Nyf;


# direct methods
.method public constructor <init>(Lc8/oyf;Lc8/syf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p2, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    .line 21
    iput-object p2, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    .line 22
    return-void
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
            "<TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iput-object p1, p0, Lc8/myf;->mScheduler:Lc8/Nyf;

    .line 107
    return-object p0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 44
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    :try_start_0
    iget-object v2, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v2}, Lc8/syf;->getDelegateConsumerPool()Lc8/pyf;

    move-result-object v0

    .line 45
    .local v0, "pool":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lc8/pyf;->recycle(Lc8/myf;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "pool":Lc8/pyf;, "Lcom/taobao/rxm/consume/DelegateConsumerPool<TOUT;TNEXT_OUT;TCONTEXT;>;"
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getConsumer()Lc8/oyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    return-object v0
.end method

.method public getContext()Lc8/zyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TCONTEXT;"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/zyf;

    goto :goto_0
.end method

.method public bridge synthetic getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    invoke-virtual {p0}, Lc8/myf;->getContext()Lc8/zyf;

    move-result-object v0

    return-object v0
.end method

.method public onCancellation()V
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v0}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc8/nyf;->activeOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    iget-object v1, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-virtual {v0, v1}, Lc8/syf;->scheduleCancellation(Lc8/oyf;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v0}, Lc8/oyf;->onCancellation()V

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 79
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v0}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lc8/nyf;->activeOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    iget-object v1, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-virtual {v0, v1, p1}, Lc8/syf;->scheduleFailure(Lc8/oyf;Ljava/lang/Throwable;)V

    .line 84
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v0, p1}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNewResult(Lc8/iyf;Z)V
    .locals 8
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TNEXT_OUT;Z)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "newResult":Lc8/iyf;, "TNEXT_OUT;"
    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    iget-object v3, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v3}, Lc8/syf;->getName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "producerName":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/myf;->getContext()Lc8/zyf;

    move-result-object v3

    invoke-virtual {v3}, Lc8/zyf;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 58
    const-string/jumbo v3, "RxSysLog"

    const-string/jumbo v4, "[DelegateConsumer] ID=%d cancelled before receiving new result, producer=%s isLast=%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/myf;->getContext()Lc8/zyf;

    move-result-object v6

    invoke-virtual {v6}, Lc8/zyf;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v7

    invoke-static {v3, v4, v5}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    if-eqz p1, :cond_0

    .line 60
    invoke-interface {p1}, Lc8/iyf;->release()V

    .line 62
    :cond_0
    iget-object v2, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v2}, Lc8/oyf;->onCancellation()V

    .line 75
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v3, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v3}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/nyf;->activeOn(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_3

    iget-object v3, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    .line 66
    invoke-virtual {v3}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v3

    invoke-virtual {v3, v7}, Lc8/nyf;->activeOn(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v1, v2

    .line 67
    .local v1, "toSchedule":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 69
    iget-object v2, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    iget-object v3, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-virtual {v2, v3, p2, p1}, Lc8/syf;->scheduleNewResult(Lc8/oyf;ZLc8/iyf;)V

    goto :goto_0

    .line 73
    :cond_4
    iget-object v2, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v2, p1, p2}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onNewResult(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 14
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    check-cast p1, Lc8/iyf;

    invoke-virtual {p0, p1, p2}, Lc8/myf;->onNewResult(Lc8/iyf;Z)V

    return-void
.end method

.method public onProgressUpdate(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    .line 88
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    invoke-virtual {v0}, Lc8/syf;->getConsumeType()Lc8/nyf;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lc8/nyf;->activeOn(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    iget-object v1, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-virtual {v0, v1, p1}, Lc8/syf;->scheduleProgressUpdate(Lc8/oyf;F)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    invoke-interface {v0, p1}, Lc8/oyf;->onProgressUpdate(F)V

    goto :goto_0
.end method

.method public reset()Lc8/myf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p0, v0, v0}, Lc8/myf;->reset(Lc8/oyf;Lc8/syf;)Lc8/myf;

    .line 26
    return-object p0
.end method

.method public reset(Lc8/oyf;Lc8/syf;)Lc8/myf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/syf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;)",
            "Lc8/myf",
            "<TOUT;TNEXT_OUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 30
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p2, "chainProducer":Lc8/syf;, "Lcom/taobao/rxm/produce/ChainProducer<TOUT;TNEXT_OUT;TCONTEXT;>;"
    iput-object p1, p0, Lc8/myf;->mConsumer:Lc8/oyf;

    .line 31
    iput-object p2, p0, Lc8/myf;->mChainProducer:Lc8/syf;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/myf;->mScheduler:Lc8/Nyf;

    .line 33
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    .local p0, "this":Lc8/myf;, "Lcom/taobao/rxm/consume/ChainDelegateConsumer<TOUT;TNEXT_OUT;TCONTEXT;>;"
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

    move-result-object v1

    invoke-virtual {p0}, Lc8/myf;->getContext()Lc8/zyf;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc8/myf;->getContext()Lc8/zyf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/zyf;->getId()I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
