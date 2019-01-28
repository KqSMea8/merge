.class public Lc8/ANp;
.super Ljava/lang/Object;
.source "ExpiredCacheParser.java"

# interfaces
.implements Lc8/DNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExpiredCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 11
    .param p1, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 26
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    .line 27
    .local v5, "seqNo":Ljava/lang/String;
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    const-string/jumbo v0, "mtopsdk.ExpiredCacheParser"

    const-string/jumbo v1, "[parse]ExpiredCacheParser parse called"

    invoke-static {v0, v5, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    iget-object v6, p1, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lc8/IMp;

    .line 32
    .local v6, "mtopContext":Lc8/IMp;
    iget-object v10, v6, Lc8/IMp;->stats:Lc8/pPp;

    .line 33
    .local v10, "stats":Lc8/pPp;
    const/4 v0, 0x2

    iput v0, v10, Lc8/pPp;->cacheHitType:I

    .line 34
    invoke-virtual {v10}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lc8/pPp;->cacheResponseParseStartTime:J

    .line 35
    iget-object v9, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 36
    .local v9, "rpcCache":Lanetwork/network/cache/RpcCache;
    iget-object v0, v6, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-static {v9, v0}, Lc8/xNp;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/domain/MtopRequest;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v7

    .line 37
    .local v7, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->EXPIRED_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v7, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 38
    invoke-virtual {v10}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lc8/pPp;->cacheResponseParseEndTime:J

    .line 39
    invoke-virtual {v7, v10}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lc8/pPp;)V

    .line 41
    iget-object v2, v6, Lc8/IMp;->mtopListener:Lc8/QNp;

    .line 42
    .local v2, "mtopListener":Lc8/QNp;
    iget-object v0, v6, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 43
    .local v4, "reqContext":Ljava/lang/Object;
    instance-of v0, v2, Lc8/INp;

    if-eqz v0, :cond_1

    .line 44
    new-instance v3, Lc8/HNp;

    invoke-direct {v3, v7}, Lc8/HNp;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 45
    .local v3, "cacheEvent":Lc8/HNp;
    iput-object v5, v3, Lc8/HNp;->seqNo:Ljava/lang/String;

    .line 46
    invoke-virtual {v10}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v10, Lc8/pPp;->cacheReturnTime:J

    .line 47
    invoke-static {v10, v7}, Lc8/xNp;->finishMtopStatisticsOnExpiredCache(Lc8/pPp;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 48
    iget-object v0, v6, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    if-nez v0, :cond_1

    .line 49
    new-instance v0, Lc8/zNp;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/zNp;-><init>(Lc8/ANp;Lc8/QNp;Lc8/HNp;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v6, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {p2, v0, v1}, Lc8/jNp;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 61
    .end local v3    # "cacheEvent":Lc8/HNp;
    :cond_1
    const/4 v0, 0x3

    iput v0, v10, Lc8/pPp;->cacheHitType:I

    .line 62
    iget-object v8, v6, Lc8/IMp;->networkRequest:Lc8/FPp;

    .line 63
    .local v8, "request":Lc8/FPp;
    if-eqz v8, :cond_3

    .line 65
    iget-object v0, v9, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    const-string/jumbo v0, "if-modified-since"

    iget-object v1, v9, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lc8/FPp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_2
    iget-object v0, v9, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69
    const-string/jumbo v0, "if-none-match"

    iget-object v1, v9, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Lc8/FPp;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_3
    iput-object v7, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 73
    return-void
.end method
