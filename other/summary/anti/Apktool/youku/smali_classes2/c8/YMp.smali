.class public Lc8/YMp;
.super Ljava/lang/Object;
.source "CacheDuplexFilter.java"

# interfaces
.implements Lc8/JMp;
.implements Lc8/KMp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheDuplexFilter"

.field private static final cacheManagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lc8/jO;",
            "Lc8/sNp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lc8/YMp;->cacheManagerMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doAfter(Lc8/IMp;)Ljava/lang/String;
    .locals 6
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 107
    iget-object v1, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 108
    .local v1, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    iget-object v3, p1, Lc8/IMp;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    .line 109
    .local v3, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 110
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v2

    .line 111
    .local v2, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v0, v3, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lc8/sNp;

    .line 112
    .local v0, "cacheManager":Lc8/sNp;
    iget-object v4, p1, Lc8/IMp;->networkRequest:Lc8/FPp;

    invoke-interface {v0, v4, v2}, Lc8/sNp;->isNeedWriteCache(Lc8/FPp;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5, v1}, Lc8/sNp;->putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z

    .line 116
    .end local v0    # "cacheManager":Lc8/sNp;
    .end local v2    # "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_0
    const-string/jumbo v4, "CONTINUE"

    return-object v4
.end method

.method public doBefore(Lc8/IMp;)Ljava/lang/String;
    .locals 16
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 41
    const/4 v2, 0x1

    .line 44
    .local v2, "apiCacheSwitchOpen":Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v12}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "apiKey":Ljava/lang/String;
    invoke-static {}, Lc8/uNp;->getInstance()Lc8/uNp;

    move-result-object v12

    invoke-virtual {v12, v3}, Lc8/uNp;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 46
    .local v1, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v1, :cond_0

    iget-boolean v12, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->cache:Z

    if-nez v12, :cond_0

    .line 47
    const/4 v2, 0x0

    .line 48
    sget-object v12, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v12}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 49
    const-string/jumbo v12, "mtopsdk.CacheDuplexFilter"

    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "apiKey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ,apiCacheSwitchOpen="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_0
    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->stats:Lc8/pPp;

    if-eqz v2, :cond_1

    const/4 v12, 0x1

    :goto_0
    iput v12, v13, Lc8/pPp;->cacheSwitch:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .end local v3    # "apiKey":Ljava/lang/String;
    :goto_1
    if-nez v2, :cond_2

    .line 58
    const-string/jumbo v12, "CONTINUE"

    .line 100
    :goto_2
    return-object v12

    .line 52
    .restart local v1    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .restart local v3    # "apiKey":Ljava/lang/String;
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 53
    .end local v1    # "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .end local v3    # "apiKey":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 54
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v12, "mtopsdk.CacheDuplexFilter"

    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    const-string/jumbo v14, "get apiCacheSwitch failed."

    invoke-static {v12, v13, v14, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 62
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    invoke-virtual {v12}, Lc8/AOp;->getMtopConfig()Lc8/kOp;

    move-result-object v12

    iget-object v5, v12, Lc8/kOp;->cacheImpl:Lc8/jO;

    .line 63
    .local v5, "cacheImpl":Lc8/jO;
    if-eqz v5, :cond_6

    .line 65
    sget-object v12, Lc8/YMp;->cacheManagerMap:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/sNp;

    .line 66
    .local v7, "cacheManager":Lc8/sNp;
    if-nez v7, :cond_4

    .line 67
    sget-object v13, Lc8/YMp;->cacheManagerMap:Ljava/util/Map;

    monitor-enter v13

    .line 68
    :try_start_1
    sget-object v12, Lc8/YMp;->cacheManagerMap:Ljava/util/Map;

    invoke-interface {v12, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Lc8/sNp;

    move-object v7, v0

    .line 69
    if-nez v7, :cond_3

    .line 70
    new-instance v8, Lc8/tNp;

    invoke-direct {v8, v5}, Lc8/tNp;-><init>(Lc8/jO;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v7    # "cacheManager":Lc8/sNp;
    .local v8, "cacheManager":Lc8/sNp;
    :try_start_2
    sget-object v12, Lc8/YMp;->cacheManagerMap:Ljava/util/Map;

    invoke-interface {v12, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v7, v8

    .line 73
    .end local v8    # "cacheManager":Lc8/sNp;
    .restart local v7    # "cacheManager":Lc8/sNp;
    :cond_3
    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 77
    :cond_4
    const/4 v10, 0x0

    .line 79
    .local v10, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :try_start_4
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->networkRequest:Lc8/FPp;

    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->mtopListener:Lc8/QNp;

    invoke-interface {v7, v12, v13}, Lc8/sNp;->isNeedReadCache(Lc8/FPp;Lc8/QNp;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 80
    new-instance v11, Lmtopsdk/mtop/domain/ResponseSource;

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v7}, Lmtopsdk/mtop/domain/ResponseSource;-><init>(Lc8/IMp;Lc8/sNp;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 81
    .end local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    .local v11, "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :try_start_5
    move-object/from16 v0, p1

    iput-object v11, v0, Lc8/IMp;->responseSource:Lmtopsdk/mtop/domain/ResponseSource;

    .line 83
    invoke-virtual {v11}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "cacheKey":Ljava/lang/String;
    invoke-virtual {v11}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v4

    .line 86
    .local v4, "cacheBlock":Ljava/lang/String;
    invoke-interface {v7, v6, v4}, Lc8/sNp;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v12

    iput-object v12, v11, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 87
    move-object/from16 v0, p1

    iget-object v12, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v12, v12, Lmtopsdk/mtop/common/MtopNetworkProp;->handler:Landroid/os/Handler;

    invoke-static {v11, v12}, Lc8/xNp;->handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v10, v11

    .line 94
    .end local v4    # "cacheBlock":Ljava/lang/String;
    .end local v6    # "cacheKey":Ljava/lang/String;
    .end local v11    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    .restart local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :cond_5
    :goto_3
    if-eqz v10, :cond_6

    iget-boolean v12, v10, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    if-nez v12, :cond_6

    .line 95
    iget-object v12, v10, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    move-object/from16 v0, p1

    iput-object v12, v0, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 96
    invoke-static/range {p1 .. p1}, Lc8/jNp;->handleExceptionCallBack(Lc8/IMp;)V

    .line 97
    const-string/jumbo v12, "STOP"

    goto/16 :goto_2

    .line 73
    .end local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :catchall_0
    move-exception v12

    :goto_4
    :try_start_6
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v12

    .line 89
    .restart local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :catch_1
    move-exception v9

    .line 90
    .restart local v9    # "e":Ljava/lang/Exception;
    :goto_5
    const-string/jumbo v12, "mtopsdk.CacheDuplexFilter"

    move-object/from16 v0, p1

    iget-object v13, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "[initResponseSource] initResponseSource error,apiKey="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14, v9}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 100
    .end local v7    # "cacheManager":Lc8/sNp;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :cond_6
    const-string/jumbo v12, "CONTINUE"

    goto/16 :goto_2

    .line 89
    .restart local v7    # "cacheManager":Lc8/sNp;
    .restart local v11    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    :catch_2
    move-exception v9

    move-object v10, v11

    .end local v11    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    .restart local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    goto :goto_5

    .line 73
    .end local v7    # "cacheManager":Lc8/sNp;
    .end local v10    # "responseSource":Lmtopsdk/mtop/domain/ResponseSource;
    .restart local v8    # "cacheManager":Lc8/sNp;
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "cacheManager":Lc8/sNp;
    .restart local v7    # "cacheManager":Lc8/sNp;
    goto :goto_4
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "mtopsdk.CacheDuplexFilter"

    return-object v0
.end method
