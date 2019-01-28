.class public Lc8/pPp;
.super Ljava/lang/Object;
.source "MtopStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nPp;,
        Lc8/oPp;
    }
.end annotation


# static fields
.field private static final MTOP_EXCEPTIONS_MONITOR_POINT:Ljava/lang/String; = "mtopExceptions"

.field private static final MTOP_STATS_MODULE:Ljava/lang/String; = "mtopsdk"

.field private static final MTOP_STATS_MONITOR_POINT:Ljava/lang/String; = "mtopStats"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopStatistics"

.field private static volatile isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public apiKey:Ljava/lang/String;

.field public backGround:Z

.field public buildParamsTime:J

.field public cacheCostTime:J

.field public cacheHitType:I

.field public cacheResponseParseEndTime:J

.field public cacheResponseParseStartTime:J

.field public cacheResponseParseTime:J

.field public cacheReturnTime:J

.field public cacheSwitch:I

.field public clientTraceId:Ljava/lang/String;

.field public commitStat:Z

.field public computeMiniWuaTime:J

.field public computeSignTime:J

.field public computeWuaTime:J

.field public domain:Ljava/lang/String;

.field protected endTime:J

.field public intSeqNo:I

.field public netSendEndTime:J

.field public netSendStartTime:J

.field public netStats:Lmtopsdk/network/domain/NetworkStats;

.field public netTotalTime:J

.field public pageName:Ljava/lang/String;

.field public pageUrl:Ljava/lang/String;

.field private rbStatData:Lc8/oPp;

.field public retCode:Ljava/lang/String;

.field public final seqNo:Ljava/lang/String;

.field public serverTraceId:Ljava/lang/String;

.field public startCallbackTime:J

.field public startExecuteTime:J

.field public startTime:J

.field protected statSum:Ljava/lang/String;

.field public statusCode:I

.field public totalTime:J

.field private uploadStats:Lc8/aPp;

.field public waitCallbackTime:J

.field public waitExecuteTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 209
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lc8/pPp;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>(Lc8/aPp;)V
    .locals 2
    .param p1, "uploadStats"    # Lc8/aPp;

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/pPp;->commitStat:Z

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lc8/pPp;->cacheHitType:I

    .line 166
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    .line 179
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/pPp;->apiKey:Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    .line 221
    invoke-static {}, Lc8/uMp;->createIntSeqNo()I

    move-result v0

    iput v0, p0, Lc8/pPp;->intSeqNo:I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MTOP"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lc8/pPp;->intSeqNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public constructor <init>(Lc8/aPp;Lmtopsdk/mtop/common/MtopNetworkProp;)V
    .locals 1
    .param p1, "uploadStats"    # Lc8/aPp;
    .param p2, "mtopProperty"    # Lmtopsdk/mtop/common/MtopNetworkProp;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lc8/pPp;-><init>(Lc8/aPp;)V

    .line 229
    if-eqz p2, :cond_0

    .line 230
    iget-object v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    iput-object v0, p0, Lc8/pPp;->pageName:Ljava/lang/String;

    .line 231
    iget-object v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    iput-object v0, p0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    .line 232
    iget-boolean v0, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->backGround:Z

    iput-boolean v0, p0, Lc8/pPp;->backGround:Z

    .line 234
    :cond_0
    return-void
.end method

