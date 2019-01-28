.class public Lc8/aO;
.super Ljava/lang/Object;
.source "NetworkTask.java"

# interfaces
.implements Lc8/VI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bO;->sendRequest(Lanet/channel/Session;Lc8/eK;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bO;

.field final synthetic val$request:Lc8/eK;


# direct methods
.method constructor <init>(Lc8/bO;Lc8/eK;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lc8/aO;->this$0:Lc8/bO;

    iput-object p2, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReceive(Lanet/channel/bytes/ByteArray;Z)V
    .locals 13
    .param p1, "data"    # Lanet/channel/bytes/ByteArray;
    .param p2, "fin"    # Z

    .prologue
    const/4 v12, 0x0

    .line 296
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 327
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v4, v4, Lc8/bO;->dataChunkIndex:I

    if-nez v4, :cond_2

    .line 301
    const-string/jumbo v4, "anet.NetworkTask"

    const-string/jumbo v5, "[onDataReceive] receive first data chunk!"

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v6, v6, Lc8/bO;->rc:Lc8/cO;

    iget-object v6, v6, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    :cond_2
    if-eqz p2, :cond_3

    .line 305
    const-string/jumbo v4, "anet.NetworkTask"

    const-string/jumbo v5, "[onDataReceive] receive last data chunk!"

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v6, v6, Lc8/bO;->rc:Lc8/cO;

    iget-object v6, v6, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    :cond_3
    :try_start_0
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v5, v4, Lc8/bO;->dataChunkIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lc8/bO;->dataChunkIndex:I

    .line 310
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->callback:Lc8/NN;

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v5, v5, Lc8/bO;->dataChunkIndex:I

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v6, v6, Lc8/bO;->contentLength:I

    invoke-interface {v4, v5, v6, p1}, Lc8/NN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 312
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getBuffer()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1}, Lanet/channel/bytes/ByteArray;->getDataLength()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 314
    if-eqz p2, :cond_0

    .line 315
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v4, Lanetwork/channel/cache/Cache$Entry;->data:[B

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 319
    .local v2, "start":J
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->cache:Lc8/kN;

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    invoke-interface {v4, v0, v5}, Lc8/kN;->put(Ljava/lang/String;Lanetwork/channel/cache/Cache$Entry;)V

    .line 320
    const-string/jumbo v4, "anet.NetworkTask"

    const-string/jumbo v5, "write cache"

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v6, v6, Lc8/bO;->rc:Lc8/cO;

    iget-object v6, v6, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "cost"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "size"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v9, v9, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v9, v9, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "key"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    invoke-static {v4, v5, v6, v7}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 324
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v2    # "start":J
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "anet.NetworkTask"

    const-string/jumbo v5, "[onDataReceive] error."

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v6, v6, Lc8/bO;->rc:Lc8/cO;

    iget-object v6, v6, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v7, v12, [Ljava/lang/Object;

    invoke-static {v4, v5, v6, v1, v7}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onFinish(ILjava/lang/String;Lanet/channel/statist/RequestStatistic;)V
    .locals 9
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "rs"    # Lanet/channel/statist/RequestStatistic;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 331
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    invoke-virtual {v1}, Lc8/cO;->cancelTimeoutTask()V

    .line 337
    invoke-static {v6}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    const-string/jumbo v1, "anet.NetworkTask"

    const-string/jumbo v2, "[onFinish]"

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string/jumbo v5, "code"

    aput-object v5, v4, v7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    const-string/jumbo v5, "msg"

    aput-object v5, v4, v6

    const/4 v5, 0x3

    aput-object p2, v4, v5

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_1
    if-gez p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->isAllowRetry()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v1}, Lc8/HN;->retryRequest()V

    .line 344
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v2, v1, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 345
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    new-instance v2, Lc8/bO;

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->cache:Lc8/kN;

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    invoke-direct {v2, v3, v4, v5}, Lc8/bO;-><init>(Lc8/cO;Lc8/kN;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v2, v1, Lc8/cO;->runningTask:Lc8/ZN;

    .line 346
    invoke-virtual {p3, p1}, Lanet/channel/statist/RequestStatistic;->appendErrorTrace(I)V

    .line 355
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->runningTask:Lc8/ZN;

    invoke-static {v1}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 396
    :catch_0
    move-exception v1

    goto :goto_0

    .line 359
    :cond_2
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v1, v1, Lc8/bO;->statusCode:I

    if-nez v1, :cond_3

    .line 360
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iput p1, v1, Lc8/bO;->statusCode:I

    .line 363
    :cond_3
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v1, v1, Lc8/bO;->statusCode:I

    iput v1, p3, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 364
    iput-object p2, p3, Lanet/channel/statist/RequestStatistic;->msg:Ljava/lang/String;

    .line 365
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1, p3}, Lanetwork/channel/statist/StatisticData;->filledBy(Lanet/channel/statist/RequestStatistic;)V

    .line 368
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v1, v1, Lc8/bO;->statusCode:I

    const/16 v2, 0x130

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v1, :cond_7

    .line 369
    const-string/jumbo v1, "cache"

    iput-object v1, p3, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 370
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v1, 0xc8

    iget-object v2, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v2, v2, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0, v1, p2, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 375
    .local v0, "finishEvent":Lanetwork/channel/aidl/DefaultFinishEvent;
    :goto_1
    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v1, v1, Lc8/bO;->rc:Lc8/cO;

    iget-object v1, v1, Lc8/cO;->callback:Lc8/NN;

    invoke-interface {v1, v0}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 377
    const/4 v1, 0x2

    invoke-static {v1}, Lc8/KL;->isPrintLog(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 378
    const-string/jumbo v1, "anet.NetworkTask"

    iget-object v2, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v2, v2, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v2}, Lanetwork/channel/statist/StatisticData;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    :cond_4
    const/16 v1, -0xc8

    if-eq p1, v1, :cond_5

    .line 382
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v1

    invoke-interface {v1, p3}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    .line 385
    :cond_5
    if-ltz p1, :cond_6

    .line 386
    invoke-static {}, Lc8/UJ;->getInstance()Lc8/UJ;

    move-result-object v1

    iget-wide v2, p3, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v4, p3, Lanet/channel/statist/RequestStatistic;->start:J

    iget-wide v6, p3, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    add-long/2addr v4, v6

    iget-wide v6, p3, Lanet/channel/statist/RequestStatistic;->recDataSize:J

    invoke-virtual/range {v1 .. v7}, Lc8/UJ;->onDataReceived(JJJ)V

    .line 389
    :cond_6
    invoke-static {}, Lc8/JJ;->getInstance()Lc8/HJ;

    move-result-object v1

    new-instance v2, Lc8/GJ;

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->f_refer:Ljava/lang/String;

    invoke-direct {v2, v3, p3}, Lc8/GJ;-><init>(Ljava/lang/String;Lanet/channel/statist/RequestStatistic;)V

    invoke-interface {v1, v2}, Lc8/HJ;->commitFlow(Lc8/GJ;)V

    .line 390
    invoke-static {}, Lc8/TN;->getNetworkStat()Lc8/SN;

    move-result-object v1

    iget-object v2, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v2, v2, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v2}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-interface {v1, v2, v3}, Lc8/SN;->put(Ljava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    .line 392
    invoke-static {}, Lc8/WN;->getIntance()Lc8/WN;

    move-result-object v1

    iget-object v2, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-virtual {v2}, Lc8/eK;->getHttpUrl()Lc8/XL;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lc8/WN;->updateReqTimes(Lc8/XL;J)V

    goto/16 :goto_0

    .line 372
    .end local v0    # "finishEvent":Lanetwork/channel/aidl/DefaultFinishEvent;
    :cond_7
    new-instance v0, Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v1, v1, Lc8/bO;->statusCode:I

    iget-object v2, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v2, v2, Lc8/bO;->rc:Lc8/cO;

    iget-object v2, v2, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v0, v1, p2, v2}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0    # "finishEvent":Lanetwork/channel/aidl/DefaultFinishEvent;
    goto/16 :goto_1
.end method

.method public onResponseCode(ILjava/util/Map;)V
    .locals 12
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 236
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    invoke-static {v10}, Lc8/KL;->isPrintLog(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 241
    const-string/jumbo v3, "anet.NetworkTask"

    const-string/jumbo v4, "onResponseCode"

    iget-object v5, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-virtual {v5}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "code"

    aput-object v7, v6, v8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    const-string/jumbo v3, "anet.NetworkTask"

    const-string/jumbo v4, "onResponseCode"

    iget-object v5, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-virtual {v5}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "headers"

    aput-object v7, v6, v8

    aput-object p2, v6, v9

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    :cond_2
    iget-object v3, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-static {v3, p1}, Lc8/RL;->checkRedirect(Lc8/eK;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    const-string/jumbo v3, "Location"

    invoke-static {p2, v3}, Lc8/RL;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, "location":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 249
    invoke-static {v2}, Lc8/XL;->parse(Ljava/lang/String;)Lc8/XL;

    move-result-object v1

    .line 250
    .local v1, "httpUrl":Lc8/XL;
    if-eqz v1, :cond_4

    .line 251
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 252
    invoke-virtual {v1}, Lc8/XL;->scheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 253
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v3

    invoke-virtual {v1}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v11}, Lc8/MK;->getSchemeByHost(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc8/XL;->setScheme(Ljava/lang/String;)V

    .line 255
    :cond_3
    invoke-virtual {v1}, Lc8/XL;->lockScheme()V

    .line 256
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v3, v1}, Lc8/HN;->redirectToUrl(Lc8/XL;)V

    .line 257
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v4, v4, Lc8/bO;->rc:Lc8/cO;

    iget-object v4, v4, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v4}, Lc8/HN;->getHttpUrl()Lc8/XL;

    move-result-object v4

    invoke-virtual {v4}, Lc8/XL;->host()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    .line 258
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v4, v3, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 259
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    new-instance v4, Lc8/bO;

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->rc:Lc8/cO;

    invoke-direct {v4, v5, v11, v11}, Lc8/bO;-><init>(Lc8/cO;Lc8/kN;Lanetwork/channel/cache/Cache$Entry;)V

    iput-object v4, v3, Lc8/cO;->runningTask:Lc8/ZN;

    .line 260
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->runningTask:Lc8/ZN;

    invoke-static {v3, v8}, Lc8/EL;->submitPriorityTask(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    goto/16 :goto_0

    .line 264
    :cond_4
    const-string/jumbo v3, "anet.NetworkTask"

    const-string/jumbo v4, "redirect url is invalid!"

    iget-object v5, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-virtual {v5}, Lc8/eK;->getSeq()Ljava/lang/String;

    move-result-object v5

    new-array v6, v10, [Ljava/lang/Object;

    const-string/jumbo v7, "redirect url"

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    invoke-static {v3, v4, v5, v6}, Lc8/KL;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    .end local v1    # "httpUrl":Lc8/XL;
    .end local v2    # "location":Ljava/lang/String;
    :cond_5
    :try_start_0
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    invoke-virtual {v3}, Lc8/cO;->cancelTimeoutTask()V

    .line 271
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iput p1, v3, Lc8/bO;->statusCode:I

    .line 272
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v3}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lc8/rN;->setCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 273
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    invoke-static {p2}, Lc8/RL;->parseContentLength(Ljava/util/Map;)I

    move-result v4

    iput v4, v3, Lc8/bO;->contentLength:I

    .line 275
    const/16 v3, 0x130

    if-ne p1, v3, :cond_6

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v3, :cond_6

    .line 276
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v3, v3, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 277
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->callback:Lc8/NN;

    const/16 v4, 0xc8

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, v5, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Lc8/NN;->onResponseCode(ILjava/util/Map;)V

    .line 278
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->callback:Lc8/NN;

    const/4 v4, 0x1

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v5, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v5, v5

    iget-object v6, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v6, v6, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    iget-object v6, v6, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v6}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lc8/NN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "anet.NetworkTask"

    const-string/jumbo v4, "[onResponseCode] error."

    iget-object v5, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v5, v5, Lc8/bO;->rc:Lc8/cO;

    iget-object v5, v5, Lc8/cO;->seqNum:Ljava/lang/String;

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v0, v6}, Lc8/KL;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 280
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    :try_start_1
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->cache:Lc8/kN;

    if-eqz v3, :cond_7

    const-string/jumbo v3, "GET"

    iget-object v4, p0, Lc8/aO;->val$request:Lc8/eK;

    invoke-virtual {v4}, Lc8/eK;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 281
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    invoke-static {p2}, Lc8/lN;->parseCacheHeaders(Ljava/util/Map;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v4

    iput-object v4, v3, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    .line 282
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->entry:Lanetwork/channel/cache/Cache$Entry;

    if-eqz v3, :cond_7

    .line 283
    const-string/jumbo v3, "Cache-Control"

    invoke-static {p2, v3}, Lc8/RL;->removeHeaderFiledByKey(Ljava/util/Map;Ljava/lang/String;)V

    .line 284
    const-string/jumbo v3, "Cache-Control"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "no-store"

    aput-object v6, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v4, p0, Lc8/aO;->this$0:Lc8/bO;

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v3, v3, Lc8/bO;->contentLength:I

    if-eqz v3, :cond_8

    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget v3, v3, Lc8/bO;->contentLength:I

    :goto_1
    invoke-direct {v5, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v5, v4, Lc8/bO;->cacheBuffer:Ljava/io/ByteArrayOutputStream;

    .line 288
    :cond_7
    iget-object v3, p0, Lc8/aO;->this$0:Lc8/bO;

    iget-object v3, v3, Lc8/bO;->rc:Lc8/cO;

    iget-object v3, v3, Lc8/cO;->callback:Lc8/NN;

    invoke-interface {v3, p1, p2}, Lc8/NN;->onResponseCode(ILjava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 285
    :cond_8
    const/16 v3, 0x1400

    goto :goto_1
.end method
