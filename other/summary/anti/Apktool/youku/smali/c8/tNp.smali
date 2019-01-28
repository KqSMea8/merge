.class public Lc8/tNp;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lc8/sNp;


# static fields
.field private static final CACHE_SCOPE_PUBLIC:Ljava/lang/String; = "public"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final OFFLINE_FLAG_ON:Ljava/lang/String; = "of=on"

.field private static final QUERY_KEY_DATA:Ljava/lang/String; = "data"

.field private static final QUERY_KEY_WUA:Ljava/lang/String; = "wua"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheManagerImpl"


# instance fields
.field private cache:Lc8/jO;


# direct methods
.method public constructor <init>(Lc8/jO;)V
    .locals 1
    .param p1, "cache"    # Lc8/jO;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/tNp;->cache:Lc8/jO;

    .line 61
    iput-object p1, p0, Lc8/tNp;->cache:Lc8/jO;

    .line 62
    return-void
.end method

.method private handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 10
    .param p1, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    .prologue
    .line 363
    if-nez p1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object p1

    .line 367
    :cond_1
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->body:[B

    if-nez v7, :cond_2

    .line 368
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 373
    :cond_2
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    if-nez v7, :cond_4

    .line 375
    iget-boolean v7, p1, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz v7, :cond_3

    .line 376
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 378
    :cond_3
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 384
    :cond_4
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-static {v7}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 386
    iget-wide v2, p1, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    .line 387
    .local v2, "lastmodified":J
    iget-wide v4, p1, Lanetwork/network/cache/RpcCache;->maxAge:J

    .line 388
    .local v4, "maxAge":J
    invoke-static {}, Lc8/nOp;->getCorrectionTime()J

    move-result-wide v0

    .line 390
    .local v0, "currentTime":J
    cmp-long v7, v0, v2

    if-ltz v7, :cond_5

    add-long v8, v2, v4

    cmp-long v7, v0, v8

    if-gtz v7, :cond_5

    .line 391
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    .line 397
    :goto_1
    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v7}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 398
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x40

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 399
    .local v6, "str":Ljava/lang/StringBuilder;
    const-string/jumbo v7, "lastModifiedStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string/jumbo v7, ";lastModified="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v7, ";maxAge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v7, ";currentTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v7, ";t_offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lc8/rQp;->getTimeOffset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v7, ";status="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    const-string/jumbo v7, "mtopsdk.CacheManagerImpl"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 392
    .end local v6    # "str":Ljava/lang/StringBuilder;
    :cond_5
    iget-boolean v7, p1, Lanetwork/network/cache/RpcCache;->offline:Z

    if-eqz v7, :cond_6

    .line 393
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 395
    :cond_6
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 409
    .end local v0    # "currentTime":J
    .end local v2    # "lastmodified":J
    .end local v4    # "maxAge":J
    :cond_7
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    invoke-static {v7}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 410
    sget-object v7, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v7, p1, Lanetwork/network/cache/RpcCache;->cacheStatus:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto/16 :goto_0
.end method

