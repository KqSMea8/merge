.class public Lc8/COp;
.super Ljava/lang/Object;
.source "MtopBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBuilder"


# instance fields
.field public listener:Lc8/QNp;

.field protected mtopInstance:Lc8/AOp;

.field public final mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public request:Lmtopsdk/mtop/domain/MtopRequest;

.field public requestContext:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected stat:Lc8/pPp;


# direct methods
.method public constructor <init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V
    .locals 1
    .param p1, "mtopInstance"    # Lc8/AOp;
    .param p2, "mtopData"    # Lc8/dOp;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p2}, Lc8/jPp;->inputDoToMtopRequest(Lc8/dOp;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lc8/COp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>(Lc8/AOp;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "mtopInstance"    # Lc8/AOp;
    .param p2, "inputDo"    # Ljava/lang/Object;
    .param p3, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    invoke-static {p2}, Lc8/jPp;->inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lc8/COp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 3
    .param p1, "mtopInstance"    # Lc8/AOp;
    .param p2, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p3, "ttid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 62
    iput-object v1, p0, Lc8/COp;->listener:Lc8/QNp;

    .line 70
    iput-object v1, p0, Lc8/COp;->requestContext:Ljava/lang/Object;

    .line 76
    iput-object v1, p0, Lc8/COp;->stat:Lc8/pPp;

    .line 100
    iput-object p1, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    .line 101
    iput-object p2, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 102
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p3, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const-string/jumbo v1, "PageName"

    invoke-static {v1}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageName:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const-string/jumbo v1, "PageUrl"

    invoke-static {v1}, Lc8/rQp;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-static {}, Lc8/rQp;->isAppBackground()Z

    move-result v1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->backGround:Z

    .line 106
    new-instance v0, Lc8/pPp;

    invoke-virtual {p1}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v1

    iget-object v1, v1, Lc8/kOp;->uploadStats:Lc8/aPp;

    iget-object v2, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0, v1, v2}, Lc8/pPp;-><init>(Lc8/aPp;Lmtopsdk/mtop/common/MtopNetworkProp;)V

    iput-object v0, p0, Lc8/COp;->stat:Lc8/pPp;

    .line 108
    return-void
.end method

