.class public abstract Lc8/Ivf;
.super Lc8/ryf;
.source "BaseDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OUT:",
        "Ljava/lang/Object;",
        "NEXT_OUT::",
        "Lc8/iyf;",
        ">",
        "Lc8/ryf",
        "<TOUT;TNEXT_OUT;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# static fields
.field protected static final WR_CACHE_UNAVAILABLE:I = 0x3

.field protected static final WR_CACHE_WRITE_FAILED:I = 0x4

.field protected static final WR_DATA_UNAVAILABLE:I = 0x1

.field protected static final WR_NOT_NEED_CACHE:I = 0x2

.field protected static final WR_SUCCEEDED:I


# instance fields
.field private final mDiskCacheSupplier:Lc8/Mvf;


# direct methods
.method public constructor <init>(IILc8/Mvf;)V
    .locals 0
    .param p1, "produceType"    # I
    .param p2, "consumeType"    # I
    .param p3, "supplier"    # Lc8/Mvf;

    .prologue
    .line 19
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    invoke-direct {p0, p1, p2}, Lc8/ryf;-><init>(II)V

    .line 20
    iput-object p3, p0, Lc8/Ivf;->mDiskCacheSupplier:Lc8/Mvf;

    .line 21
    return-void
.end method

.method private getCacheResponse(ILjava/lang/String;I[I)Lc8/exf;
    .locals 11
    .param p1, "diskCachePriority"    # I
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "catalog"    # I
    .param p4, "matchSizeLevel"    # [I

    .prologue
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 89
    invoke-virtual {p0, p1}, Lc8/Ivf;->getPriorityDiskCache(I)Lc8/Jvf;

    move-result-object v4

    .line 90
    .local v4, "diskCache":Lc8/Jvf;
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-interface {v4, v5}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 98
    invoke-interface {v4}, Lc8/Jvf;->isSupportCatalogs()Z

    move-result v5

    if-eqz v5, :cond_0

    aget v0, p4, v9

    .local v0, "allowedSizeLevel":I
    if-ne v0, v10, :cond_1

    .line 99
    .end local v0    # "allowedSizeLevel":I
    :cond_0
    invoke-interface {v4, p2, p3}, Lc8/Jvf;->get(Ljava/lang/String;I)Lc8/exf;

    move-result-object v5

    .line 118
    :goto_0
    return-object v5

    .line 102
    .restart local v0    # "allowedSizeLevel":I
    :cond_1
    invoke-interface {v4, p2}, Lc8/Jvf;->getCatalogs(Ljava/lang/String;)[I

    move-result-object v3

    .line 103
    .local v3, "catalogs":[I
    if-eqz v3, :cond_2

    array-length v5, v3

    if-lez v5, :cond_2

    .line 104
    invoke-virtual {p0, v3, p3}, Lc8/Ivf;->getBestLevelAndCatalog([II)[I

    move-result-object v1

    .line 105
    .local v1, "bestInfo":[I
    aget v2, v1, v9

    .line 107
    .local v2, "bestSizeLevel":I
    invoke-static {v0, v2}, Lc8/Jxf;->isAllowedSizeLevel(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 108
    aput v2, p4, v9

    .line 109
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v6, "find best size level=%d, actual=%d, target=%d, key=%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aget v8, v1, v10

    invoke-static {v8}, Lc8/owf;->getSplitWidth(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {p3}, Lc8/owf;->getSplitWidth(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object p2, v7, v8

    invoke-static {v5, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    aget v5, v1, v10

    invoke-interface {v4, p2, v5}, Lc8/Jvf;->get(Ljava/lang/String;I)Lc8/exf;

    move-result-object v5

    goto :goto_0

    .line 113
    .end local v1    # "bestInfo":[I
    .end local v2    # "bestSizeLevel":I
    :cond_2
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v6, "find catalogs failed, key=%s"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-static {v5, v6, v7}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .end local v0    # "allowedSizeLevel":I
    .end local v3    # "catalogs":[I
    :cond_3
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 116
    :cond_4
    const-string/jumbo v5, "DiskCache"

    const-string/jumbo v6, "%s open failed in DiskCacheReader"

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v4, v7, v9

    invoke-static {v5, v6, v7}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method protected getBestLevelAndCatalog([II)[I
    .locals 13
    .param p1, "catalogs"    # [I
    .param p2, "targetCatalog"    # I

    .prologue
    .line 33
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    const/4 v1, -0x1

    .line 35
    .local v1, "bestWH":I
    const/4 v0, 0x2

    .line 36
    .local v0, "adaptLevel":I
    const v6, 0x7fffffff

    .line 37
    .local v6, "minDis":I
    invoke-static {p2}, Lc8/owf;->getSplitWidth(I)I

    move-result v8

    .line 38
    .local v8, "targetW":I
    invoke-static {p2}, Lc8/owf;->getSplitHeight(I)I

    move-result v7

    .line 39
    .local v7, "targetH":I
    array-length v10, p1

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v10, :cond_0

    aget v2, p1, v9

    .line 40
    .local v2, "currCatalog":I
    invoke-static {v2}, Lc8/owf;->getSplitWidth(I)I

    move-result v11

    sub-int v5, v11, v8

    .line 41
    .local v5, "currDisW":I
    invoke-static {v2}, Lc8/owf;->getSplitHeight(I)I

    move-result v11

    sub-int v4, v11, v7

    .line 42
    .local v4, "currDisH":I
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v11

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int v3, v11, v12

    .line 43
    .local v3, "currDis":I
    if-nez v3, :cond_1

    .line 44
    move v1, v2

    .line 45
    const/4 v0, 0x1

    .line 62
    .end local v2    # "currCatalog":I
    .end local v3    # "currDis":I
    .end local v4    # "currDisH":I
    .end local v5    # "currDisW":I
    :cond_0
    const/4 v9, 0x2

    new-array v9, v9, [I

    const/4 v10, 0x0

    aput v0, v9, v10

    const/4 v10, 0x1

    aput v1, v9, v10

    return-object v9

    .line 47
    .restart local v2    # "currCatalog":I
    .restart local v3    # "currDis":I
    .restart local v4    # "currDisH":I
    .restart local v5    # "currDisW":I
    :cond_1
    const/4 v11, 0x2

    if-ne v0, v11, :cond_3

    if-lez v5, :cond_3

    if-lez v4, :cond_3

    .line 48
    move v6, v3

    .line 49
    move v1, v2

    .line 50
    const/4 v0, 0x4

    .line 39
    :cond_2
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 52
    :cond_3
    const/4 v11, 0x4

    if-ne v0, v11, :cond_4

    if-ltz v5, :cond_2

    if-ltz v4, :cond_2

    .line 57
    :cond_4
    if-ge v3, v6, :cond_2

    .line 58
    move v6, v3

    .line 59
    move v1, v2

    goto :goto_1
.end method

.method protected getCacheLength(ILjava/lang/String;I)J
    .locals 4
    .param p1, "diskCachePriority"    # I
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "catalog"    # I

    .prologue
    .line 66
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    const-wide/16 v2, -0x1

    .line 67
    .local v2, "ret":J
    invoke-virtual {p0, p1}, Lc8/Ivf;->getPriorityDiskCache(I)Lc8/Jvf;

    move-result-object v0

    .line 68
    .local v0, "diskCache":Lc8/Jvf;
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    invoke-interface {v0, p2, p3}, Lc8/Jvf;->getLength(Ljava/lang/String;I)J

    move-result-wide v2

    .line 71
    :cond_0
    return-wide v2
.end method

.method protected getCacheResult(Lc8/Jxf;Ljava/lang/String;I[I)Lc8/bxf;
    .locals 8
    .param p1, "request"    # Lc8/Jxf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cacheKey"    # Ljava/lang/String;
    .param p3, "catalog"    # I
    .param p4, "matchSizeLevel"    # [I

    .prologue
    .line 75
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    const/4 v2, 0x0

    .line 78
    .local v2, "result":Lc8/bxf;
    invoke-virtual {p1}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v3

    invoke-direct {p0, v3, p2, p3, p4}, Lc8/Ivf;->getCacheResponse(ILjava/lang/String;I[I)Lc8/exf;

    move-result-object v1

    .local v1, "response":Lc8/exf;
    if-eqz v1, :cond_0

    .line 80
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v1, v3}, Lc8/bxf;->transformFrom(Lc8/exf;Lc8/yxf;)Lc8/bxf;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 85
    :cond_0
    :goto_0
    return-object v2

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "DiskCache"

    const-string/jumbo v4, "transform data from response[type:%d] error=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lc8/exf;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v0, v5, v6

    invoke-static {v3, p1, v4, v5}, Lc8/qwf;->e(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getPriorityDiskCache(I)Lc8/Jvf;
    .locals 3
    .param p1, "priority"    # I

    .prologue
    .line 24
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    iget-object v1, p0, Lc8/Ivf;->mDiskCacheSupplier:Lc8/Mvf;

    invoke-interface {v1, p1}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v0

    .line 25
    .local v0, "ret":Lc8/Jvf;
    if-nez v0, :cond_0

    .line 26
    iget-object v1, p0, Lc8/Ivf;->mDiskCacheSupplier:Lc8/Mvf;

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v0

    .line 28
    :cond_0
    return-object v0
.end method

.method protected writeImage(Lc8/Jxf;Lc8/cxf;Z)I
    .locals 8
    .param p1, "request"    # Lc8/Jxf;
    .param p2, "encodedImage"    # Lc8/cxf;
    .param p3, "needRelease"    # Z

    .prologue
    .line 128
    .local p0, "this":Lc8/Ivf;, "Lcom/taobao/phenix/cache/disk/BaseDiskCacheProducer<TOUT;TNEXT_OUT;>;"
    const/4 v7, 0x0

    .line 136
    .local v7, "ret":I
    invoke-virtual {p2}, Lc8/cxf;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    const/4 v7, 0x1

    .line 138
    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "write skipped, because encode data not available, key=%s, catalog=%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, p1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_0
    if-eqz p3, :cond_0

    .line 155
    invoke-virtual {p2}, Lc8/cxf;->release()V

    .line 157
    :cond_0
    return v7

    .line 139
    :cond_1
    invoke-virtual {p2}, Lc8/cxf;->notNeedCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    const/4 v7, 0x2

    .line 141
    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "write skipped, because encode data not need to be cached(fromDisk=%b, fromScale=%b), key=%s, catalog=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-boolean v5, p2, Lc8/cxf;->fromDisk:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-boolean v5, p2, Lc8/cxf;->fromScale:Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, p1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p1}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/Ivf;->getPriorityDiskCache(I)Lc8/Jvf;

    move-result-object v0

    .local v0, "diskCache":Lc8/Jvf;
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v2

    iget-object v3, p2, Lc8/cxf;->bytes:[B

    iget v4, p2, Lc8/cxf;->offset:I

    iget v5, p2, Lc8/cxf;->length:I

    invoke-interface/range {v0 .. v5}, Lc8/Jvf;->put(Ljava/lang/String;I[BII)Z

    move-result v6

    .line 145
    .local v6, "result":Z
    if-nez v6, :cond_3

    .line 146
    const/4 v7, 0x4

    .line 148
    :cond_3
    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "write result=%B\uff0cpriority=%d, key=%s, catalog=%d"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, p1, v2, v3}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 150
    .end local v6    # "result":Z
    :cond_4
    const/4 v7, 0x3

    .line 151
    const-string/jumbo v1, "DiskCache"

    const-string/jumbo v2, "%s open failed in DiskCacheWriter"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method