.method private handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 12
    .param p1, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    .prologue
    .line 311
    if-eqz p1, :cond_0

    iget-object v9, p1, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    if-nez v9, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object p1

    .line 314
    :cond_1
    iget-object v4, p1, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 315
    .local v4, "header":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v9, "last-modified"

    invoke-static {v4, v9}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 316
    .local v6, "lastmodifiedStr":Ljava/lang/String;
    const-string/jumbo v9, "cache-control"

    invoke-static {v4, v9}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "cachecontrolStr":Ljava/lang/String;
    const-string/jumbo v9, "MTOP-XETag"

    invoke-static {v4, v9}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, "etagStr":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 319
    const-string/jumbo v9, "etag"

    invoke-static {v4, v9}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 323
    :cond_2
    if-nez v2, :cond_3

    if-nez v6, :cond_3

    if-eqz v3, :cond_0

    .line 327
    :cond_3
    invoke-static {v2}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 328
    iput-object v6, p1, Lanetwork/network/cache/RpcCache;->lastModified:Ljava/lang/String;

    .line 329
    invoke-static {v6}, Lc8/uMp;->convertTimeFormatGMT2Long(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lanetwork/network/cache/RpcCache;->cacheCreateTime:J

    .line 330
    const-string/jumbo v9, ","

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "cachecontrol":[Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 332
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_6

    aget-object v8, v0, v5

    .line 334
    .local v8, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "max-age="

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 335
    const-string/jumbo v9, "max-age="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p1, Lanetwork/network/cache/RpcCache;->maxAge:J

    .line 332
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 338
    :cond_5
    const-string/jumbo v9, "of=on"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 339
    const/4 v9, 0x1

    iput-boolean v9, p1, Lanetwork/network/cache/RpcCache;->offline:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 342
    :catch_0
    move-exception v9

    const-string/jumbo v9, "mtopsdk.CacheManagerImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[handleResponseCacheFlag] parse cachecontrolStr error."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 348
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cachecontrol":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "str":Ljava/lang/String;
    :cond_6
    invoke-static {v3}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 349
    iput-object v3, p1, Lanetwork/network/cache/RpcCache;->etag:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 422
    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    :cond_0
    :goto_0
    return-object v1

    .line 426
    :cond_1
    invoke-virtual {p0, p2, p1}, Lc8/tNp;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 427
    .local v0, "rpcCache":Lanetwork/network/cache/RpcCache;
    if-eqz v0, :cond_0

    .line 428
    iget-object v1, v0, Lanetwork/network/cache/RpcCache;->version:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getBlockName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "blockKey"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 284
    const-string/jumbo v1, ""

    .line 292
    :cond_0
    :goto_0
    return-object v1

    .line 287
    :cond_1
    const-string/jumbo v1, ""

    .line 288
    .local v1, "blockName":Ljava/lang/String;
    invoke-static {}, Lc8/uNp;->getInstance()Lc8/uNp;

    move-result-object v2

    invoke-virtual {v2, p1}, Lc8/uNp;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    .line 289
    .local v0, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 290
    iget-object v1, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apiName"    # Ljava/lang/String;
    .param p2, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 298
    :cond_0
    const-string/jumbo v0, ""

    .line 301
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lc8/yMp;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/tNp;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
    .locals 2
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v1, p0, Lc8/tNp;->cache:Lc8/jO;

    if-nez v1, :cond_1

    .line 125
    const/4 v0, 0x0

    .line 132
    :cond_0
    :goto_0
    return-object v0

    .line 127
    :cond_1
    iget-object v1, p0, Lc8/tNp;->cache:Lc8/jO;

    invoke-interface {v1, p1, p2}, Lc8/jO;->get(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 129
    .local v0, "cacheResponse":Lanetwork/network/cache/RpcCache;
    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lc8/tNp;->handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheKey(Lc8/COp;)Ljava/lang/String;
    .locals 6
    .param p1, "builder"    # Lc8/COp;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "cacheKey":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 196
    .end local v0    # "cacheKey":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 183
    .restart local v0    # "cacheKey":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v4}, Lc8/COp;->createMtopContext(Lc8/QNp;)Lc8/IMp;

    move-result-object v3

    .line 185
    .local v3, "mtopContext":Lc8/IMp;
    new-instance v2, Lc8/WMp;

    new-instance v4, Lc8/QOp;

    invoke-direct {v4}, Lc8/QOp;-><init>()V

    invoke-direct {v2, v4}, Lc8/WMp;-><init>(Lc8/POp;)V

    .line 186
    .local v2, "filter":Lc8/KMp;
    invoke-interface {v2, v3}, Lc8/KMp;->doBefore(Lc8/IMp;)Ljava/lang/String;

    .line 188
    new-instance v2, Lc8/VMp;

    .end local v2    # "filter":Lc8/KMp;
    new-instance v4, Lc8/WOp;

    invoke-direct {v4}, Lc8/WOp;-><init>()V

    invoke-direct {v2, v4}, Lc8/VMp;-><init>(Lc8/TOp;)V

    .line 189
    .restart local v2    # "filter":Lc8/KMp;
    invoke-interface {v2, v3}, Lc8/KMp;->doBefore(Lc8/IMp;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    invoke-virtual {p0, v3}, Lc8/tNp;->getCacheKey(Lc8/IMp;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    .end local v2    # "filter":Lc8/KMp;
    .end local v3    # "mtopContext":Lc8/IMp;
    :catch_0
    move-exception v1

    .line 191
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v5, "convert MtopBuilder to MtopContext error."

    invoke-static {v4, v5, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getCacheKey(Lc8/IMp;)Ljava/lang/String;
    .locals 24
    .param p1, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 202
    if-nez p1, :cond_0

    .line 203
    const/16 v21, 0x0

    .line 278
    :goto_0
    return-object v21

    .line 207
    :cond_0
    move-object/from16 v0, p1

    iget-object v15, v0, Lc8/IMp;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 208
    .local v15, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    move-object/from16 v0, p1

    iget-object v14, v0, Lc8/IMp;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 209
    .local v14, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    move-object/from16 v0, p1

    iget-object v4, v0, Lc8/IMp;->baseUrl:Ljava/lang/String;

    .line 210
    .local v4, "baseUrl":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->queryParams:Ljava/util/Map;

    move-object/from16 v17, v0

    .line 211
    .local v17, "queryParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    if-eqz v14, :cond_1

    if-eqz v4, :cond_1

    if-nez v17, :cond_2

    .line 212
    :cond_1
    const/16 v21, 0x0

    goto :goto_0

    .line 215
    :cond_2
    const/16 v16, 0x1

    .line 219
    .local v16, "privateScope":Z
    invoke-static {}, Lc8/uNp;->getInstance()Lc8/uNp;

    move-result-object v21

    invoke-virtual {v15}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lc8/uNp;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v3

    .line 220
    .local v3, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v3, :cond_5

    .line 221
    iget-object v6, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->excludeQueryList:Ljava/util/List;

    .line 222
    .local v6, "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v21, "public"

    iget-object v0, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->scope:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 223
    const/16 v16, 0x0

    .line 231
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 233
    :cond_4
    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lc8/ZOp;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 258
    .local v7, "cacheUrl":Ljava/net/URL;
    :goto_2
    if-nez v7, :cond_b

    .line 259
    const/16 v21, 0x0

    goto :goto_0

    .line 226
    .end local v6    # "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "cacheUrl":Ljava/net/URL;
    :cond_5
    iget-object v6, v14, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .restart local v6    # "cacheKeyBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .line 236
    :cond_6
    :try_start_1
    iget-object v9, v15, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 237
    .local v9, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    .line 238
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 239
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 274
    .end local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13    # "i$":Ljava/util/Iterator;
    .end local v18    # "str":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 275
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v21, "mtopsdk.CacheManagerImpl"

    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->seqNo:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "[getCacheKey] getCacheKey error."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2, v11}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 243
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    :try_start_2
    invoke-static {v9}, Lc8/qPp;->convertMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 244
    .local v10, "dataStrExcludeKey":Ljava/lang/String;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v8, "clonedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_8
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 246
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v21, "data"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 247
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v8, v0, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 248
    :cond_9
    const-string/jumbo v22, "wua"

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_8

    .line 251
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 254
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_a
    invoke-static {v4, v8}, Lc8/ZOp;->initUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v7

    .restart local v7    # "cacheUrl":Ljava/net/URL;
    goto/16 :goto_2

    .line 261
    .end local v8    # "clonedParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v10    # "dataStrExcludeKey":Ljava/lang/String;
    .end local v13    # "i$":Ljava/util/Iterator;
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 263
    .local v5, "cacheKey":Ljava/lang/StringBuilder;
    if-eqz v16, :cond_c

    .line 264
    move-object/from16 v0, p1

    iget-object v0, v0, Lc8/IMp;->mtopInstance:Lc8/AOp;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lc8/AOp;->getUserId()Ljava/lang/String;

    move-result-object v20

    .line 265
    .local v20, "userId":Ljava/lang/String;
    if-eqz v20, :cond_c

    .line 266
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .end local v20    # "userId":Ljava/lang/String;
    :cond_c
    iget-object v0, v14, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 270
    .local v19, "ttid":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 271
    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_d
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v21

    goto/16 :goto_0
.end method

.method public isNeedReadCache(Lc8/FPp;Lc8/QNp;)Z
    .locals 5
    .param p1, "request"    # Lc8/FPp;
    .param p2, "callback"    # Lc8/QNp;

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v2

    invoke-virtual {v2}, Lc8/oOp;->isGlobalCacheSwitchOpen()Z

    move-result v2

    if-nez v2, :cond_1

    .line 69
    const-string/jumbo v2, "mtopsdk.CacheManagerImpl"

    iget-object v3, p1, Lc8/FPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v4, "[isNeedReadCache]GlobalCacheSwitch=false,Don\'t read local cache."

    invoke-static {v2, v3, v4}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return v1

    .line 73
    :cond_1
    if-eqz p1, :cond_0

    .line 78
    const-string/jumbo v2, "GET"

    iget-object v3, p1, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    const-string/jumbo v2, "cache-control"

    invoke-virtual {p1, v2}, Lc8/FPp;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "cacheControlValue":Ljava/lang/String;
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedWriteCache(Lc8/FPp;Ljava/util/Map;)Z
    .locals 7
    .param p1, "request"    # Lc8/FPp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/FPp;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .local p2, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 92
    invoke-static {}, Lc8/oOp;->getInstance()Lc8/oOp;

    move-result-object v4

    invoke-virtual {v4}, Lc8/oOp;->isGlobalCacheSwitchOpen()Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    const-string/jumbo v4, "mtopsdk.CacheManagerImpl"

    iget-object v5, p1, Lc8/FPp;->seqNo:Ljava/lang/String;

    const-string/jumbo v6, "[isNeedWriteCache]GlobalCacheSwitch=false,Don\'t write local cache."

    invoke-static {v4, v5, v6}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_0
    :goto_0
    return v3

    .line 98
    :cond_1
    const-string/jumbo v4, "GET"

    iget-object v5, p1, Lc8/FPp;->method:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    if-eqz p2, :cond_0

    .line 107
    const-string/jumbo v4, "cache-control"

    invoke-static {p2, v4}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "cacheControl":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string/jumbo v4, "no-cache"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    :cond_2
    const-string/jumbo v4, "last-modified"

    invoke-static {p2, v4}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, "lastModified":Ljava/lang/String;
    const-string/jumbo v4, "MTOP-XETag"

    invoke-static {p2, v4}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "etag":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 115
    const-string/jumbo v4, "etag"

    invoke-static {p2, v4}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    :cond_3
    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z
    .locals 4
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;
    .param p3, "rpcCache"    # Lanetwork/network/cache/RpcCache;

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, "result":Z
    iget-object v2, p0, Lc8/tNp;->cache:Lc8/jO;

    if-nez v2, :cond_0

    move v1, v0

    .line 146
    .end local v0    # "result":Z
    .local v1, "result":I
    :goto_0
    return v1

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":Z
    :cond_0
    invoke-static {p1}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    .line 142
    iget-object v2, p0, Lc8/tNp;->cache:Lc8/jO;

    invoke-interface {v2, p1, p2, p3}, Lc8/jO;->put(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result v0

    :goto_1
    move v1, v0

    .line 146
    .restart local v1    # "result":I
    goto :goto_0

    .line 144
    .end local v1    # "result":I
    :cond_1
    const-string/jumbo v2, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v3, "[putCache] Invalid cacheKey or rpcCache"

    invoke-static {v2, v3}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 7
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "blockName"    # Ljava/lang/String;
    .param p3, "response"    # Lmtopsdk/mtop/domain/MtopResponse;

    .prologue
    .line 152
    const/4 v2, 0x0

    .line 153
    .local v2, "result":Z
    iget-object v5, p0, Lc8/tNp;->cache:Lc8/jO;

    if-nez v5, :cond_0

    move v3, v2

    .line 170
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 156
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_0
    new-instance v1, Lanetwork/network/cache/RpcCache;

    invoke-direct {v1}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 157
    .local v1, "cacheRequest":Lanetwork/network/cache/RpcCache;
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    iput-object v5, v1, Lanetwork/network/cache/RpcCache;->header:Ljava/util/Map;

    .line 158
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v5

    iput-object v5, v1, Lanetwork/network/cache/RpcCache;->body:[B

    .line 159
    invoke-direct {p0, v1}, Lc8/tNp;->handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v1

    .line 161
    invoke-static {}, Lc8/uNp;->getInstance()Lc8/uNp;

    move-result-object v5

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/uNp;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    .line 162
    .local v0, "apiCacheDo":Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    if-eqz v0, :cond_1

    iget-boolean v5, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->push:Z

    if-eqz v5, :cond_1

    .line 163
    invoke-direct {p0, p2, p1}, Lc8/tNp;->queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "version":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 165
    iput-object v4, v1, Lanetwork/network/cache/RpcCache;->version:Ljava/lang/String;

    .line 169
    .end local v4    # "version":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lc8/tNp;->cache:Lc8/jO;

    invoke-interface {v5, p1, p2, v1}, Lc8/jO;->put(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result v2

    move v3, v2

    .line 170
    .restart local v3    # "result":I
    goto :goto_0
.end method
