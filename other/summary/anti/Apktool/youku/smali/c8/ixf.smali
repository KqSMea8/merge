.class public Lc8/ixf;
.super Ljava/lang/Object;
.source "Phenix.java"

# interfaces
.implements Lc8/uvf;


# static fields
.field private static sPhenix:Lc8/ixf;


# instance fields
.field private final mBitmapPoolBuilder:Lc8/qvf;

.field private final mBytesPoolBuilder:Lc8/tvf;

.field private mCacheKeyInspector:Lc8/Dvf;

.field private mContext:Landroid/content/Context;

.field private final mDiskCacheBuilder:Lc8/vvf;

.field private mEnableGenericTypeCheck:Z

.field private mEncodedDataInspector:Lc8/Zwf;

.field private mExtendedSchemeHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/xxf;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileLoaderBuilder:Lc8/wvf;

.field private mHasBuilt:Z

.field private final mHttpLoaderBuilder:Lc8/xvf;

.field private mImageDecodingListener:Lc8/ewf;

.field private mImageFlowMonitor:Lc8/Ixf;

.field private final mMemCacheBuilder:Lc8/zvf;

.field private mModuleStrategySupplier:Lc8/Oxf;

.field private mPrefetchProducerSupplier:Lc8/kwf;

.field private mPreloadWithLowImage:Z

.field private final mProducerSupplier:Lc8/fwf;

.field private mScaleWithLargeImage:Z

.field private final mSchedulerBuilder:Lc8/Avf;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-boolean v0, p0, Lc8/ixf;->mPreloadWithLowImage:Z

    .line 86
    iput-boolean v0, p0, Lc8/ixf;->mScaleWithLargeImage:Z

    .line 87
    new-instance v0, Lc8/zvf;

    invoke-direct {v0}, Lc8/zvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    .line 88
    new-instance v0, Lc8/qvf;

    invoke-direct {v0}, Lc8/qvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mBitmapPoolBuilder:Lc8/qvf;

    .line 89
    new-instance v0, Lc8/vvf;

    invoke-direct {v0}, Lc8/vvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mDiskCacheBuilder:Lc8/vvf;

    .line 90
    new-instance v0, Lc8/tvf;

    invoke-direct {v0}, Lc8/tvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mBytesPoolBuilder:Lc8/tvf;

    .line 91
    new-instance v0, Lc8/wvf;

    invoke-direct {v0}, Lc8/wvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mFileLoaderBuilder:Lc8/wvf;

    .line 92
    new-instance v0, Lc8/xvf;

    invoke-direct {v0}, Lc8/xvf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mHttpLoaderBuilder:Lc8/xvf;

    .line 93
    new-instance v0, Lc8/Avf;

    invoke-direct {v0}, Lc8/Avf;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mSchedulerBuilder:Lc8/Avf;

    .line 94
    new-instance v0, Lc8/fwf;

    invoke-direct {v0, p0}, Lc8/fwf;-><init>(Lc8/uvf;)V

    iput-object v0, p0, Lc8/ixf;->mProducerSupplier:Lc8/fwf;

    .line 95
    return-void
.end method

