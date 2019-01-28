.class public Lc8/xNp;
.super Ljava/lang/Object;
.source "CacheStatusHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheStatusHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static finishMtopStatisticsOnExpiredCache(Lc8/pPp;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 6
    .param p0, "stat"    # Lc8/pPp;
    .param p1, "cacheResponse"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 66
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v2, 0x0

    .line 72
    .local v2, "statCopy":Lc8/pPp;
    :try_start_0
    invoke-virtual {p0}, Lc8/pPp;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lc8/pPp;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 79
    invoke-virtual {p1, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lc8/pPp;)V

    .line 80
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v4, "x-s-traceid"

    invoke-static {v3, v4}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/pPp;->serverTraceId:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v3

    iput v3, v2, Lc8/pPp;->statusCode:I

    .line 82
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lc8/pPp;->retCode:Ljava/lang/String;

    .line 83
    invoke-virtual {v2}, Lc8/pPp;->onEndAndCommit()V

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    const-string/jumbo v3, "mtopsdk.CacheStatusHandler"

    iget-object v4, p0, Lc8/pPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v5, "[finishMtopStatisticsOnCache] clone MtopStatistics error."

    invoke-static {v3, v4, v5, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 3
    .param p0, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    iget-object v0, v0, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-static {v0}, Lc8/wNp;->createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lc8/DNp;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lc8/DNp;->parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V

    goto :goto_0

    .line 34
    :cond_1
    const-string/jumbo v0, "mtopsdk.CacheStatusHandler"

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    const-string/jumbo v2, "[handleCacheStatus]Didn\'t  hit local cache "

    invoke-static {v0, v1, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/domain/MtopRequest;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2
    .param p0, "rpcCache"    # Lanetwork/network/cache/RpcCache;
    .param p1, "mtopRequest"    # Lmtopsdk/mtop/domain/MtopRequest;

    .prologue
    .line 48
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 49
    .local v0, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->body:[B

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V

    .line 52
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 53
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 54
    invoke-static {v0}, Lc8/jNp;->parseRetCodeFromHeader(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 56
    return-object v0
.end method
