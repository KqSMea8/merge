.class public Lc8/XN;
.super Ljava/lang/Object;
.source "CacheTask.java"

# interfaces
.implements Lc8/ZN;


# static fields
.field private static final TAG:Ljava/lang/String; = "anet.CacheTask"


# instance fields
.field private cache:Lc8/kN;

.field private volatile isCanceled:Z

.field private rc:Lc8/cO;


# direct methods
.method public constructor <init>(Lc8/cO;Lc8/kN;)V
    .locals 1
    .param p1, "rc"    # Lc8/cO;
    .param p2, "cache"    # Lc8/kN;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lc8/XN;->rc:Lc8/cO;

    .line 17
    iput-object v0, p0, Lc8/XN;->cache:Lc8/kN;

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/XN;->isCanceled:Z

    .line 21
    iput-object p1, p0, Lc8/XN;->rc:Lc8/cO;

    .line 22
    iput-object p2, p0, Lc8/XN;->cache:Lc8/kN;

    .line 23
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/XN;->isCanceled:Z

    .line 28
    iget-object v0, p0, Lc8/XN;->rc:Lc8/cO;

    iget-object v0, v0, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v0}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 29
    return-void
.end method

.method public run()V
    .locals 18

    .prologue
    .line 33
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lc8/XN;->isCanceled:Z

    if-eqz v10, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v10}, Lc8/HN;->getStatistic()Lanet/channel/statist/RequestStatistic;

    move-result-object v8

    .line 38
    .local v8, "rs":Lanet/channel/statist/RequestStatistic;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v8, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long/2addr v10, v12

    iput-wide v10, v8, Lanet/channel/statist/RequestStatistic;->sendBeforeTime:J

    .line 40
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->cache:Lc8/kN;

    if-eqz v10, :cond_0

    .line 41
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->config:Lc8/HN;

    invoke-virtual {v10}, Lc8/HN;->getUrlString()Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "cacheKey":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 44
    .local v6, "cacheStart":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->cache:Lc8/kN;

    invoke-interface {v10, v4}, Lc8/kN;->get(Ljava/lang/String;)Lanetwork/channel/cache/Cache$Entry;

    move-result-object v5

    .line 45
    .local v5, "entry":Lanetwork/channel/cache/Cache$Entry;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 47
    .local v2, "cacheEnd":J
    sub-long v10, v2, v6

    iput-wide v10, v8, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    .line 49
    const/4 v10, 0x2

    invoke-static {v10}, Lc8/KL;->isPrintLog(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 50
    const-string/jumbo v11, "anet.CacheTask"

    const-string/jumbo v12, "read cache"

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v13, v10, Lc8/cO;->seqNum:Ljava/lang/String;

    const/16 v10, 0x8

    new-array v14, v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v15, "hit"

    aput-object v15, v14, v10

    const/4 v15, 0x1

    if-eqz v5, :cond_4

    const/4 v10, 0x1

    :goto_1
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v14, v15

    const/4 v10, 0x2

    const-string/jumbo v15, "cost"

    aput-object v15, v14, v10

    const/4 v10, 0x3

    iget-wide v0, v8, Lanet/channel/statist/RequestStatistic;->cacheTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v10

    const/4 v10, 0x4

    const-string/jumbo v15, "length"

    aput-object v15, v14, v10

    const/4 v15, 0x5

    if-eqz v5, :cond_5

    iget-object v10, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v10, v10

    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v14, v15

    const/4 v10, 0x6

    const-string/jumbo v15, "key"

    aput-object v15, v14, v10

    const/4 v10, 0x7

    aput-object v4, v14, v10

    invoke-static {v11, v12, v13, v14}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :cond_2
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lanetwork/channel/cache/Cache$Entry;->isFresh()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 55
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->isDone:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 56
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    invoke-virtual {v10}, Lc8/cO;->cancelTimeoutTask()V

    .line 58
    const/4 v10, 0x1

    iput v10, v8, Lanet/channel/statist/RequestStatistic;->ret:I

    .line 59
    const/16 v10, 0xc8

    iput v10, v8, Lanet/channel/statist/RequestStatistic;->statusCode:I

    .line 60
    const-string/jumbo v10, "cache"

    iput-object v10, v8, Lanet/channel/statist/RequestStatistic;->protocolType:Ljava/lang/String;

    .line 61
    iget-wide v10, v8, Lanet/channel/statist/RequestStatistic;->start:J

    sub-long v10, v2, v10

    iput-wide v10, v8, Lanet/channel/statist/RequestStatistic;->oneWayTime:J

    .line 62
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v10, v8}, Lanetwork/channel/statist/StatisticData;->filledBy(Lanet/channel/statist/RequestStatistic;)V

    .line 64
    const/4 v10, 0x2

    invoke-static {v10}, Lc8/KL;->isPrintLog(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 65
    const-string/jumbo v10, "anet.CacheTask"

    const-string/jumbo v11, "hit fresh cache"

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v12, v12, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const-string/jumbo v10, "anet.CacheTask"

    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v11, v11, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v11}, Lanetwork/channel/statist/StatisticData;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v12, v12, Lc8/cO;->seqNum:Ljava/lang/String;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-static {v10, v11, v12, v13}, Lc8/KL;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->callback:Lc8/NN;

    const/16 v11, 0xc8

    iget-object v12, v5, Lanetwork/channel/cache/Cache$Entry;->responseHeaders:Ljava/util/Map;

    invoke-interface {v10, v11, v12}, Lc8/NN;->onResponseCode(ILjava/util/Map;)V

    .line 71
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->callback:Lc8/NN;

    const/4 v11, 0x1

    iget-object v12, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    array-length v12, v12

    iget-object v13, v5, Lanetwork/channel/cache/Cache$Entry;->data:[B

    invoke-static {v13}, Lanet/channel/bytes/ByteArray;->wrap([B)Lanet/channel/bytes/ByteArray;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lc8/NN;->onDataReceiveSize(IILanet/channel/bytes/ByteArray;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v10, v10, Lc8/cO;->callback:Lc8/NN;

    new-instance v11, Lanetwork/channel/aidl/DefaultFinishEvent;

    const/16 v12, 0xc8

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/XN;->rc:Lc8/cO;

    iget-object v14, v14, Lc8/cO;->statisticData:Lanetwork/channel/statist/StatisticData;

    invoke-direct {v11, v12, v13, v14}, Lanetwork/channel/aidl/DefaultFinishEvent;-><init>(ILjava/lang/String;Lanetwork/channel/statist/StatisticData;)V

    invoke-interface {v10, v11}, Lc8/NN;->onFinish(Lanetwork/channel/aidl/DefaultFinishEvent;)V

    .line 75
    invoke-static {}, Lc8/qJ;->getInstance()Lc8/sJ;

    move-result-object v10

    invoke-interface {v10, v8}, Lc8/sJ;->commitStat(Lanet/channel/statist/StatObject;)V

    goto/16 :goto_0

    .line 50
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 79
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lc8/XN;->isCanceled:Z

    if-nez v10, :cond_0

    .line 83
    new-instance v9, Lc8/bO;

    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/XN;->cache:Lc8/kN;

    invoke-direct {v9, v10, v11, v5}, Lc8/bO;-><init>(Lc8/cO;Lc8/kN;Lanetwork/channel/cache/Cache$Entry;)V

    .line 84
    .local v9, "task":Lc8/bO;
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/XN;->rc:Lc8/cO;

    iput-object v9, v10, Lc8/cO;->runningTask:Lc8/ZN;

    .line 85
    invoke-virtual {v9}, Lc8/bO;->run()V

    goto/16 :goto_0
.end method
