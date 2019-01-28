.class public Lc8/dpb;
.super Ljava/lang/Object;
.source "WXHttpAdapter.java"

# interfaces
.implements Lc8/iM;
.implements Lc8/kM;
.implements Lc8/lM;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/epb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetworkListener"
.end annotation


# instance fields
.field private mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

.field private mHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNetworkTracker:Lc8/nxb;

.field private mOnHttpListener:Lc8/CVf;

.field private mStartRequestTime:J

.field private mUrl:Ljava/lang/String;

.field private mWXResponse:Lc8/SXf;

.field final synthetic this$0:Lc8/epb;


# direct methods
.method constructor <init>(Lc8/epb;Lc8/nxb;Lc8/SXf;Lc8/CVf;Ljava/lang/String;J)V
    .locals 2
    .param p1, "this$0"    # Lc8/epb;
    .param p2, "networkTracker"    # Lc8/nxb;
    .param p3, "response"    # Lc8/SXf;
    .param p4, "onHttpListener"    # Lc8/CVf;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "startRequestTime"    # J

    .prologue
    .line 422
    iput-object p1, p0, Lc8/dpb;->this$0:Lc8/epb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 423
    iput-object p2, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    .line 424
    iput-object p3, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    .line 425
    iput-object p4, p0, Lc8/dpb;->mOnHttpListener:Lc8/CVf;

    .line 426
    iput-object p5, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    .line 427
    iput-wide p6, p0, Lc8/dpb;->mStartRequestTime:J

    .line 428
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 429
    return-void
.end method

.method static synthetic access$200(Lc8/dpb;)Lc8/SXf;
    .locals 1
    .param p0, "x0"    # Lc8/dpb;

    .prologue
    .line 404
    iget-object v0, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    return-object v0
.end method

.method static synthetic access$300(Lc8/dpb;)Lc8/CVf;
    .locals 1
    .param p0, "x0"    # Lc8/dpb;

    .prologue
    .line 404
    iget-object v0, p0, Lc8/dpb;->mOnHttpListener:Lc8/CVf;

    return-object v0
.end method

