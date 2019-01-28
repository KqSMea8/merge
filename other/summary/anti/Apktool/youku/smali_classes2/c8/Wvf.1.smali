.class public Lc8/Wvf;
.super Lc8/ryf;
.source "MemoryCacheProducer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/ryf",
        "<",
        "Lc8/Yvf;",
        "Lc8/axf;",
        "Lc8/Jxf;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"

.field private static final sStaticImageRecycleListener:Lc8/bwf;


# instance fields
.field private final mMemoryCache:Lc8/Fvf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lc8/Vvf;

    invoke-direct {v0}, Lc8/Vvf;-><init>()V

    sput-object v0, Lc8/Wvf;->sStaticImageRecycleListener:Lc8/bwf;

    return-void
.end method

.method public constructor <init>(Lc8/Fvf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "memoryCache":Lc8/Fvf;, "Lcom/taobao/phenix/cache/LruCache<Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;>;"
    const/4 v0, 0x1

    .line 34
    invoke-direct {p0, v0, v0}, Lc8/ryf;-><init>(II)V

    .line 35
    invoke-static {p1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iput-object p1, p0, Lc8/Wvf;->mMemoryCache:Lc8/Fvf;

    .line 37
    return-void
.end method

.method public static getFilteredCache(Lc8/Fvf;Ljava/lang/String;Z)Lc8/Yvf;
    .locals 8
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "releasable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Fvf",
            "<",
            "Ljava/lang/String;",
            "Lc8/Svf;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lc8/Yvf;"
        }
    .end annotation

    .prologue
    .local p0, "memoryCache":Lc8/Fvf;, "Lcom/taobao/phenix/cache/LruCache<Ljava/lang/String;Lcom/taobao/phenix/cache/memory/CachedRootImage;>;"
    const/4 v7, 0x1

    .line 46
    invoke-interface {p0, p1}, Lc8/Fvf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Svf;

    .line 47
    .local v2, "rootImage":Lc8/Svf;
    if-nez v2, :cond_1

    .line 48
    const/4 v1, 0x0

    .line 65
    :cond_0
    :goto_0
    return-object v1

    .line 52
    :cond_1
    invoke-static {v2, p2}, Lc8/Wvf;->newDrawableWithRootImage(Lc8/Svf;Z)Lc8/Yvf;

    move-result-object v1

    .line 53
    .local v1, "result":Lc8/Yvf;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1, v7}, Lc8/Yvf;->fromMemory(Z)V

    .line 58
    invoke-virtual {v1}, Lc8/Yvf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 59
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    invoke-interface {p0, p1}, Lc8/Fvf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const/4 v1, 0x0

    .line 62
    const-string/jumbo v3, "MemoryCache"

    const-string/jumbo v4, "remove image(exist cache but bitmap is recycled), key=%s, releasable=%b"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3, v4, v5}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static newCachedRootImage(Lc8/Jxf;Lc8/axf;Lc8/bwf;)Lc8/Svf;
    .locals 8
    .param p0, "request"    # Lc8/Jxf;
    .param p1, "decodedImage"    # Lc8/axf;
    .param p2, "recycleListener"    # Lc8/bwf;

    .prologue
    .line 107
    invoke-virtual {p0}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v7

    .line 108
    .local v7, "uriInfo":Lc8/Lxf;
    invoke-virtual {p1}, Lc8/axf;->isStaticBitmap()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lc8/cwf;

    invoke-virtual {p1}, Lc8/axf;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lc8/axf;->getBitmapPadding()Landroid/graphics/Rect;

    move-result-object v2

    .line 110
    invoke-virtual {v7}, Lc8/Lxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v7}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v7}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v5

    .line 113
    invoke-virtual {p0}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lc8/cwf;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, p2}, Lc8/cwf;->setStaticImageRecycleListener(Lc8/bwf;)Lc8/cwf;

    move-result-object v0

    .line 119
    :goto_0
    return-object v0

    .line 115
    :cond_0
    new-instance v0, Lc8/Rvf;

    invoke-virtual {p1}, Lc8/axf;->getAnimatedImage()Lc8/ruf;

    move-result-object v1

    .line 116
    invoke-virtual {v7}, Lc8/Lxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v7}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v3

    .line 118
    invoke-virtual {v7}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v4

    .line 119
    invoke-virtual {p0}, Lc8/Jxf;->getDiskCachePriority()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lc8/Rvf;-><init>(Lc8/ruf;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private static newDrawableWithRootImage(Lc8/Svf;Z)Lc8/Yvf;
    .locals 1
    .param p0, "rootImage"    # Lc8/Svf;
    .param p1, "releasable"    # Z

    .prologue
    .line 41
    .line 42
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->applicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {p0, p1, v0}, Lc8/Svf;->newImageDrawableWith(ZLandroid/content/res/Resources;)Lc8/Yvf;

    move-result-object v0

    return-object v0

    .line 42
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected conductResult(Lc8/oyf;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/Yvf;",
            "Lc8/Jxf;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v11, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 71
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc8/Jxf;

    invoke-virtual {v5}, Lc8/Jxf;->isSkipCache()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 103
    :goto_0
    return v7

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lc8/Wvf;->onConductStart(Lc8/oyf;)V

    .line 75
    invoke-interface {p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/Jxf;

    .line 76
    .local v3, "request":Lc8/Jxf;
    invoke-virtual {v3}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-virtual {v3}, Lc8/Jxf;->isReleasableDrawableSpecified()Z

    move-result v2

    .line 79
    .local v2, "releasable":Z
    iget-object v5, p0, Lc8/Wvf;->mMemoryCache:Lc8/Fvf;

    invoke-static {v5, v0, v2}, Lc8/Wvf;->getFilteredCache(Lc8/Fvf;Ljava/lang/String;Z)Lc8/Yvf;

    move-result-object v4

    .line 80
    .local v4, "result":Lc8/Yvf;
    if-eqz v4, :cond_3

    move v1, v6

    .line 81
    .local v1, "isLast":Z
    :goto_1
    const-string/jumbo v5, "MemoryCache"

    const-string/jumbo v8, "read from memcache, result=%B, key=%s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v0, v9, v6

    invoke-static {v5, v3, v8, v9}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    if-nez v1, :cond_1

    invoke-virtual {v3}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v3}, Lc8/Jxf;->getSecondaryUriInfo()Lc8/Lxf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/Lxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v5, p0, Lc8/Wvf;->mMemoryCache:Lc8/Fvf;

    invoke-static {v5, v0, v2}, Lc8/Wvf;->getFilteredCache(Lc8/Fvf;Ljava/lang/String;Z)Lc8/Yvf;

    move-result-object v4

    .line 86
    const-string/jumbo v8, "MemoryCache"

    const-string/jumbo v9, "secondary read from memcache, result=%B, key=%s"

    new-array v10, v11, [Ljava/lang/Object;

    if-eqz v4, :cond_4

    move v5, v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v10, v7

    aput-object v0, v10, v6

    invoke-static {v8, v3, v9, v10}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {v4, v6}, Lc8/Yvf;->fromSecondary(Z)V

    .line 89
    invoke-virtual {v3}, Lc8/Jxf;->disableSecondary()V

    .line 93
    :cond_1
    invoke-virtual {p0, p1, v1}, Lc8/Wvf;->onConductFinish(Lc8/oyf;Z)V

    .line 94
    if-eqz v4, :cond_2

    .line 95
    invoke-interface {p1, v4, v1}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 99
    :cond_2
    if-nez v1, :cond_5

    invoke-virtual {v3}, Lc8/Jxf;->isMemoryOnly()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 100
    new-instance v5, Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;

    invoke-direct {v5}, Lcom/taobao/phenix/cache/memory/MemOnlyFailedException;-><init>()V

    invoke-interface {p1, v5}, Lc8/oyf;->onFailure(Ljava/lang/Throwable;)V

    move v7, v6

    .line 101
    goto :goto_0

    .end local v1    # "isLast":Z
    :cond_3
    move v1, v7

    .line 80
    goto :goto_1

    .restart local v1    # "isLast":Z
    :cond_4
    move v5, v7

    .line 86
    goto :goto_2

    :cond_5
    move v7, v1

    .line 103
    goto/16 :goto_0
.end method

.method public consumeNewResult(Lc8/oyf;ZLc8/axf;)V
    .locals 16
    .param p2, "isLast"    # Z
    .param p3, "decodedImage"    # Lc8/axf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/oyf",
            "<",
            "Lc8/Yvf;",
            "Lc8/Jxf;",
            ">;Z",
            "Lc8/axf;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, "consumer":Lc8/oyf;, "Lcom/taobao/rxm/consume/Consumer<Lcom/taobao/phenix/cache/memory/PassableBitmapDrawable;Lcom/taobao/phenix/request/ImageRequest;>;"
    const/4 v10, 0x0

    .line 125
    .local v10, "willCache":Z
    invoke-interface/range {p1 .. p1}, Lc8/oyf;->getContext()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc8/Jxf;

    .line 126
    .local v6, "request":Lc8/Jxf;
    invoke-virtual {v6}, Lc8/Jxf;->isReleasableDrawableSpecified()Z

    move-result v5

    .line 127
    .local v5, "releasable":Z
    invoke-virtual {v6}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    .line 129
    .local v2, "cacheKey":Ljava/lang/String;
    invoke-virtual {v6}, Lc8/Jxf;->isSkipCache()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v7, 0x0

    .line 130
    .local v7, "response":Lc8/Yvf;
    :goto_0
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 131
    .local v4, "noExistingCache":Z
    :goto_1
    const/4 v9, 0x0

    .line 133
    .local v9, "rootImage":Lc8/Svf;
    if-eqz v4, :cond_5

    .line 134
    sget-object v11, Lc8/Wvf;->sStaticImageRecycleListener:Lc8/bwf;

    move-object/from16 v0, p3

    invoke-static {v6, v0, v11}, Lc8/Wvf;->newCachedRootImage(Lc8/Jxf;Lc8/axf;Lc8/bwf;)Lc8/Svf;

    move-result-object v9

    .line 135
    invoke-static {v9, v5}, Lc8/Wvf;->newDrawableWithRootImage(Lc8/Svf;Z)Lc8/Yvf;

    move-result-object v7

    .line 137
    invoke-virtual {v6}, Lc8/Jxf;->isMultiplexPipeline()Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual/range {p3 .. p3}, Lc8/axf;->needCached()Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v10, 0x1

    .line 140
    :goto_2
    invoke-virtual/range {p3 .. p3}, Lc8/axf;->getEncodedImage()Lc8/cxf;

    move-result-object v3

    .local v3, "encodedImage":Lc8/cxf;
    if-eqz v3, :cond_0

    .line 142
    iget-boolean v11, v3, Lc8/cxf;->fromDisk:Z

    invoke-virtual {v7, v11}, Lc8/Yvf;->fromDisk(Z)V

    .line 143
    iget-boolean v11, v3, Lc8/cxf;->isSecondary:Z

    invoke-virtual {v7, v11}, Lc8/Yvf;->fromSecondary(Z)V

    .line 145
    if-nez p2, :cond_0

    .line 146
    invoke-virtual {v3}, Lc8/cxf;->release()V

    .line 154
    .end local v3    # "encodedImage":Lc8/cxf;
    :cond_0
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Lc8/Jxf;->setWorkThreadEndTime(J)V

    .line 155
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v7, v1}, Lc8/oyf;->onNewResult(Ljava/lang/Object;Z)V

    .line 158
    if-eqz v10, :cond_6

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Wvf;->mMemoryCache:Lc8/Fvf;

    invoke-virtual {v6}, Lc8/Jxf;->getMemoryCachePriority()I

    move-result v12

    invoke-interface {v11, v12, v2, v9}, Lc8/Fvf;->put(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 160
    .local v8, "ret":Z
    const-string/jumbo v11, "MemoryCache"

    const-string/jumbo v12, "write into memcache with priority=%d, result=%B, value=%s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-virtual {v6}, Lc8/Jxf;->getMemoryCachePriority()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x2

    aput-object v9, v13, v14

    invoke-static {v11, v6, v12, v13}, Lc8/qwf;->d(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    .end local v8    # "ret":Z
    :cond_1
    :goto_4
    return-void

    .line 129
    .end local v4    # "noExistingCache":Z
    .end local v7    # "response":Lc8/Yvf;
    .end local v9    # "rootImage":Lc8/Svf;
    :cond_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lc8/Wvf;->mMemoryCache:Lc8/Fvf;

    invoke-static {v11, v2, v5}, Lc8/Wvf;->getFilteredCache(Lc8/Fvf;Ljava/lang/String;Z)Lc8/Yvf;

    move-result-object v7

    goto :goto_0

    .line 130
    .restart local v7    # "response":Lc8/Yvf;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 137
    .restart local v4    # "noExistingCache":Z
    .restart local v9    # "rootImage":Lc8/Svf;
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 149
    :cond_5
    invoke-virtual {v6}, Lc8/Jxf;->isMultiplexPipeline()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 150
    const-string/jumbo v11, "MemoryCache"

    const-string/jumbo v12, "found existing cache before new CachedRootImage with pipeline consume result, key=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v11, v6, v12, v13}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 161
    :cond_6
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lc8/axf;->needCached()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 162
    const-string/jumbo v11, "MemoryCache"

    const-string/jumbo v12, "skip to write into memcache cause the request is not pipeline, key=%s"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-static {v11, v6, v12, v13}, Lc8/qwf;->i(Ljava/lang/String;Lc8/Jxf;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLc8/iyf;)V
    .locals 0

    .prologue
    .line 19
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Wvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method

.method public bridge synthetic consumeNewResult(Lc8/oyf;ZLjava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p3, Lc8/axf;

    invoke-virtual {p0, p1, p2, p3}, Lc8/Wvf;->consumeNewResult(Lc8/oyf;ZLc8/axf;)V

    return-void
.end method
