.class public Lc8/Qvf;
.super Lc8/Ivf;
.source "PrefetchDiskCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Ivf",
        "<",
        "Lc8/dxf;",
        "Lc8/cxf;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lc8/Mvf;)V
    .locals 1
    .param p1, "supplier"    # Lc8/Mvf;

    .prologue
    const/4 v0, 0x1

    .line 14
    invoke-direct {p0, v0, v0, p1}, Lc8/Ivf;-><init>(IILc8/Mvf;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/dxf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/PrefetchImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 20
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/Jxf;

    .line 22
    .local v4, "request":Lc8/Jxf;
    invoke-virtual {v4}, Lc8/Jxf;->isSkipCache()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 26
    :cond_1
    invoke-virtual {p0, p1}, Lc8/Qvf;->onConductStart(Lc8/oyf;)V

    .line 28
    invoke-virtual {v4}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v6

    invoke-virtual {v4}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v8

    invoke-virtual {p0, v6, v7, v8}, Lc8/Qvf;->getCacheLength(ILjava/lang/String;I)J

    move-result-wide v2

    .line 29
    .local v2, "length":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_2

    move v1, v5

    .line 31
    .local v1, "isLast":Z
    :cond_2
    invoke-virtual {p0, p1, v1}, Lc8/Qvf;->onConductFinish(Lc8/oyf;Z)V

    .line 33
    if-eqz v1, :cond_3

    .line 34
    new-instance v0, Lc8/dxf;

    invoke-direct {v0}, Lc8/dxf;-><init>()V

    .line 35
    .local v0, "image":Lc8/dxf;
    iput-boolean v5, v0, Lc8/dxf;->fromDisk:Z

    .line 36
    iput-wide v2, v0, Lc8/dxf;->length:J

    .line 37
    invoke-virtual {v4}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lc8/dxf;->url:Ljava/lang/String;

    .line 38
    invoke-interface {p1, v0, v5}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 41
    .end local v0    # "image":Lc8/dxf;
    :cond_3
    if-nez v1, :cond_0

    invoke-virtual {v4}, Lc8/Jxf;->isOnlyCache()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 42
    new-instance v6, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;

    const-string/jumbo v7, "PrefetchDiskCache"

    invoke-direct {v6, v7}, Lcom/taobao/phenix/cache/disk/OnlyCacheFailedException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    move v1, v5

    .line 43
    goto :goto_0
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/cxf;)V
    .locals 8
    .param p2, "isLast"    # Z
    .param p3, "encodedImage"    # Lc8/cxf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/dxf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/cxf;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/entity/PrefetchImage;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v7, 0x1

    .line 51
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    .line 54
    .local v3, "request":Lc8/Jxf;
    invoke-virtual {v3}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v5

    .line 55
    .local v5, "statistics":Lc8/Kxf;
    invoke-virtual {p3}, Lc8/cxf;->getMimeType()Lc8/Yuf;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Kxf;->setCompressFormat(Lc8/Yuf;)V

    .line 56
    iget v6, p3, Lc8/cxf;->length:I

    invoke-virtual {v5, v6}, Lc8/Kxf;->setSize(I)V

    .line 58
    invoke-virtual {p0, v3, p3, v7}, Lc8/Qvf;->writeImage(Lc8/Jxf;Lc8/cxf;Z)I

    move-result v4

    .line 59
    .local v4, "result":I
    if-eq v4, v7, :cond_0

    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    if-nez v4, :cond_1

    .line 60
    :cond_0
    new-instance v1, Lc8/dxf;

    invoke-direct {v1}, Lc8/dxf;-><init>()V

    .line 61
    .local v1, "image":Lc8/dxf;
    iget-boolean v6, p3, Lc8/cxf;->fromDisk:Z

    iput-boolean v6, v1, Lc8/dxf;->fromDisk:Z

    .line 62
    iget v6, p3, Lc8/cxf;->length:I

    int-to-long v6, v6

    iput-wide v6, v1, Lc8/dxf;->length:J

    .line 63
    iget-object v6, p3, Lc8/cxf;->path:Ljava/lang/String;

    iput-object v6, v1, Lc8/dxf;->url:Ljava/lang/String;

    .line 64
    invoke-interface {p1, v1, p2}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 75
    .end local v1    # "image":Lc8/dxf;
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {v3}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v6

    invoke-virtual {p0, v6}, Lc8/Qvf;->getPriorityDiskCache(I)Lc8/Jvf;

    move-result-object v0

    .line 69
    .local v0, "diskCache":Lc8/Jvf;
    invoke-virtual {v3}, Lc8/Jxf;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "path":Ljava/lang/String;
    const/4 v6, 0x3

    if-ne v4, v6, :cond_2

    .line 71
    new-instance v6, Lcom/taobao/phenix/cache/disk/CacheUnavailableException;

    invoke-direct {v6, v0, v2}, Lcom/taobao/phenix/cache/disk/CacheUnavailableException;-><init>(Lc8/Jvf;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v6, Lcom/taobao/phenix/cache/disk/CacheWriteFailedException;

    invoke-direct {v6, v0, v2}, Lcom/taobao/phenix/cache/disk/CacheWriteFailedException;-><init>(Lc8/Jvf;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 11
    check-cast p3, Lc8/cxf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Qvf;->consumeNewResult(Lc8/oyf;ZLc8/cxf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 11
    check-cast p3, Lc8/cxf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Qvf;->consumeNewResult(Lc8/oyf;ZLc8/cxf;)V

    return-void
.end method