.method public constructor <init>(Lc8/dOp;Ljava/lang/String;)V
    .locals 1
    .param p1, "mtopData"    # Lc8/dOp;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Lc8/dOp;Ljava/lang/String;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputDo"    # Ljava/lang/Object;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 1
    .param p1, "request"    # Lmtopsdk/mtop/domain/MtopRequest;
    .param p2, "ttid"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lc8/AOp;->instance(Landroid/content/Context;)Lc8/AOp;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lc8/COp;-><init>(Lc8/AOp;Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method private asyncRequest(Lc8/QNp;)Lc8/ENp;
    .locals 7
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    const/4 v6, 0x0

    .line 551
    iget-object v2, p0, Lc8/COp;->stat:Lc8/pPp;

    iget-object v3, p0, Lc8/COp;->stat:Lc8/pPp;

    invoke-virtual {v3}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v2, Lc8/pPp;->startTime:J

    .line 552
    invoke-virtual {p0, p1}, Lc8/COp;->createMtopContext(Lc8/QNp;)Lc8/IMp;

    move-result-object v1

    .line 553
    .local v1, "mtopContext":Lc8/IMp;
    new-instance v2, Lc8/ENp;

    invoke-direct {v2, v6, v1}, Lc8/ENp;-><init>(Lc8/xPp;Lc8/IMp;)V

    iput-object v2, v1, Lc8/IMp;->apiId:Lc8/ENp;

    .line 555
    :try_start_0
    invoke-static {}, Lc8/uMp;->isMainThread()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v2}, Lc8/AOp;->isInited()Z

    move-result v2

    if-nez v2, :cond_1

    .line 556
    :cond_0
    invoke-static {}, Lc8/mPp;->getRequestThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lc8/BOp;

    invoke-direct {v3, p0, v1}, Lc8/BOp;-><init>(Lc8/COp;Lc8/IMp;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    :goto_0
    iget-object v2, v1, Lc8/IMp;->apiId:Lc8/ENp;

    :goto_1
    return-object v2

    .line 570
    :cond_1
    :try_start_1
    iget-object v2, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v2}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v2

    iget-object v0, v2, Lc8/kOp;->filterManager:Lc8/dNp;

    .line 571
    .local v0, "filterManager":Lc8/dNp;
    if-eqz v0, :cond_2

    .line 572
    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lc8/dNp;->start(Ljava/lang/String;Lc8/IMp;)V

    .line 574
    :cond_2
    invoke-static {v0, v1}, Lc8/jNp;->checkFilterManager(Lc8/dNp;Lc8/IMp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 577
    .end local v0    # "filterManager":Lc8/dNp;
    :catchall_0
    move-exception v2

    iget-object v2, v1, Lc8/IMp;->apiId:Lc8/ENp;

    goto :goto_1
.end method

.method private createListenerProxy(Lc8/QNp;)Lc8/SNp;
    .locals 2
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    .line 629
    if-nez p1, :cond_0

    .line 630
    new-instance v0, Lc8/SNp;

    new-instance v1, Lc8/FNp;

    invoke-direct {v1}, Lc8/FNp;-><init>()V

    invoke-direct {v0, v1}, Lc8/SNp;-><init>(Lc8/QNp;)V

    .line 636
    .local v0, "callback":Lc8/SNp;
    :goto_0
    return-object v0

    .line 631
    .end local v0    # "callback":Lc8/SNp;
    :cond_0
    instance-of v1, p1, Lc8/INp;

    if-eqz v1, :cond_1

    .line 632
    new-instance v0, Lc8/TNp;

    invoke-direct {v0, p1}, Lc8/TNp;-><init>(Lc8/QNp;)V

    .restart local v0    # "callback":Lc8/SNp;
    goto :goto_0

    .line 634
    .end local v0    # "callback":Lc8/SNp;
    :cond_1
    new-instance v0, Lc8/SNp;

    invoke-direct {v0, p1}, Lc8/SNp;-><init>(Lc8/QNp;)V

    .restart local v0    # "callback":Lc8/SNp;
    goto :goto_0
.end method


# virtual methods
.method public addCacheKeyParamBlackList(Ljava/util/List;)Lc8/COp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/COp;"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 371
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .line 373
    :cond_0
    return-object p0
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 286
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    :cond_0
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    const-string/jumbo v0, "mtopsdk.MtopBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[addHttpQueryParameter]add HttpQueryParameter error,key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_1
    :goto_0
    return-object p0

    .line 293
    :cond_2
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    .line 296
    :cond_3
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addListener(Lc8/QNp;)Lc8/COp;
    .locals 0
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    .line 255
    iput-object p1, p0, Lc8/COp;->listener:Lc8/QNp;

    .line 256
    return-object p0
.end method

.method public addMteeUa(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "mteeUa"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string/jumbo v0, "ua"

    invoke-virtual {p0, v0, p1}, Lc8/COp;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    .line 275
    return-object p0
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 2
    .param p1, "openAppKey"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 398
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    .line 399
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    .line 401
    return-object p0
.end method

.method public asyncRequest()Lc8/ENp;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lc8/COp;->listener:Lc8/QNp;

    invoke-direct {p0, v0}, Lc8/COp;->asyncRequest(Lc8/QNp;)Lc8/ENp;

    move-result-object v0

    return-object v0
.end method

.method public createMtopContext(Lc8/QNp;)Lc8/IMp;
    .locals 3
    .param p1, "listener"    # Lc8/QNp;

    .prologue
    .line 597
    new-instance v0, Lc8/IMp;

    invoke-direct {v0}, Lc8/IMp;-><init>()V

    .line 598
    .local v0, "mtopContext":Lc8/IMp;
    iget-object v1, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    iput-object v1, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 599
    iget-object v1, p0, Lc8/COp;->stat:Lc8/pPp;

    iput-object v1, v0, Lc8/IMp;->stats:Lc8/pPp;

    .line 600
    iget-object v1, p0, Lc8/COp;->stat:Lc8/pPp;

    iget-object v1, v1, Lc8/pPp;->seqNo:Ljava/lang/String;

    iput-object v1, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    .line 601
    iget-object v1, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iput-object v1, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 602
    iget-object v1, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v1, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 603
    iput-object p1, v0, Lc8/IMp;->mtopListener:Lc8/QNp;

    .line 604
    iput-object p0, v0, Lc8/IMp;->mtopBuilder:Lc8/COp;

    .line 606
    iget-object v1, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v1, :cond_0

    .line 607
    iget-object v1, p0, Lc8/COp;->stat:Lc8/pPp;

    iget-object v2, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lc8/pPp;->apiKey:Ljava/lang/String;

    .line 610
    :cond_0
    iget-object v1, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-static {v1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    iget-object v1, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v2, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v2}, Lc8/AOp;->getTtid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 614
    :cond_1
    iget-object v1, p0, Lc8/COp;->requestContext:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 615
    iget-object v1, p0, Lc8/COp;->requestContext:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lc8/COp;->reqContext(Ljava/lang/Object;)Lc8/COp;

    .line 617
    :cond_2
    return-object v0
.end method

.method public enableProgressListener()Lc8/COp;
    .locals 2

    .prologue
    .line 509
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->enableProgressListener:Z

    .line 510
    return-object p0
.end method

.method public forceRefreshCache()Lc8/COp;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    .line 326
    return-object p0
.end method

.method public getMtopInstance()Lc8/AOp;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lc8/COp;->mtopInstance:Lc8/AOp;

    return-object v0
.end method

.method public getReqContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lc8/COp;
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 307
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    .line 308
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lc8/COp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/COp;"
        }
    .end annotation

    .prologue
    .line 202
    .local p1, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 209
    :cond_0
    :goto_0
    return-object p0

    .line 206
    :cond_1
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    goto :goto_0
.end method

.method protected mtopCommitStatData(Z)V
    .locals 1
    .param p1, "commitStat"    # Z

    .prologue
    .line 643
    iget-object v0, p0, Lc8/COp;->stat:Lc8/pPp;

    iput-boolean p1, v0, Lc8/pPp;->commitStat:Z

    .line 644
    return-void
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lc8/COp;
    .locals 1
    .param p1, "protocol"    # Lmtopsdk/mtop/domain/ProtocolEnum;

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->protocol:Lmtopsdk/mtop/domain/ProtocolEnum;

    .line 233
    :cond_0
    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lc8/COp;
    .locals 1
    .param p1, "requestContext"    # Ljava/lang/Object;

    .prologue
    .line 170
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 171
    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lc8/COp;
    .locals 1
    .param p1, "method"    # Lmtopsdk/mtop/domain/MethodEnum;

    .prologue
    .line 357
    if-eqz p1, :cond_0

    .line 358
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->method:Lmtopsdk/mtop/domain/MethodEnum;

    .line 360
    :cond_0
    return-object p0
.end method

.method public retryTime(I)Lc8/COp;
    .locals 1
    .param p1, "retryTimes"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->retryTimes:I

    .line 195
    return-object p0
.end method

.method public setBizId(I)Lc8/COp;
    .locals 1
    .param p1, "bizId"    # I

    .prologue
    .line 438
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->bizId:I

    .line 439
    return-object p0
.end method

.method public setCacheControlNoCache()Lc8/COp;
    .locals 3

    .prologue
    .line 217
    iget-object v1, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 218
    .local v0, "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 219
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .restart local v0    # "requestHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "cache-control"

    const-string/jumbo v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v1, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object v0, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->requestHeaders:Ljava/util/Map;

    .line 223
    return-object p0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lc8/COp;
    .locals 1
    .param p1, "connTimeout"    # I

    .prologue
    .line 411
    if-lez p1, :cond_0

    .line 412
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    .line 415
    :cond_0
    return-object p0
.end method

.method public setCustomDomain(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "customDomain"    # Ljava/lang/String;

    .prologue
    .line 243
    if-eqz p1, :cond_0

    .line 244
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->customDomain:Ljava/lang/String;

    .line 246
    :cond_0
    return-object p0
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lc8/COp;
    .locals 2
    .param p1, "jsonTypeEnum"    # Lmtopsdk/mtop/domain/JsonTypeEnum;

    .prologue
    .line 383
    if-eqz p1, :cond_0

    .line 384
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/JsonTypeEnum;->getJsonType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lc8/COp;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;

    .line 386
    :cond_0
    return-object p0
.end method

.method public setNetInfo(I)Lc8/COp;
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    .line 265
    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lc8/COp;
    .locals 2
    .param p1, "pageUrl"    # Ljava/lang/String;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    .line 486
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-static {p1}, Lc8/uMp;->convertUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    .line 487
    iget-object v0, p0, Lc8/COp;->stat:Lc8/pPp;

    iget-object v1, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v1, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->pageUrl:Ljava/lang/String;

    iput-object v1, v0, Lc8/pPp;->pageUrl:Ljava/lang/String;

    .line 489
    :cond_0
    return-object p0
.end method

.method public setReqAppKey(Ljava/lang/String;Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "reqAppKey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 473
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqAppKey:Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->authCode:Ljava/lang/String;

    .line 475
    return-object p0
.end method

.method public setReqBizExt(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "reqBizExt"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public setReqSource(I)Lc8/COp;
    .locals 1
    .param p1, "reqSource"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqSource:I

    .line 500
    return-object p0
.end method

.method public setReqUserId(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "reqUserId"    # Ljava/lang/String;

    .prologue
    .line 461
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public setSocketTimeoutMilliSecond(I)Lc8/COp;
    .locals 1
    .param p1, "socketTimeout"    # I

    .prologue
    .line 425
    if-lez p1, :cond_0

    .line 426
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    .line 428
    :cond_0
    return-object p0
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 7

    .prologue
    .line 519
    iget-object v3, p0, Lc8/COp;->listener:Lc8/QNp;

    invoke-direct {p0, v3}, Lc8/COp;->createListenerProxy(Lc8/QNp;)Lc8/SNp;

    move-result-object v0

    .line 521
    .local v0, "callback":Lc8/SNp;
    invoke-direct {p0, v0}, Lc8/COp;->asyncRequest(Lc8/QNp;)Lc8/ENp;

    .line 524
    monitor-enter v0

    .line 526
    :try_start_0
    iget-object v3, v0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v3, :cond_0

    .line 527
    const-wide/32 v4, 0xea60

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 532
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 534
    iget-object v2, v0, Lc8/SNp;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 535
    .local v2, "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v3, v0, Lc8/SNp;->reqContext:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 536
    iget-object v3, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, v0, Lc8/SNp;->reqContext:Ljava/lang/Object;

    iput-object v4, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 538
    :cond_1
    if-nez v2, :cond_2

    .line 539
    new-instance v2, Lmtopsdk/mtop/domain/MtopResponse;

    .end local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v3, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/COp;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const-string/jumbo v6, "MTOP\u5f02\u6b65\u8c03\u7528\u8d85\u65f6"

    invoke-direct {v2, v3, v4, v5, v6}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    .restart local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :cond_2
    return-object v2

    .line 529
    .end local v2    # "response":Lmtopsdk/mtop/domain/MtopResponse;
    :catch_0
    move-exception v1

    .line 530
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "mtopsdk.MtopBuilder"

    const-string/jumbo v4, "[syncRequest] callback wait error"

    invoke-static {v3, v4, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 532
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public ttid(Ljava/lang/String;)Lc8/COp;
    .locals 1
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public useCache()Lc8/COp;
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 317
    return-object p0
.end method

.method public useWua()Lc8/COp;
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lc8/COp;->useWua(I)Lc8/COp;

    move-result-object v0

    return-object v0
.end method

.method public useWua(I)Lc8/COp;
    .locals 1
    .param p1, "type"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lc8/COp;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    .line 350
    return-object p0
.end method