.method private getModuleStrategy(Ljava/lang/String;)Lc8/Nxf;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v0, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    invoke-interface {v0, p1}, Lc8/Oxf;->get(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v0

    .line 268
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPreloadStrategy(Ljava/lang/String;)Lc8/Nxf;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x11

    .line 273
    iget-object v1, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    invoke-interface {v1, p1}, Lc8/Oxf;->get(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v0

    .line 275
    .local v0, "strategy":Lc8/Nxf;
    if-nez v0, :cond_1

    .line 276
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "preload module["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] strategy hasn\'t been registered, please contact zhaomi.zm@alibaba-inc.com"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    .end local v0    # "strategy":Lc8/Nxf;
    :cond_0
    new-instance v0, Lc8/Nxf;

    const-string/jumbo v1, "common"

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    move v4, v3

    invoke-direct/range {v0 .. v6}, Lc8/Nxf;-><init>(Ljava/lang/String;IIIZZ)V

    .line 281
    .restart local v0    # "strategy":Lc8/Nxf;
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized instance()Lc8/ixf;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lc8/ixf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lc8/ixf;->sPhenix:Lc8/ixf;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lc8/ixf;

    invoke-direct {v0}, Lc8/ixf;-><init>()V

    sput-object v0, Lc8/ixf;->sPhenix:Lc8/ixf;

    .line 54
    :cond_0
    sget-object v0, Lc8/ixf;->sPhenix:Lc8/ixf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static reset()V
    .locals 1
    .annotation build Lc8/PNf;
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    sput-object v0, Lc8/ixf;->sPhenix:Lc8/ixf;

    .line 60
    return-void
.end method


# virtual methods
.method public applicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public bitmapPoolBuilder()Lc8/qvf;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lc8/ixf;->mBitmapPoolBuilder:Lc8/qvf;

    return-object v0
.end method

.method public declared-synchronized build()V
    .locals 3

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "Phenix.with(Context) hasn\'t been called before chain producer building"

    invoke-static {v0, v1}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lc8/ixf;->mProducerSupplier:Lc8/fwf;

    invoke-virtual {v0}, Lc8/fwf;->buildChain()V

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ixf;->mHasBuilt:Z

    .line 241
    const-string/jumbo v0, "Initialize"

    const-string/jumbo v1, "Phenix chain producer build complete"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bytesPoolBuilder()Lc8/tvf;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lc8/ixf;->mBytesPoolBuilder:Lc8/tvf;

    return-object v0
.end method

.method public cancel(Lc8/nxf;)V
    .locals 0
    .param p1, "t"    # Lc8/nxf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 391
    if-eqz p1, :cond_0

    .line 392
    invoke-virtual {p1}, Lc8/nxf;->cancel()Z

    .line 394
    :cond_0
    return-void
.end method

.method public clearAll()V
    .locals 5

    .prologue
    .line 372
    iget-boolean v2, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v2, :cond_0

    .line 383
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v2, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    invoke-virtual {v2}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v2

    invoke-interface {v2}, Lc8/Fvf;->clear()V

    .line 376
    iget-object v2, p0, Lc8/ixf;->mDiskCacheBuilder:Lc8/vvf;

    invoke-virtual {v2}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v2

    invoke-interface {v2}, Lc8/Mvf;->getAll()Ljava/util/Collection;

    move-result-object v1

    .line 377
    .local v1, "diskCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/phenix/cache/disk/DiskCache;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jvf;

    .line 378
    .local v0, "diskCache":Lc8/Jvf;
    iget-object v3, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v3}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-interface {v0}, Lc8/Jvf;->clear()V

    goto :goto_1

    .line 382
    .end local v0    # "diskCache":Lc8/Jvf;
    :cond_2
    const-string/jumbo v2, "UserAction"

    const-string/jumbo v3, "clear all phenix cache"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearCache(Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 358
    iget-boolean v6, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v6, :cond_0

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    new-instance v3, Lc8/Jxf;

    iget-object v6, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    iget-boolean v7, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    invoke-direct {v3, p1, v6, v7}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 362
    .local v3, "tempRequest":Lc8/Jxf;
    iget-object v6, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    invoke-virtual {v6}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v6

    invoke-virtual {v3}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lc8/Fvf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v6, p0, Lc8/ixf;->mDiskCacheBuilder:Lc8/vvf;

    invoke-virtual {v6}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v6

    invoke-interface {v6}, Lc8/Mvf;->getAll()Ljava/util/Collection;

    move-result-object v1

    .line 364
    .local v1, "diskCaches":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/taobao/phenix/cache/disk/DiskCache;>;"
    const/4 v2, 0x0

    .line 365
    .local v2, "result":Z
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Jvf;

    .line 366
    .local v0, "diskCache":Lc8/Jvf;
    invoke-virtual {v3}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v8

    invoke-interface {v0, v7, v8}, Lc8/Jvf;->remove(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    move v2, v5

    .line 367
    :goto_2
    goto :goto_1

    :cond_2
    move v2, v4

    .line 366
    goto :goto_2

    .line 368
    .end local v0    # "diskCache":Lc8/Jvf;
    :cond_3
    const-string/jumbo v6, "UserAction"

    const-string/jumbo v7, "clear cache with key, result=%B"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v5, v4

    invoke-static {v6, p1, v7, v5}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 342
    iget-boolean v5, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v5, :cond_0

    .line 350
    :goto_0
    return v4

    .line 345
    :cond_0
    new-instance v2, Lc8/Jxf;

    iget-object v5, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    iget-boolean v6, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    invoke-direct {v2, p2, v5, v6}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 346
    .local v2, "tempRequest":Lc8/Jxf;
    iget-object v5, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    invoke-virtual {v5}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v5

    invoke-virtual {v2}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lc8/Fvf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-direct {p0, p1}, Lc8/ixf;->getModuleStrategy(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v1

    .line 348
    .local v1, "strategy":Lc8/Nxf;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lc8/ixf;->mDiskCacheBuilder:Lc8/vvf;

    invoke-virtual {v5}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v5

    iget v6, v1, Lc8/Nxf;->diskCachePriority:I

    invoke-interface {v5, v6}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v5

    invoke-virtual {v2}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v7

    invoke-interface {v5, v6, v7}, Lc8/Jvf;->remove(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 349
    .local v0, "ret":Z
    :goto_1
    const-string/jumbo v5, "UserAction"

    const-string/jumbo v6, "clear cache with module=%s, result=%B"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v5, p2, v6, v7}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v0

    .line 350
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_1
    move v0, v4

    .line 348
    goto :goto_1
.end method

.method public clearMemory(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "urlOrKey"    # Ljava/lang/String;
    .param p2, "isKey"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-boolean v3, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v3, :cond_0

    .line 333
    :goto_0
    return v2

    .line 327
    :cond_0
    if-eqz p2, :cond_2

    .line 328
    iget-object v3, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    invoke-virtual {v3}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v3

    invoke-interface {v3, p1}, Lc8/Fvf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 332
    .local v0, "ret":Z
    :goto_1
    const-string/jumbo v3, "UserAction"

    const-string/jumbo v4, "clear image memory with(urlOrKey=%s isKey=%b), result=%B"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v5, v1

    invoke-static {v3, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 333
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_1
    move v0, v2

    .line 328
    goto :goto_1

    .line 330
    :cond_2
    iget-object v3, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    invoke-virtual {v3}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v3

    new-instance v4, Lc8/Jxf;

    iget-object v5, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    iget-boolean v6, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    invoke-direct {v4, p1, v5, v6}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    invoke-virtual {v4}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/Fvf;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    move v0, v1

    .restart local v0    # "ret":Z
    :goto_2
    goto :goto_1

    .end local v0    # "ret":Z
    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public diskCacheBuilder()Lc8/vvf;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lc8/ixf;->mDiskCacheBuilder:Lc8/vvf;

    return-object v0
.end method

.method public fetchDiskCache(Ljava/lang/String;Ljava/lang/String;IZ)Lc8/exf;
    .locals 12
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "urlOrDirectKey"    # Ljava/lang/String;
    .param p3, "directCatalog"    # I
    .param p4, "isDirectKey"    # Z

    .prologue
    .line 411
    invoke-static {}, Lc8/NNf;->isMainThread()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    const-string/jumbo v8, "fetchDiskCache must be called in non-main thread"

    invoke-static {v7, v8}, Lc8/LNf;->checkArgument(ZLjava/lang/Object;)V

    .line 412
    iget-boolean v7, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v7, :cond_1

    .line 413
    const/4 v2, 0x0

    .line 442
    :goto_1
    return-object v2

    .line 411
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 418
    :cond_1
    if-eqz p4, :cond_4

    .line 419
    move-object v5, p2

    .line 420
    .local v5, "targetKey":Ljava/lang/String;
    move v4, p3

    .line 430
    .local v4, "targetCatalog":I
    :goto_2
    const/16 v1, 0x11

    .line 431
    .local v1, "diskCachePriority":I
    invoke-direct {p0, p1}, Lc8/ixf;->getModuleStrategy(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v3

    .line 432
    .local v3, "strategy":Lc8/Nxf;
    if-eqz v3, :cond_2

    .line 433
    iget v1, v3, Lc8/Nxf;->diskCachePriority:I

    .line 436
    :cond_2
    const/4 v2, 0x0

    .line 437
    .local v2, "ret":Lc8/exf;
    invoke-virtual {p0}, Lc8/ixf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v7

    invoke-interface {v7, v1}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v0

    .line 438
    .local v0, "diskCache":Lc8/Jvf;
    if-eqz v0, :cond_3

    iget-object v7, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    invoke-interface {v0, v7}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 439
    invoke-interface {v0, v5, v4}, Lc8/Jvf;->get(Ljava/lang/String;I)Lc8/exf;

    move-result-object v2

    .line 441
    :cond_3
    const-string/jumbo v8, "UserAction"

    const-string/jumbo v9, "fetch disk cache, module=%s, catalog=%d, direct=%b, result=%B"

    const/4 v7, 0x4

    new-array v10, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v10, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v7, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v7

    const/4 v11, 0x3

    if-eqz v2, :cond_6

    const/4 v7, 0x1

    :goto_3
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v10, v11

    invoke-static {v8, p2, v9, v10}, Lc8/qwf;->dp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v0    # "diskCache":Lc8/Jvf;
    .end local v1    # "diskCachePriority":I
    .end local v2    # "ret":Lc8/exf;
    .end local v3    # "strategy":Lc8/Nxf;
    .end local v4    # "targetCatalog":I
    .end local v5    # "targetKey":Ljava/lang/String;
    :cond_4
    new-instance v6, Lc8/Jxf;

    iget-object v7, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    iget-boolean v8, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    invoke-direct {v6, p2, v7, v8}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 423
    .local v6, "tempRequest":Lc8/Jxf;
    invoke-virtual {v6}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v7

    invoke-virtual {v7}, Lc8/Lxf;->isLocalUri()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 424
    const/4 v2, 0x0

    goto :goto_1

    .line 426
    :cond_5
    invoke-virtual {v6}, Lc8/Jxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    .line 427
    .restart local v5    # "targetKey":Ljava/lang/String;
    invoke-virtual {v6}, Lc8/Jxf;->getDiskCacheCatalog()I

    move-result v4

    .restart local v4    # "targetCatalog":I
    goto :goto_2

    .line 441
    .end local v6    # "tempRequest":Lc8/Jxf;
    .restart local v0    # "diskCache":Lc8/Jvf;
    .restart local v1    # "diskCachePriority":I
    .restart local v2    # "ret":Lc8/exf;
    .restart local v3    # "strategy":Lc8/Nxf;
    :cond_6
    const/4 v7, 0x0

    goto :goto_3
.end method

.method public fetchMemCache(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 403
    iget-boolean v1, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v1, :cond_0

    .line 404
    const/4 v1, 0x0

    .line 407
    :goto_0
    return-object v1

    .line 406
    :cond_0
    new-instance v0, Lc8/Jxf;

    iget-object v1, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    iget-boolean v2, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    invoke-direct {v0, p1, v1, v2}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 407
    .local v0, "tempRequest":Lc8/Jxf;
    invoke-virtual {p0}, Lc8/ixf;->memCacheBuilder()Lc8/zvf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/zvf;->build()Lc8/Fvf;

    move-result-object v1

    invoke-virtual {v0}, Lc8/Jxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lc8/Wvf;->getFilteredCache(Lc8/Fvf;Ljava/lang/String;Z)Lc8/Yvf;

    move-result-object v1

    goto :goto_0
.end method

.method public fileLoaderBuilder()Lc8/wvf;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lc8/ixf;->mFileLoaderBuilder:Lc8/wvf;

    return-object v0
.end method

.method getCacheKeyInspector()Lc8/Dvf;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    return-object v0
.end method

.method public getEncodedDataInspector()Lc8/Zwf;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lc8/ixf;->mEncodedDataInspector:Lc8/Zwf;

    return-object v0
.end method

.method public getExtendedSchemeHandlers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lc8/xxf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    return-object v0
.end method

.method getImageDecodingListener()Lc8/ewf;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lc8/ixf;->mImageDecodingListener:Lc8/ewf;

    return-object v0
.end method

.method getImageFlowMonitor()Lc8/Ixf;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lc8/ixf;->mImageFlowMonitor:Lc8/Ixf;

    return-object v0
.end method

.method getModuleStrategySupplier()Lc8/Oxf;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    return-object v0
.end method

.method declared-synchronized getPrefetchProducerSupplier()Lc8/kwf;
    .locals 1

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/ixf;->mPrefetchProducerSupplier:Lc8/kwf;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lc8/kwf;

    invoke-direct {v0, p0}, Lc8/kwf;-><init>(Lc8/uvf;)V

    iput-object v0, p0, Lc8/ixf;->mPrefetchProducerSupplier:Lc8/kwf;

    .line 110
    :cond_0
    iget-boolean v0, p0, Lc8/ixf;->mHasBuilt:Z

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lc8/ixf;->mPrefetchProducerSupplier:Lc8/kwf;

    invoke-virtual {v0}, Lc8/kwf;->buildChain()V

    .line 113
    :cond_1
    iget-object v0, p0, Lc8/ixf;->mPrefetchProducerSupplier:Lc8/kwf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getProducerSupplier()Lc8/fwf;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lc8/ixf;->mProducerSupplier:Lc8/fwf;

    return-object v0
.end method

.method public getSchedulerSupplierUsedInProducer()Lc8/Oyf;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/ixf;->mProducerSupplier:Lc8/fwf;

    invoke-virtual {v0}, Lc8/fwf;->getSchedulerSupplierUsedInProducer()Lc8/Oyf;

    move-result-object v0

    return-object v0
.end method

.method public hasCategorys(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/hxf;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 453
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v3, "retList":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/phenix/intf/ImageInfo;>;"
    iget-boolean v5, p0, Lc8/ixf;->mHasBuilt:Z

    if-nez v5, :cond_0

    .line 470
    :goto_0
    return-object v3

    .line 458
    :cond_0
    new-instance v4, Lc8/Lxf;

    iget-object v5, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    invoke-direct {v4, p1, v5}, Lc8/Lxf;-><init>(Ljava/lang/String;Lc8/Dvf;)V

    .line 459
    .local v4, "uriInfo":Lc8/Lxf;
    invoke-virtual {p0}, Lc8/ixf;->diskCacheBuilder()Lc8/vvf;

    move-result-object v5

    invoke-virtual {v5}, Lc8/vvf;->build()Lc8/Mvf;

    move-result-object v5

    const/16 v7, 0x11

    invoke-interface {v5, v7}, Lc8/Mvf;->get(I)Lc8/Jvf;

    move-result-object v2

    .line 461
    .local v2, "diskCache":Lc8/Jvf;
    iget-object v5, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    invoke-interface {v2, v5}, Lc8/Jvf;->open(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 462
    invoke-virtual {v4}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lc8/Jvf;->getCatalogs(Ljava/lang/String;)[I

    move-result-object v1

    .line 463
    .local v1, "catalogs":[I
    if-eqz v1, :cond_1

    .line 464
    array-length v7, v1

    move v5, v6

    :goto_1
    if-ge v5, v7, :cond_1

    aget v0, v1, v5

    .line 465
    .local v0, "catalog":I
    new-instance v8, Lc8/hxf;

    invoke-static {v0}, Lc8/owf;->getSplitWidth(I)I

    move-result v9

    invoke-static {v0}, Lc8/owf;->getSplitHeight(I)I

    move-result v10

    invoke-direct {v8, v9, v10}, Lc8/hxf;-><init>(II)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "catalog":I
    .end local v1    # "catalogs":[I
    :cond_1
    const-string/jumbo v5, "UserAction"

    const-string/jumbo v7, "find cache categories, size=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-static {v5, p1, v7, v8}, Lc8/qwf;->ip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public httpLoaderBuilder()Lc8/xvf;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lc8/ixf;->mHttpLoaderBuilder:Lc8/xvf;

    return-object v0
.end method

.method public isGenericTypeCheckEnabled()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    return v0
.end method

.method isPreloadWithLowImage()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lc8/ixf;->mPreloadWithLowImage:Z

    return v0
.end method

.method isScaleWithLargeImage()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lc8/ixf;->mScaleWithLargeImage:Z

    return v0
.end method

.method public load(Ljava/lang/String;)Lc8/mxf;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v1

    invoke-virtual {v1}, Lc8/ixf;->getCacheKeyInspector()Lc8/Dvf;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lc8/ixf;->load(Ljava/lang/String;Ljava/lang/String;Lc8/Dvf;)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Lc8/Dvf;)Lc8/mxf;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "inspector"    # Lc8/Dvf;

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lc8/ixf;->load(Ljava/lang/String;Ljava/lang/String;Lc8/Dvf;)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;)Lc8/mxf;
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 300
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v0

    invoke-virtual {v0}, Lc8/ixf;->getCacheKeyInspector()Lc8/Dvf;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lc8/ixf;->load(Ljava/lang/String;Ljava/lang/String;Lc8/Dvf;)Lc8/mxf;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;Ljava/lang/String;Lc8/Dvf;)Lc8/mxf;
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "inspector"    # Lc8/Dvf;

    .prologue
    .line 292
    new-instance v0, Lc8/mxf;

    invoke-direct {p0, p1}, Lc8/ixf;->getModuleStrategy(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3}, Lc8/mxf;-><init>(Lc8/Nxf;Ljava/lang/String;Lc8/Dvf;)V

    return-object v0
.end method

.method public memCacheBuilder()Lc8/zvf;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lc8/ixf;->mMemCacheBuilder:Lc8/zvf;

    return-object v0
.end method

.method public preload(Ljava/lang/String;Ljava/util/List;)Lc8/oxf;
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lc8/oxf;"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lc8/oxf;

    invoke-direct {p0, p1}, Lc8/ixf;->getPreloadStrategy(Ljava/lang/String;)Lc8/Nxf;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lc8/oxf;-><init>(Lc8/Nxf;Ljava/util/List;)V

    return-object v0
.end method

.method public preloadWithLowImage(Z)Lc8/ixf;
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 260
    iput-boolean p1, p0, Lc8/ixf;->mPreloadWithLowImage:Z

    .line 261
    return-object p0
.end method

.method public registerLocalSchemeHandler(Lc8/xxf;)Z
    .locals 1
    .param p1, "handler"    # Lc8/xxf;

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    .line 169
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public scaleWithLargeImage(Z)Lc8/ixf;
    .locals 0
    .param p1, "isOpen"    # Z

    .prologue
    .line 254
    iput-boolean p1, p0, Lc8/ixf;->mScaleWithLargeImage:Z

    .line 255
    return-object p0
.end method

.method public schedulerBuilder()Lc8/Avf;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lc8/ixf;->mSchedulerBuilder:Lc8/Avf;

    return-object v0
.end method

.method public setCacheKeyInspector(Lc8/Dvf;)V
    .locals 0
    .param p1, "inspector"    # Lc8/Dvf;

    .prologue
    .line 146
    iput-object p1, p0, Lc8/ixf;->mCacheKeyInspector:Lc8/Dvf;

    .line 147
    return-void
.end method

.method public setEncodedDataInspector(Lc8/Zwf;)V
    .locals 0
    .param p1, "inspector"    # Lc8/Zwf;

    .prologue
    .line 159
    iput-object p1, p0, Lc8/ixf;->mEncodedDataInspector:Lc8/Zwf;

    .line 160
    return-void
.end method

.method public setImageDecodingListener(Lc8/ewf;)V
    .locals 0
    .param p1, "listener"    # Lc8/ewf;

    .prologue
    .line 478
    iput-object p1, p0, Lc8/ixf;->mImageDecodingListener:Lc8/ewf;

    .line 479
    return-void
.end method

.method public setImageFlowMonitor(Lc8/Ixf;)V
    .locals 4
    .param p1, "imageFlowMonitor"    # Lc8/Ixf;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/ixf;->mImageFlowMonitor:Lc8/Ixf;

    .line 151
    const-string/jumbo v0, "Initialize"

    const-string/jumbo v1, "setup image flow monitor=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return-void
.end method

.method public setModuleStrategySupplier(Lc8/Oxf;)V
    .locals 0
    .param p1, "supplier"    # Lc8/Oxf;

    .prologue
    .line 155
    iput-object p1, p0, Lc8/ixf;->mModuleStrategySupplier:Lc8/Oxf;

    .line 156
    return-void
.end method

.method public shutdown()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 485
    return-void
.end method

.method public skipGenericTypeCheck(Z)V
    .locals 1
    .param p1, "skip"    # Z

    .prologue
    .line 133
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/ixf;->mEnableGenericTypeCheck:Z

    .line 134
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterLocalSchemeHandler(Lc8/xxf;)Z
    .locals 2
    .param p1, "handler"    # Lc8/xxf;

    .prologue
    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "ret":Z
    iget-object v1, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 176
    :goto_0
    iget-object v1, p0, Lc8/ixf;->mExtendedSchemeHandlers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return v0
.end method

.method public declared-synchronized with(Landroid/content/Context;)Lc8/ixf;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "Phenix with context must not be null."

    invoke-static {p1, v0}, Lc8/LNf;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v0, p0, Lc8/ixf;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc8/ixf;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    :cond_0
    monitor-exit p0

    return-object p0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
