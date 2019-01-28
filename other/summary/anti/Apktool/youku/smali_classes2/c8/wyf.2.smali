.class public Lc8/wyf;
.super Lc8/ryf;
.source "RequestMultiplexProducer.java"

# interfaces
.implements Lc8/xyf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT::",
        "Lc8/iyf;",
        "CONTEXT:",
        "Lc8/zyf;",
        ">",
        "Lc8/ryf",
        "<TOUT;TOUT;TCONTEXT;>;",
        "Lc8/xyf;"
    }
.end annotation


# static fields
.field private static final MIN_ARRAY_CAPACITY:I = 0x2


# instance fields
.field private mConsumerGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;>;>;"
        }
    .end annotation
.end field

.field private mKeyToGroupId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOutClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TOUT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TOUT;>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "outClazz":Ljava/lang/Class;, "Ljava/lang/Class<TOUT;>;"
    const/4 v0, 0x1

    const/16 v1, 0x1d

    invoke-direct {p0, v0, v1}, Lc8/ryf;-><init>(II)V

    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    .line 34
    iput-object p1, p0, Lc8/wyf;->mOutClass:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method private addConsumer2Group(Ljava/util/ArrayList;Lc8/oyf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;>;",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    .local p2, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-interface {p2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/zyf;

    invoke-virtual {v2}, Lc8/zyf;->getSchedulePriority()I

    move-result v0

    .line 76
    .local v0, "newPriority":I
    invoke-direct {p0, p1}, Lc8/wyf;->getPipelineConsumer(Ljava/util/ArrayList;)Lc8/oyf;

    move-result-object v2

    invoke-interface {v2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    .line 78
    .local v1, "pipelineContext":Lc8/zyf;, "TCONTEXT;"
    invoke-virtual {v1}, Lc8/zyf;->getSchedulePriority()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 79
    invoke-virtual {v1, v0}, Lc8/zyf;->setSchedulePriority(I)V

    .line 82
    :cond_0
    invoke-virtual {v1}, Lc8/zyf;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {p2}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/zyf;

    invoke-virtual {v2}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc8/zyf;->cancelInMultiplex(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method private dispatchResultByType(Lc8/oyf;Lc8/Jyf;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;",
            "Lc8/Jyf",
            "<TOUT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "pipeline":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p2, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 96
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/zyf;

    .line 97
    .local v5, "pipelineReq":Lc8/zyf;, "TCONTEXT;"
    iget-object v7, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    invoke-virtual {v5}, Lc8/zyf;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 102
    .local v0, "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    invoke-virtual {v5}, Lc8/zyf;->getMultiplexKey()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "multiplexKey":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 105
    const-string/jumbo v7, "RxSysLog"

    const-string/jumbo v8, "[RequestMultiplex] group has been removed from multiplex, but pipeline is still producing new result(multiplex:%s, id:%d, pipeline:%d, type:%d)"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v10

    invoke-virtual {v5}, Lc8/zyf;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v5}, Lc8/zyf;->getMultiplexPipeline()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    const/4 v10, 0x3

    iget v11, p2, Lc8/Jyf;->consumeType:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/RNf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return-void

    .line 110
    :cond_0
    monitor-enter p0

    .line 111
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    .local v1, "groupSize":I
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 116
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/oyf;

    .line 117
    .local v3, "member":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {v3}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/zyf;

    .line 119
    .local v6, "request":Lc8/zyf;, "TCONTEXT;"
    if-eq v3, p1, :cond_1

    .line 120
    invoke-virtual {v6, v5}, Lc8/zyf;->syncFrom(Lc8/zyf;)V

    .line 123
    :cond_1
    invoke-virtual {v6}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v7

    if-nez v7, :cond_2

    .line 124
    iget v7, p2, Lc8/Jyf;->consumeType:I

    sparse-switch v7, :sswitch_data_0

    .line 115
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 126
    :sswitch_0
    iget-object v7, p2, Lc8/Jyf;->newResult:Ljava/lang/Object;

    iget-boolean v8, p2, Lc8/Jyf;->isLast:Z

    invoke-interface {v3, v7, v8}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    goto :goto_2

    .line 151
    .end local v1    # "groupSize":I
    .end local v2    # "k":I
    .end local v3    # "member":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .end local v6    # "request":Lc8/zyf;, "TCONTEXT;"
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 129
    .restart local v1    # "groupSize":I
    .restart local v2    # "k":I
    .restart local v3    # "member":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .restart local v6    # "request":Lc8/zyf;, "TCONTEXT;"
    :sswitch_1
    :try_start_1
    iget v7, p2, Lc8/Jyf;->progress:F

    invoke-interface {v3, v7}, Lc8/oyf;->onProgressUpdate(F)V

    goto :goto_2

    .line 132
    :sswitch_2
    const-string/jumbo v7, "RxSysLog"

    const-string/jumbo v8, "[RequestMultiplex] ID=%d consumers of the group were not all cancelled, but pipeline dispatched cancellation result"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Lc8/zyf;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/RNf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-interface {v3}, Lc8/oyf;->onCancellation()V

    goto :goto_2

    .line 136
    :sswitch_3
    iget-object v7, p2, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    invoke-interface {v3, v7}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 140
    :cond_2
    iget v7, p2, Lc8/Jyf;->consumeType:I

    const/16 v8, 0x10

    if-ne v7, v8, :cond_3

    .line 141
    const-string/jumbo v7, "RxSysLog"

    const-string/jumbo v8, "[RequestMultiplex] ID=%d received error after cancellation, throwable=%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Lc8/zyf;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p2, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    aput-object v11, v9, v10

    invoke-static {v7, v8, v9}, Lc8/RNf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    :cond_3
    invoke-interface {v3}, Lc8/oyf;->onCancellation()V

    goto :goto_2

    .line 147
    .end local v3    # "member":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .end local v6    # "request":Lc8/zyf;, "TCONTEXT;"
    :cond_4
    iget-boolean v7, p2, Lc8/Jyf;->isLast:Z

    if-eqz v7, :cond_5

    .line 148
    iget-object v7, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v7, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    invoke-virtual {v5}, Lc8/zyf;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 124
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private getPipelineConsumer(Ljava/util/ArrayList;)Lc8/oyf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;>;)",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oyf;

    return-object v0
.end method

.method private isGroupCancelled(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "group":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 156
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/oyf;

    .line 157
    .local v0, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {v0}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/zyf;

    invoke-virtual {v2}, Lc8/zyf;->isCancelledInMultiplex()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    const/4 v2, 0x0

    .line 161
    .end local v0    # "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    :goto_1
    return v2

    .line 155
    .restart local v0    # "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    const/4 v3, 0x1

    .line 50
    .local v3, "notLead2Next":Z
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/zyf;

    .line 51
    .local v1, "context":Lc8/zyf;, "TCONTEXT;"
    invoke-virtual {v1}, Lc8/zyf;->getMultiplexKey()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "multiplexKey":Ljava/lang/String;
    monitor-enter p0

    .line 54
    :try_start_0
    iget-object v5, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 56
    .local v4, "pipeline":Ljava/lang/Integer;
    if-nez v4, :cond_0

    .line 57
    invoke-virtual {v1}, Lc8/zyf;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 59
    iget-object v5, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 61
    .local v0, "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    iget-object v5, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const/4 v3, 0x0

    .line 66
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v5}, Lc8/zyf;->setMultiplexPipeline(I)V

    .line 67
    invoke-virtual {v1, p0}, Lc8/zyf;->setMultiplexCancelListener(Lc8/xyf;)V

    .line 68
    invoke-direct {p0, v0, p1}, Lc8/wyf;->addConsumer2Group(Ljava/util/ArrayList;Lc8/oyf;)V

    .line 69
    monitor-exit p0

    .line 70
    return v3

    .line 64
    .end local v0    # "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    :cond_0
    iget-object v5, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .restart local v0    # "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    goto :goto_0

    .line 69
    .end local v0    # "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    .end local v4    # "pipeline":Ljava/lang/Integer;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public consumeCancellation(Lc8/oyf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x8

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 210
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    invoke-direct {p0, p1, v0}, Lc8/wyf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;)V

    .line 211
    return-void
.end method

.method public consumeFailure(Lc8/oyf;Ljava/lang/Throwable;)V
    .locals 3
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
    .line 215
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/16 v1, 0x10

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 216
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput-object p2, v0, Lc8/Jyf;->throwable:Ljava/lang/Throwable;

    .line 217
    invoke-direct {p0, p1, v0}, Lc8/wyf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;)V

    .line 218
    return-void
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 2
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;ZTOUT;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    .local p3, "interResult":Lc8/iyf;, "TOUT;"
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lc8/Jyf;-><init>(IZ)V

    .line 196
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput-object p3, v0, Lc8/Jyf;->newResult:Ljava/lang/Object;

    .line 197
    invoke-direct {p0, p1, v0}, Lc8/wyf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;)V

    .line 198
    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    check-cast p3, Lc8/iyf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/wyf;->consumeNewResult(Lc8/oyf;ZLc8/iyf;)V

    return-void