.method private commitStatData()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 389
    iget-boolean v6, p0, Lc8/pPp;->commitStat:Z

    if-nez v6, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 393
    :cond_1
    sget-object v6, Lc8/pPp;->isRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 394
    invoke-direct {p0}, Lc8/pPp;->registerMtopStats()V

    .line 397
    :cond_2
    iget-object v6, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-eqz v6, :cond_0

    .line 402
    :try_start_0
    iget-object v6, p0, Lc8/pPp;->retCode:Ljava/lang/String;

    invoke-static {v6}, Lc8/iPp;->isSuccess(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 405
    .local v0, "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "api"

    iget-object v7, p0, Lc8/pPp;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string/jumbo v6, "ret"

    iget-object v7, p0, Lc8/pPp;->retCode:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string/jumbo v6, "httpResponseStatus"

    iget v7, p0, Lc8/pPp;->statusCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string/jumbo v6, "domain"

    iget-object v7, p0, Lc8/pPp;->domain:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string/jumbo v6, "cacheSwitch"

    iget v7, p0, Lc8/pPp;->cacheSwitch:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string/jumbo v6, "cacheHitType"

    iget v7, p0, Lc8/pPp;->cacheHitType:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string/jumbo v6, "clientTraceId"

    iget-object v7, p0, Lc8/pPp;->clientTraceId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string/jumbo v6, "serverTraceId"

    iget-object v7, p0, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string/jumbo v6, "pageName"

    iget-object v7, p0, Lc8/pPp;->pageName:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string/jumbo v6, "pageUrl"

    iget-object v7, p0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string/jumbo v6, "backGround"

    iget-boolean v7, p0, Lc8/pPp;->backGround:Z

    if-eqz v7, :cond_7

    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    invoke-virtual {p0}, Lc8/pPp;->getNetworkStats()Lmtopsdk/network/domain/NetworkStats;

    move-result-object v3

    .line 418
    .local v3, "netStats":Lmtopsdk/network/domain/NetworkStats;
    if-eqz v3, :cond_3

    .line 419
    const-string/jumbo v4, "connType"

    iget-object v6, v3, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v6, "isSSL"

    iget-boolean v4, v3, Lmtopsdk/network/domain/NetworkStats;->isSSL:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "1"

    :goto_2
    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v4, "retryTimes"

    iget v6, v3, Lmtopsdk/network/domain/NetworkStats;->retryTimes:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 426
    .local v2, "measures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const-string/jumbo v4, "totalTime"

    iget-wide v6, p0, Lc8/pPp;->totalTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string/jumbo v4, "networkExeTime"

    iget-wide v6, p0, Lc8/pPp;->netTotalTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string/jumbo v4, "cacheCostTime"

    iget-wide v6, p0, Lc8/pPp;->cacheCostTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string/jumbo v4, "cacheResponseParseTime"

    iget-wide v6, p0, Lc8/pPp;->cacheResponseParseTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string/jumbo v4, "waitExecuteTime"

    iget-wide v6, p0, Lc8/pPp;->waitExecuteTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string/jumbo v4, "waitCallbackTime"

    iget-wide v6, p0, Lc8/pPp;->waitCallbackTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string/jumbo v4, "signTime"

    iget-wide v6, p0, Lc8/pPp;->computeSignTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string/jumbo v4, "wuaTime"

    iget-wide v6, p0, Lc8/pPp;->computeWuaTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string/jumbo v4, "miniWuaTime"

    iget-wide v6, p0, Lc8/pPp;->computeMiniWuaTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    if-eqz v3, :cond_4

    .line 437
    const-string/jumbo v4, "firstDataTime"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->firstDataTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string/jumbo v4, "recDataTime"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->recDataTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    const-string/jumbo v4, "oneWayTime_ANet"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    const-string/jumbo v4, "serverRT"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string/jumbo v4, "revSize"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string/jumbo v4, "dataSpeed"

    iget-wide v6, v3, Lmtopsdk/network/domain/NetworkStats;->dataSpeed:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    :cond_4
    iget-object v4, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    if-eqz v4, :cond_5

    .line 446
    const-string/jumbo v4, "rbReqTime"

    iget-object v6, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    iget-wide v6, v6, Lc8/oPp;->rbReqTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v4, "toMainThTime"

    iget-object v6, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    iget-wide v6, v6, Lc8/oPp;->toMainThTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v4, "mtopJsonParseTime"

    iget-object v6, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    iget-wide v6, v6, Lc8/oPp;->jsonParseTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const-string/jumbo v4, "mtopReqTime"

    iget-object v6, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    iget-wide v6, v6, Lc8/oPp;->mtopReqTime:J

    long-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_5
    iget-object v4, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-eqz v4, :cond_6

    .line 452
    iget-object v4, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    const-string/jumbo v6, "mtopsdk"

    const-string/jumbo v7, "mtopStats"

    invoke-interface {v4, v6, v7, v0, v2}, Lc8/aPp;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    .end local v2    # "measures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v3    # "netStats":Lmtopsdk/network/domain/NetworkStats;
    :cond_6
    :goto_3
    iput-boolean v5, p0, Lc8/pPp;->commitStat:Z

    goto/16 :goto_0

    :cond_7
    move v4, v5

    .line 415
    goto/16 :goto_1

    .line 420
    .restart local v3    # "netStats":Lmtopsdk/network/domain/NetworkStats;
    :cond_8
    :try_start_1
    const-string/jumbo v4, "0"

    goto/16 :goto_2

    .line 457
    .end local v0    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "netStats":Lmtopsdk/network/domain/NetworkStats;
    :cond_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 458
    .restart local v0    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "api"

    iget-object v7, p0, Lc8/pPp;->apiKey:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    const-string/jumbo v6, "ret"

    iget-object v7, p0, Lc8/pPp;->retCode:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string/jumbo v6, "httpResponseStatus"

    iget v7, p0, Lc8/pPp;->statusCode:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const-string/jumbo v6, "domain"

    iget-object v7, p0, Lc8/pPp;->domain:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string/jumbo v6, "refer"

    iget-object v7, p0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string/jumbo v6, "clientTraceId"

    iget-object v7, p0, Lc8/pPp;->clientTraceId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string/jumbo v6, "serverTraceId"

    iget-object v7, p0, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string/jumbo v6, "pageName"

    iget-object v7, p0, Lc8/pPp;->pageName:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string/jumbo v6, "pageUrl"

    iget-object v7, p0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    const-string/jumbo v6, "backGround"

    iget-boolean v7, p0, Lc8/pPp;->backGround:Z

    if-eqz v7, :cond_a

    :goto_4
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v4, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-eqz v4, :cond_6

    .line 470
    iget-object v4, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    const-string/jumbo v6, "mtopsdk"

    const-string/jumbo v7, "mtopExceptions"

    const/4 v8, 0x0

    invoke-interface {v4, v6, v7, v0, v8}, Lc8/aPp;->onCommit(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 473
    .end local v0    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 474
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    const-string/jumbo v4, "mtopsdk.MtopStatistics"

    iget-object v6, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[commitStatData] commit mtopStats error ---"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 476
    iput-boolean v5, p0, Lc8/pPp;->commitStat:Z

    goto/16 :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    .restart local v0    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    move v4, v5

    .line 467
    goto :goto_4

    .line 476
    .end local v0    # "dimensions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    iput-boolean v5, p0, Lc8/pPp;->commitStat:Z

    throw v4
.end method

.method private registerMtopStats()V
    .locals 12

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-nez v0, :cond_0

    .line 523
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    iget-object v1, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v2, "[registerMtopStats]register MtopStats error, uploadStats=null"

    invoke-static {v0, v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    :goto_0
    return-void

    .line 527
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 528
    .local v3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "api"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 529
    const-string/jumbo v0, "domain"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 530
    const-string/jumbo v0, "httpResponseStatus"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 531
    const-string/jumbo v0, "ret"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 532
    const-string/jumbo v0, "cacheSwitch"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 533
    const-string/jumbo v0, "cacheHitType"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 534
    const-string/jumbo v0, "clientTraceId"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 535
    const-string/jumbo v0, "serverTraceId"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 536
    const-string/jumbo v0, "connType"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 537
    const-string/jumbo v0, "isSSL"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 538
    const-string/jumbo v0, "retryTimes"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 539
    const-string/jumbo v0, "pageName"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 540
    const-string/jumbo v0, "pageUrl"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 541
    const-string/jumbo v0, "backGround"

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 546
    .local v4, "measures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "totalTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 547
    const-string/jumbo v0, "networkExeTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    const-string/jumbo v0, "cacheCostTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    const-string/jumbo v0, "cacheResponseParseTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 552
    const-string/jumbo v0, "waitExecuteTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 553
    const-string/jumbo v0, "waitCallbackTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    const-string/jumbo v0, "signTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    const-string/jumbo v0, "wuaTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    const-string/jumbo v0, "miniWuaTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    const-string/jumbo v0, "rbReqTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 560
    const-string/jumbo v0, "toMainThTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 561
    const-string/jumbo v0, "mtopJsonParseTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 562
    const-string/jumbo v0, "mtopReqTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    const-string/jumbo v0, "firstDataTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 565
    const-string/jumbo v0, "recDataTime"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 566
    const-string/jumbo v0, "revSize"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    const-string/jumbo v0, "dataSpeed"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    const-string/jumbo v0, "oneWayTime_ANet"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 569
    const-string/jumbo v0, "serverRT"

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 572
    iget-object v0, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-eqz v0, :cond_1

    .line 573
    iget-object v0, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    const-string/jumbo v1, "mtopsdk"

    const-string/jumbo v2, "mtopStats"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lc8/aPp;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 577
    :cond_1
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 578
    .local v8, "dimens":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v0, "api"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    const-string/jumbo v0, "domain"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    const-string/jumbo v0, "ret"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    const-string/jumbo v0, "httpResponseStatus"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 582
    const-string/jumbo v0, "refer"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 583
    const-string/jumbo v0, "clientTraceId"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 584
    const-string/jumbo v0, "serverTraceId"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 585
    const-string/jumbo v0, "pageName"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 586
    const-string/jumbo v0, "pageUrl"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 587
    const-string/jumbo v0, "backGround"

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object v0, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    if-eqz v0, :cond_2

    .line 589
    iget-object v5, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    const-string/jumbo v6, "mtopsdk"

    const-string/jumbo v7, "mtopExceptions"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lc8/aPp;->onRegister(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;Z)V

    .line 591
    :cond_2
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    iget-object v1, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[registerMtopStats]register MtopStats executed.uploadStats="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lc8/pPp;->uploadStats:Lc8/aPp;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 593
    .end local v3    # "dimensions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "measures":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "dimens":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_0
    move-exception v11

    .line 594
    .local v11, "e":Ljava/lang/Throwable;
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    iget-object v1, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[registerMtopStats] register MtopStats error ---"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public commitStatData(Z)V
    .locals 0
    .param p1, "commitStat"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lc8/pPp;->commitStat:Z

    .line 382
    invoke-direct {p0}, Lc8/pPp;->commitStatData()V

    .line 383
    return-void
.end method

.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 238
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNetStat()Lanetwork/channel/statist/StatisticData;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "statisticData":Lanetwork/channel/statist/StatisticData;
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    if-eqz v1, :cond_0

    .line 351
    new-instance v0, Lanetwork/channel/statist/StatisticData;

    .end local v0    # "statisticData":Lanetwork/channel/statist/StatisticData;
    invoke-direct {v0}, Lanetwork/channel/statist/StatisticData;-><init>()V

    .line 352
    .restart local v0    # "statisticData":Lanetwork/channel/statist/StatisticData;
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-boolean v1, v1, Lmtopsdk/network/domain/NetworkStats;->isRequestSuccess:Z

    iput-boolean v1, v0, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    .line 353
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->connectionType:Ljava/lang/String;

    iput-object v1, v0, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    .line 354
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v2, v1, Lmtopsdk/network/domain/NetworkStats;->oneWayTime_ANet:J

    iput-wide v2, v0, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    .line 355
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v2, v1, Lmtopsdk/network/domain/NetworkStats;->serverRT:J

    iput-wide v2, v0, Lanetwork/channel/statist/StatisticData;->serverRT:J

    .line 356
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-wide v2, v1, Lmtopsdk/network/domain/NetworkStats;->recvSize:J

    iput-wide v2, v0, Lanetwork/channel/statist/StatisticData;->totalSize:J

    .line 358
    :cond_0
    return-object v0
.end method

.method public getNetworkStats()Lmtopsdk/network/domain/NetworkStats;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    return-object v0
.end method

.method public declared-synchronized getRbStatData()Lc8/oPp;
    .locals 2

    .prologue
    .line 503
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Lc8/oPp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/oPp;-><init>(Lc8/pPp;Lc8/nPp;)V

    iput-object v0, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    .line 506
    :cond_0
    iget-object v0, p0, Lc8/pPp;->rbStatData:Lc8/oPp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatSum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    if-eqz v0, :cond_1

    .line 367
    const-string/jumbo v0, ""

    iget-object v1, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    invoke-virtual {v0}, Lc8/oPp;->getStatSum()Ljava/lang/String;

    move-result-object v0

    .line 373
    :goto_0
    return-object v0

    .line 370
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    invoke-virtual {v1}, Lc8/oPp;->getStatSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    iget-object v0, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 362
    iget-wide v0, p0, Lc8/pPp;->totalTime:J

    return-wide v0
.end method

.method public onEndAndCommit()V
    .locals 8

    .prologue
    const-wide/16 v4, 0x0

    .line 290
    invoke-virtual {p0}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/pPp;->endTime:J

    .line 293
    iget-wide v2, p0, Lc8/pPp;->endTime:J

    iget-wide v6, p0, Lc8/pPp;->startTime:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lc8/pPp;->totalTime:J

    .line 294
    iget-wide v2, p0, Lc8/pPp;->startExecuteTime:J

    iget-wide v6, p0, Lc8/pPp;->startTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_3

    iget-wide v2, p0, Lc8/pPp;->startExecuteTime:J

    iget-wide v6, p0, Lc8/pPp;->startTime:J

    sub-long/2addr v2, v6

    :goto_0
    iput-wide v2, p0, Lc8/pPp;->waitExecuteTime:J

    .line 295
    iget-wide v2, p0, Lc8/pPp;->cacheReturnTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-wide v2, p0, Lc8/pPp;->cacheReturnTime:J

    iget-wide v6, p0, Lc8/pPp;->startTime:J

    sub-long/2addr v2, v6

    :goto_1
    iput-wide v2, p0, Lc8/pPp;->cacheCostTime:J

    .line 296
    iget-wide v2, p0, Lc8/pPp;->cacheResponseParseEndTime:J

    iget-wide v6, p0, Lc8/pPp;->cacheResponseParseStartTime:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lc8/pPp;->cacheResponseParseTime:J

    .line 297
    iget-wide v2, p0, Lc8/pPp;->netSendEndTime:J

    iget-wide v6, p0, Lc8/pPp;->netSendStartTime:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lc8/pPp;->netTotalTime:J

    .line 298
    iget-wide v2, p0, Lc8/pPp;->startCallbackTime:J

    iget-wide v6, p0, Lc8/pPp;->netSendEndTime:J

    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    iget-wide v2, p0, Lc8/pPp;->startCallbackTime:J

    iget-wide v4, p0, Lc8/pPp;->netSendEndTime:J

    sub-long v4, v2, v4

    :cond_0
    iput-wide v4, p0, Lc8/pPp;->waitCallbackTime:J

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 301
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/pPp;->apiKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const-string/jumbo v1, ",httpResponseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/pPp;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    const-string/jumbo v1, ",retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/pPp;->retCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    const-string/jumbo v1, ",mtopTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 305
    const-string/jumbo v1, ",networkTotalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->netTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 306
    const-string/jumbo v1, ",waitExecuteTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->waitExecuteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 307
    const-string/jumbo v1, ",buildParamsTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->buildParamsTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 308
    const-string/jumbo v1, ",computeSignTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->computeSignTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v1, ",computeMiniWuaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->computeMiniWuaTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 310
    const-string/jumbo v1, ",computeWuaTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->computeWuaTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v1, ",waitCallbackTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->waitCallbackTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v1, ",cacheSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/pPp;->cacheSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 313
    const-string/jumbo v1, ",cacheHitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/pPp;->cacheHitType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string/jumbo v1, ",cacheCostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->cacheCostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 315
    const-string/jumbo v1, ",cacheResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->cacheResponseParseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    if-eqz v1, :cond_1

    .line 318
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->netStatSum:Ljava/lang/String;

    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 320
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    invoke-virtual {v1}, Lmtopsdk/network/domain/NetworkStats;->sumNetStat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    .line 327
    invoke-direct {p0}, Lc8/pPp;->commitStatData()V

    .line 328
    iget-object v1, p0, Lc8/pPp;->clientTraceId:Ljava/lang/String;

    iget-object v2, p0, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    invoke-static {v1, v2}, Lc8/BMp;->logTraceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 331
    const-string/jumbo v1, "mtopsdk.MtopStatistics"

    iget-object v2, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    invoke-virtual {p0}, Lc8/pPp;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_2
    return-void

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_3
    move-wide v2, v4

    .line 294
    goto/16 :goto_0

    :cond_4
    move-wide v2, v4

    .line 295
    goto/16 :goto_1

    .line 322
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    :cond_5
    iget-object v1, p0, Lc8/pPp;->netStats:Lmtopsdk/network/domain/NetworkStats;

    iget-object v1, v1, Lmtopsdk/network/domain/NetworkStats;->netStatSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 483
    .local v0, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "MtopStatistics "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[Detail]: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",startExecuteTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->startExecuteTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",cacheResponseParseStartTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->cacheResponseParseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",cacheResponseParseEndTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->cacheResponseParseEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",cacheReturnTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->cacheReturnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ",endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/pPp;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\n[Sumstat(ms)]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/pPp;->statSum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    iget-object v1, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    if-eqz v1, :cond_0

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\nrbStatData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/pPp;->rbStatData:Lc8/oPp;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