.method private isMatchErrorUrl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 550
    const-string/jumbo v0, "err.tmall.com/error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "err.taobao.com/error"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 551
    :cond_0
    const/4 v0, 0x1

    .line 553
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onHttpFinish(Lc8/nM;)V
    .locals 14
    .param p1, "event"    # Lc8/nM;

    .prologue
    .line 450
    const-string/jumbo v10, "wx_user_intercept_error"

    iget-object v11, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v11, v11, Lc8/SXf;->statusCode:Ljava/lang/String;

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 451
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    if-eqz v10, :cond_0

    .line 452
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    iget-object v11, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v11, v11, Lc8/SXf;->errorMsg:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lc8/nxb;->onFailed(Ljava/lang/String;)V

    .line 455
    :cond_0
    const-string/jumbo v2, "false"

    .line 456
    .local v2, "cacheSwitch":Ljava/lang/String;
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v10

    invoke-virtual {v10}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 457
    invoke-static {}, Lc8/Fob;->getInstance()Lc8/Fob;

    move-result-object v10

    invoke-virtual {v10}, Lc8/Fob;->getConfigAdapter()Lc8/Hob;

    move-result-object v10

    const-string/jumbo v11, "weex_degrade_cache_switch"

    const-string/jumbo v12, "cache_switch"

    const-string/jumbo v13, "false"

    invoke-interface {v10, v11, v12, v13}, Lc8/Hob;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 459
    :cond_1
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_2

    iget-object v10, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v10}, Lc8/dpb;->isMatchErrorUrl(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v10

    if-lez v10, :cond_2

    .line 461
    :try_start_0
    invoke-static {}, Lc8/vB;->getInstance()Lc8/vB;

    move-result-object v10

    iget-object v11, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    iget-object v12, p0, Lc8/dpb;->mHeader:Ljava/util/Map;

    iget-object v13, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lc8/vB;->addMemoryCache(Ljava/lang/String;Ljava/util/Map;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    .end local v2    # "cacheSwitch":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_b

    iget-object v10, p0, Lc8/dpb;->mHeader:Ljava/util/Map;

    const-string/jumbo v11, "weex-cache"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    move-object v8, v10

    .line 497
    .local v8, "weexCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const/4 v5, 0x0

    .line 498
    .local v5, "processWeexCache":Z
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    .line 499
    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 500
    .local v7, "useWeexCache":Ljava/lang/String;
    const-string/jumbo v10, "true"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 501
    const/4 v5, 0x1

    .line 504
    .end local v7    # "useWeexCache":Ljava/lang/String;
    :cond_3
    if-eqz v5, :cond_c

    .line 506
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v10, v10, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v11, "throughWeexCache"

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 507
    .local v9, "weexCachePageMd5":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 508
    invoke-static {}, Lc8/Awb;->getInstance()Lc8/Awb;

    move-result-object v10

    iget-object v11, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    iget-object v12, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v12, v12, Lc8/SXf;->originalData:[B

    invoke-virtual {v10, v11, v9, v12}, Lc8/Awb;->cachePage(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 510
    :cond_4
    invoke-static {}, Lc8/Qwb;->getInstance()Lc8/Qwb;

    move-result-object v10

    iget-object v11, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    iget-object v12, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v12, v12, Lc8/SXf;->originalData:[B

    new-instance v13, Lc8/cpb;

    invoke-direct {v13, p0}, Lc8/cpb;-><init>(Lc8/dpb;)V

    invoke-virtual {v10, v11, v12, v13}, Lc8/Qwb;->processWeexCache(Ljava/lang/String;[BLc8/Pwb;)V

    .line 531
    .end local v9    # "weexCachePageMd5":Ljava/lang/String;
    :goto_2
    iget-object v10, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    if-eqz v10, :cond_5

    .line 533
    :try_start_1
    iget-object v10, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 534
    const/4 v10, 0x0

    iput-object v10, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 542
    :cond_5
    :goto_3
    return-void

    .line 463
    .end local v5    # "processWeexCache":Z
    .end local v8    # "weexCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "cacheSwitch":Ljava/lang/String;
    :catch_0
    move-exception v10

    const-string/jumbo v10, "TBWXHttpAdapter"

    const-string/jumbo v11, "Please join windvane dependency!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    .end local v2    # "cacheSwitch":Ljava/lang/String;
    :cond_6
    invoke-interface {p1}, Lc8/nM;->getStatisticData()Lanetwork/channel/statist/StatisticData;

    move-result-object v6

    .line 468
    .local v6, "statisticData":Lanetwork/channel/statist/StatisticData;
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    .line 471
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 472
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v10, v10, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v11, "requestType"

    const-string/jumbo v12, "network"

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v10, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 474
    .local v4, "originData":[B
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_9

    .line 475
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iput-object v4, v10, Lc8/SXf;->originalData:[B

    .line 476
    if-eqz v6, :cond_7

    .line 477
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v10, v10, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v11, "connectionType"

    iget-object v12, v6, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v10, v10, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v11, "pureNetworkTime"

    iget-wide v12, v6, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lc8/dpb;->mStartRequestTime:J

    sub-long v0, v10, v12

    .line 481
    .local v0, "actualNetworkTime":J
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v10, v10, Lc8/SXf;->extendParams:Ljava/util/Map;

    const-string/jumbo v11, "actualNetworkTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .end local v0    # "actualNetworkTime":J
    :goto_4
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    if-eqz v10, :cond_8

    .line 491
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    invoke-virtual {v10, v4}, Lc8/nxb;->onFinished([B)V

    .line 493
    :cond_8
    iget-object v10, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    invoke-static {v10, p1}, Lc8/cvb;->trackPrefetchCacheHitRatio(Ljava/lang/String;Lc8/nM;)V

    goto/16 :goto_0

    .line 482
    :cond_9
    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v10

    const/16 v11, 0x194

    if-ne v10, v11, :cond_a

    .line 483
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 484
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    const-string/jumbo v11, "404 NOT FOUND!"

    iput-object v11, v10, Lc8/SXf;->errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 486
    :cond_a
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    invoke-interface {p1}, Lc8/nM;->getHttpCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 487
    iget-object v10, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    invoke-interface {p1}, Lc8/nM;->getDesc()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v10, Lc8/SXf;->errorMsg:Ljava/lang/String;

    goto :goto_4

    .line 496
    .end local v4    # "originData":[B
    .end local v6    # "statisticData":Lanetwork/channel/statist/StatisticData;
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 527
    .restart local v5    # "processWeexCache":Z
    .restart local v8    # "weexCache":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    iget-object v10, p0, Lc8/dpb;->mOnHttpListener:Lc8/CVf;

    iget-object v11, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    invoke-interface {v10, v11}, Lc8/CVf;->onHttpFinish(Lc8/SXf;)V

    goto/16 :goto_2

    .line 535
    :catch_1
    move-exception v3

    .line 536
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v10, "TBWXHttpAdapter"

    invoke-static {v3}, Lc8/xgg;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    if-eqz v10, :cond_5

    .line 538
    iget-object v10, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc8/nxb;->onFailed(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private resetNetworkHeader(Lanetwork/channel/statist/StatisticData;)V
    .locals 4
    .param p1, "statisticData"    # Lanetwork/channel/statist/StatisticData;

    .prologue
    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v0, "statistics":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "cacheTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->cacheTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string/jumbo v1, "connectionType"

    iget-object v2, p1, Lanetwork/channel/statist/StatisticData;->connectionType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string/jumbo v1, "dataSpeed"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string/jumbo v1, "firstDataTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string/jumbo v1, "host"

    iget-object v2, p1, Lanetwork/channel/statist/StatisticData;->host:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string/jumbo v1, "ip_port"

    iget-object v2, p1, Lanetwork/channel/statist/StatisticData;->ip_port:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string/jumbo v1, "isRequestSuccess"

    iget-boolean v2, p1, Lanetwork/channel/statist/StatisticData;->isRequestSuccess:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string/jumbo v1, "isSSL"

    iget-boolean v2, p1, Lanetwork/channel/statist/StatisticData;->isSSL:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string/jumbo v1, "firstDataTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->firstDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string/jumbo v1, "dataSpeed"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->dataSpeed:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string/jumbo v1, "netStatSum"

    iget-object v2, p1, Lanetwork/channel/statist/StatisticData;->netStatSum:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    const-string/jumbo v1, "oneWayTime_ANet"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->oneWayTime_ANet:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string/jumbo v1, "postBodyTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->postBodyTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string/jumbo v1, "recDataTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->recDataTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    const-string/jumbo v1, "retryTime"

    iget v2, p1, Lanetwork/channel/statist/StatisticData;->retryTime:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    const-string/jumbo v1, "rtt"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->rtt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string/jumbo v1, "sendBeforeTime"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->sendBeforeTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    const-string/jumbo v1, "sendSize"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->sendSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string/jumbo v1, "serverRT"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->serverRT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string/jumbo v1, "totalSize"

    iget-wide v2, p1, Lanetwork/channel/statist/StatisticData;->totalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    const-string/jumbo v1, "resultCode"

    iget v2, p1, Lanetwork/channel/statist/StatisticData;->resultCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    return-void
.end method


# virtual methods
.method public onDataReceived(Lc8/oM;Ljava/lang/Object;)V
    .locals 4
    .param p1, "event"    # Lc8/oM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 558
    const-string/jumbo v0, "TBWXHttpAdapter"

    const-string/jumbo v1, "into--[onDataReceived]"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-nez p1, :cond_0

    .line 570
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    if-eqz v0, :cond_1

    .line 564
    iget-object v0, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    invoke-virtual {v0, p1}, Lc8/nxb;->onDataReceived(Lc8/oM;)V

    .line 567
    :cond_1
    const-string/jumbo v0, "TBWXHttpAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "into--[onDataReceived] dataLen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lc8/oM;->getSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-interface {p1}, Lc8/oM;->getBytedata()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1}, Lc8/oM;->getSize()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 569
    iget-object v0, p0, Lc8/dpb;->mOnHttpListener:Lc8/CVf;

    iget-object v1, p0, Lc8/dpb;->mByteArrayOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lc8/CVf;->onHttpResponseProgress(I)V

    goto :goto_0
.end method

.method public onFinished(Lc8/nM;Ljava/lang/Object;)V
    .locals 2
    .param p1, "event"    # Lc8/nM;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 433
    const-string/jumbo v0, "TBWXHttpAdapter"

    const-string/jumbo v1, "into--[onFinished]"

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p1}, Lc8/dpb;->onHttpFinish(Lc8/nM;)V

    .line 442
    return-void
.end method

.method public onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "code"    # I
    .param p3, "context"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 574
    .local p2, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v3, "TBWXHttpAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "into--[onResponseCode] code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    if-nez p2, :cond_0

    .line 577
    new-instance p2, Ljava/util/HashMap;

    .end local p2    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 579
    .restart local p2    # "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    iput-object p2, p0, Lc8/dpb;->mHeader:Ljava/util/Map;

    .line 580
    iget-object v3, p0, Lc8/dpb;->mOnHttpListener:Lc8/CVf;

    invoke-interface {v3, p1, p2}, Lc8/CVf;->onHeadersReceived(ILjava/util/Map;)V

    .line 581
    iget-object v3, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    if-eqz v3, :cond_2

    .line 582
    iget-object v3, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    invoke-virtual {v3, p1, p2}, Lc8/nxb;->onResponseCode(ILjava/util/Map;)V

    .line 583
    iget-object v3, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    instance-of v3, v3, Lc8/nxb;

    if-eqz v3, :cond_2

    .line 584
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 585
    .local v2, "statistic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v3, p0, Lc8/dpb;->this$0:Lc8/epb;

    invoke-static {v3}, Lc8/epb;->access$400(Lc8/epb;)Lc8/bpb;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 586
    iget-object v3, p0, Lc8/dpb;->this$0:Lc8/epb;

    invoke-static {v3}, Lc8/epb;->access$400(Lc8/epb;)Lc8/bpb;

    move-result-object v3

    iget-object v4, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lc8/bpb;->getRecord(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 588
    :cond_1
    iget-object v3, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    iget-object v3, v3, Lc8/SXf;->extendParams:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 589
    iget-object v3, p0, Lc8/dpb;->mNetworkTracker:Lc8/nxb;

    invoke-virtual {v3, v2}, Lc8/nxb;->onStatisticDataReceived(Ljava/util/Map;)V

    .line 593
    .end local v2    # "statistic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v3, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    const-string/jumbo v4, "wh_weex=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p2, :cond_6

    .line 594
    const-string/jumbo v3, "Content-Type"

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "Content-Type"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v1, v3

    .line 595
    .local v1, "contentTypeTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    const/4 v0, 0x0

    .line 596
    .local v0, "contentTypeStr":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 597
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 599
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 600
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "application/javascript"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 601
    :cond_4
    iget-object v3, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    const-string/jumbo v4, "wx_user_intercept_error"

    iput-object v4, v3, Lc8/SXf;->statusCode:Ljava/lang/String;

    .line 602
    iget-object v3, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    const-string/jumbo v4, "wx_user_intercept_error"

    iput-object v4, v3, Lc8/SXf;->errorCode:Ljava/lang/String;

    .line 603
    iget-object v3, p0, Lc8/dpb;->mWXResponse:Lc8/SXf;

    const-string/jumbo v4, "degradeToH5"

    iput-object v4, v3, Lc8/SXf;->errorMsg:Ljava/lang/String;

    .line 606
    :cond_5
    const-string/jumbo v3, "TBWXHttpAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Content-Type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string/jumbo v3, "TBWXHttpAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/dpb;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    .end local v0    # "contentTypeStr":Ljava/lang/String;
    .end local v1    # "contentTypeTemp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    const/4 v3, 0x1

    return v3

    .line 594
    :cond_7
    const-string/jumbo v3, "content-type"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    move-object v1, v3

    goto :goto_0
.end method