.end method

.method public consumeProgressUpdate(Lc8/oyf;F)V
    .locals 3
    .param p2, "progress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<TOUT;TCONTEXT;>;F)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    new-instance v0, Lc8/Jyf;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc8/Jyf;-><init>(IZ)V

    .line 203
    .local v0, "resultWrapper":Lc8/Jyf;, "Lcom/taobao/rxm/schedule/ScheduleResultWrapper<TOUT;>;"
    iput p2, v0, Lc8/Jyf;->progress:F

    .line 204
    invoke-direct {p0, p1, v0}, Lc8/wyf;->dispatchResultByType(Lc8/oyf;Lc8/Jyf;)V

    .line 205
    return-void
.end method

.method public getNextOutType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 44
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/wyf;->mOutClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getOutType()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 39
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    iget-object v0, p0, Lc8/wyf;->mOutClass:Ljava/lang/Class;

    return-object v0
.end method

.method public onCancelRequest(Lc8/zyf;)V
    .locals 9
    .param p1, "context"    # Lc8/zyf;

    .prologue
    .local p0, "this":Lc8/wyf;, "Lcom/taobao/rxm/produce/RequestMultiplexProducer<TOUT;TCONTEXT;>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 166
    invoke-virtual {p1}, Lc8/zyf;->getMultiplexKey()Ljava/lang/String;

    move-result-object v2

    .line 168
    .local v2, "multiplexKey":Ljava/lang/String;
    iget-object v4, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v4, p0, Lc8/wyf;->mConsumerGroups:Ljava/util/Map;

    invoke-virtual {p1}, Lc8/zyf;->getMultiplexPipeline()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    .local v0, "consumerGroup":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;>;"
    if-eqz v0, :cond_0

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-direct {p0, v0}, Lc8/wyf;->getPipelineConsumer(Ljava/util/ArrayList;)Lc8/oyf;

    move-result-object v3

    .line 181
    .local v3, "pipelineConsumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    invoke-interface {v3}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/zyf;

    invoke-virtual {v4}, Lc8/zyf;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v0}, Lc8/wyf;->isGroupCancelled(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v1, v5

    .line 182
    .local v1, "isAllCancelled":Z
    :cond_3
    if-eqz v1, :cond_4

    .line 184
    iget-object v4, p0, Lc8/wyf;->mKeyToGroupId:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string/jumbo v4, "RxSysLog"

    const-string/jumbo v6, "[RequestMultiplex] all of context in group[key:%s] were cancelled, remove it from KeyToGroupId"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-static {v4, v6, v7}, Lc8/RNf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    if-eqz v1, :cond_0

    .line 189
    invoke-interface {v3}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/zyf;

    invoke-virtual {v4, v5}, Lc8/zyf;->cancelInMultiplex(Z)V

    goto :goto_0

    .line 187
    .end local v1    # "isAllCancelled":Z
    .end local v3    # "pipelineConsumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<TOUT;TCONTEXT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
