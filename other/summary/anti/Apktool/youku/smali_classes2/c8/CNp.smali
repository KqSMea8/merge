.class public Lc8/CNp;
.super Ljava/lang/Object;
.source "FreshCacheParser.java"

# interfaces
.implements Lc8/DNp;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FreshCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;Landroid/os/Handler;)V
    .locals 11
    .param p1, "responseSource"    # Lmtopsdk/mtop/domain/ResponseSource;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v10, 0x1

    .line 23
    iget-object v5, p1, Lmtopsdk/mtop/domain/ResponseSource;->seqNo:Ljava/lang/String;

    .line 24
    .local v5, "seqNo":Ljava/lang/String;
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string/jumbo v0, "mtopsdk.FreshCacheParser"

    const-string/jumbo v1, "[parse]FreshCacheParser parse called"

    invoke-static {v0, v5, v1}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 30
    iget-object v6, p1, Lmtopsdk/mtop/domain/ResponseSource;->mtopContext:Lc8/IMp;

    .line 31
    .local v6, "mtopContext":Lc8/IMp;
    iget-object v7, v6, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 32
    .local v7, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    iget-object v9, v6, Lc8/IMp;->stats:Lc8/pPp;

    .line 33
    .local v9, "stats":Lc8/pPp;
    iput v10, v9, Lc8/pPp;->cacheHitType:I

    .line 34
    invoke-virtual {v9}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lc8/pPp;->cacheResponseParseStartTime:J

    .line 35
    iget-object v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    invoke-static {v0, v7}, Lc8/xNp;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/domain/MtopRequest;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v8

    .line 36
    .local v8, "mtopResponse":Lmtopsdk/mtop/domain/MtopResponse;
    sget-object v0, Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;->FRESH_CACHE:Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;

    invoke-virtual {v8, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setSource(Lmtopsdk/mtop/domain/MtopResponse$ResponseSource;)V

    .line 37
    invoke-virtual {v9}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lc8/pPp;->cacheResponseParseEndTime:J

    .line 38
    invoke-virtual {v8, v9}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lc8/pPp;)V

    .line 39
    iput-object v8, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 40
    invoke-virtual {v9}, Lc8/pPp;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lc8/pPp;->cacheReturnTime:J

    .line 43
    iget-object v0, v6, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->forceRefreshCache:Z

    if-eqz v0, :cond_2

    .line 44
    iput-boolean v10, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 45
    iget-object v2, v6, Lc8/IMp;->mtopListener:Lc8/QNp;

    .line 46
    .local v2, "mtopListener":Lc8/QNp;
    instance-of v0, v2, Lc8/INp;

    if-eqz v0, :cond_2

    .line 47
    iget-object v0, v6, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v4, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->reqContext:Ljava/lang/Object;

    .line 48
    .local v4, "reqContext":Ljava/lang/Object;
    new-instance v3, Lc8/HNp;

    invoke-direct {v3, v8}, Lc8/HNp;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 49
    .local v3, "cacheEvent":Lc8/HNp;
    iput-object v5, v3, Lc8/HNp;->seqNo:Ljava/lang/String;

    .line 50
    invoke-static {v9, v8}, Lc8/xNp;->finishMtopStatisticsOnExpiredCache(Lc8/pPp;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 51
    iget-object v0, v6, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-boolean v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->skipCacheCallback:Z

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lc8/BNp;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/BNp;-><init>(Lc8/CNp;Lc8/QNp;Lc8/HNp;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, v6, Lc8/IMp;->seqNo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {p2, v0, v1}, Lc8/jNp;->submitCallbackTask(Landroid/os/Handler;Ljava/lang/Runnable;I)V

    .line 63
    :cond_1
    const/4 v0, 0x3

    iput v0, v9, Lc8/pPp;->cacheHitType:I

    .line 66
    .end local v2    # "mtopListener":Lc8/QNp;
    .end local v3    # "cacheEvent":Lc8/HNp;
    .end local v4    # "reqContext":Ljava/lang/Object;
    :cond_2
    return-void
.end method
