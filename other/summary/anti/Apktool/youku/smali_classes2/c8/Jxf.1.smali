.class public Lc8/Jxf;
.super Lc8/zyf;
.source "ImageRequest.java"


# static fields
.field private static final ONLY_CACHE_FLAG:I = 0x2

.field private static final SKIP_CACHE_FLAG:I = 0x1


# instance fields
.field private mAllowedSizeLevel:I

.field private mBitmapProcessors:[Lc8/ovf;

.field private mBlockingFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mDiskCachePriority:I

.field private mForcedAnimationStatic:Z

.field private mImageUriInfo:Lc8/Lxf;

.field private mIsRetrying:Z

.field private mLoaderExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxViewHeight:I

.field private mMaxViewWidth:I

.field private mMemoryCachePriority:I

.field private mMemoryOnly:Z

.field private mModuleName:Ljava/lang/String;

.field private mMultiplexKey:Ljava/lang/String;

.field private mMultiplexKeySuffix:Ljava/lang/String;

.field private mPexodeOptions:Lc8/ouf;

.field private final mPhenixTicket:Lc8/nxf;

.field private mProgressUpdateStep:I

.field private mReleasableDrawableSpecified:Z

.field private mRequestStartTime:J

.field private mSecondaryUriInfo:Lc8/Lxf;

.field private mStatistics:Lc8/Kxf;

.field private mSwitchFlags:I

.field private mWorkThreadEndTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lc8/Dvf;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cacheKeyInspector"    # Lc8/Dvf;

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lc8/Jxf;-><init>(Ljava/lang/String;Lc8/Dvf;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lc8/Dvf;Z)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cacheKeyInspector"    # Lc8/Dvf;
    .param p3, "enableGenericTypeCheck"    # Z

    .prologue
    const/16 v0, 0x11

    .line 55
    invoke-direct {p0, p3}, Lc8/zyf;-><init>(Z)V

    .line 42
    iput v0, p0, Lc8/Jxf;->mDiskCachePriority:I

    .line 43
    iput v0, p0, Lc8/Jxf;->mMemoryCachePriority:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lc8/Jxf;->mSwitchFlags:I

    .line 56
    new-instance v0, Lc8/Lxf;

    invoke-direct {v0, p1, p2}, Lc8/Lxf;-><init>(Ljava/lang/String;Lc8/Dvf;)V

    iput-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    .line 57
    new-instance v0, Lc8/Kxf;

    iget-object v1, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-direct {v0, v1}, Lc8/Kxf;-><init>(Lc8/Lxf;)V

    iput-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    .line 58
    new-instance v0, Lc8/nxf;

    invoke-direct {v0, p0}, Lc8/nxf;-><init>(Lc8/zyf;)V

    iput-object v0, p0, Lc8/Jxf;->mPhenixTicket:Lc8/nxf;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Jxf;->mRequestStartTime:J

    .line 60
    const/4 v0, 0x1

    iput v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    .line 61
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget-wide v2, p0, Lc8/Jxf;->mRequestStartTime:J

    invoke-virtual {v0, v2, v3}, Lc8/Kxf;->setRequestStartTime(J)V

    .line 62
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget v1, p0, Lc8/Jxf;->mDiskCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Kxf;->setDiskCachePriority(I)V

    .line 63
    return-void
.end method

.method private declared-synchronized addMultiplexKeySuffix(Ljava/lang/String;)V
    .locals 2
    .param p1, "suffix"    # Ljava/lang/String;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    iput-object p1, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;

    .line 107
    :goto_1
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 105
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static isAllowedSizeLevel(II)Z
    .locals 1
    .param p0, "allowedSizeLevel"    # I
    .param p1, "targetLevel"    # I

    .prologue
    .line 86
    and-int v0, p0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized rebuildKeyIfChanged()V
    .locals 1

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addLoaderExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    .line 326
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget-object v1, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc8/Kxf;->setExtras(Ljava/util/Map;)V

    .line 328
    :cond_0
    iget-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public allowSizeLevel(ZI)V
    .locals 2
    .param p1, "allowed"    # Z
    .param p2, "allowSizeLevel"    # I

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    iget v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    or-int/2addr v0, p2

    iput v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    .line 95
    :goto_0
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 96
    return-void

    .line 93
    :cond_0
    iget v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    goto :goto_0
.end method

.method public asThumbnail(IZ)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "useOriginIfNotExist"    # Z

    .prologue
    .line 150
    invoke-virtual {p0}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/Lxf;->getSchemeInfo()Lc8/Mxf;

    move-result-object v0

    .line 151
    .local v0, "schemeInfo":Lc8/Mxf;
    iput p1, v0, Lc8/Mxf;->thumbnailType:I

    .line 152
    iput-boolean p2, v0, Lc8/Mxf;->useOriginIfThumbNotExist:Z

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "#THUMBNAIL$"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_0

    mul-int/lit16 p1, p1, 0x2710

    .end local p1    # "type":I
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "suffix":Ljava/lang/String;
    invoke-virtual {p0}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v2

    invoke-virtual {v2, v1}, Lc8/Lxf;->addMemoryCacheKeySuffix(Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, v1}, Lc8/Jxf;->addMultiplexKeySuffix(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public disableSecondary()V
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    .line 309
    return-void
.end method

.method public forceAnimationStatic(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 398
    iput-boolean p1, p0, Lc8/Jxf;->mForcedAnimationStatic:Z

    .line 399
    return-void
.end method

.method public getAllowedSizeLevel()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    return v0
.end method

.method public getBitmapProcessors()[Lc8/ovf;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lc8/Jxf;->mBitmapProcessors:[Lc8/ovf;

    return-object v0
.end method

.method public getBlockingFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v0, p0, Lc8/Jxf;->mBlockingFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getDiskCacheCatalog()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v0

    return v0
.end method

.method public getDiskCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCachePriority()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lc8/Jxf;->mDiskCachePriority:I

    return v0
.end method

.method public getImageUriInfo()Lc8/Lxf;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    return-object v0
.end method

.method public getLoaderExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    return-object v0
.end method

.method public getMaxViewHeight()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lc8/Jxf;->mMaxViewHeight:I

    return v0
.end method

.method public getMaxViewWidth()I
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lc8/Jxf;->mMaxViewWidth:I

    return v0
.end method

.method public getMemoryCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCachePriority()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lc8/Jxf;->mMemoryCachePriority:I

    return v0
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/Jxf;->mModuleName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMultiplexKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 244
    iget-object v2, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v2}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "diskCacheKey":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "#SLEVEL$"

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#FLAGS$"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jxf;->mSwitchFlags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#MAXW$"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jxf;->mMaxViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#MAXH$"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jxf;->mMaxViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#SPRIOR$"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lc8/Jxf;->getSchedulePriority()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#DPRIOR$"

    .line 251
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lc8/Jxf;->mDiskCachePriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#CATALOG$"

    .line 252
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v3}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    .local v1, "sb":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    if-eqz v2, :cond_0

    .line 254
    const-string/jumbo v2, "#SECOND$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    .line 255
    invoke-virtual {v3}, Lc8/Lxf;->getDiskCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x24

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    .line 257
    invoke-virtual {v3}, Lc8/Lxf;->getDiskCacheCatalog()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    :cond_0
    iget-object v2, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 260
    iget-object v2, p0, Lc8/Jxf;->mMultiplexKeySuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;

    .line 264
    .end local v0    # "diskCacheKey":Ljava/lang/String;
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    iget-object v2, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .line 242
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPexodeOptions()Lc8/ouf;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lc8/Jxf;->mPexodeOptions:Lc8/ouf;

    return-object v0
.end method

.method public declared-synchronized getPhenixTicket()Lc8/nxf;
    .locals 1

    .prologue
    .line 220
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Jxf;->mPhenixTicket:Lc8/nxf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProduceTimeline()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0}, Lc8/Jxf;->getProducerListener()Lc8/vyf;

    move-result-object v0

    if-nez v0, :cond_0

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 351
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lc8/Jxf;->getProducerListener()Lc8/vyf;

    move-result-object v0

    check-cast v0, Lc8/jwf;

    invoke-virtual {v0}, Lc8/jwf;->getProduceTimeline()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgressUpdateStep()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lc8/Jxf;->mProgressUpdateStep:I

    return v0
.end method

.method public getRequestStartTime()J
    .locals 2

    .prologue
    .line 280
    iget-wide v0, p0, Lc8/Jxf;->mRequestStartTime:J

    return-wide v0
.end method

.method public getSecondaryUriInfo()Lc8/Lxf;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    return-object v0
.end method

.method public declared-synchronized getStatistics()Lc8/Kxf;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWorkThreadEndTime()J
    .locals 2

    .prologue
    .line 284
    iget-wide v0, p0, Lc8/Jxf;->mWorkThreadEndTime:J

    return-wide v0
.end method

.method public isAllowedSizeLevel(I)Z
    .locals 1
    .param p1, "targetLevel"    # I

    .prologue
    .line 82
    iget v0, p0, Lc8/Jxf;->mAllowedSizeLevel:I

    and-int/2addr v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForcedAnimationStatic()Z
    .locals 1

    .prologue
    .line 402
    iget-boolean v0, p0, Lc8/Jxf;->mForcedAnimationStatic:Z

    return v0
.end method

.method public isMemoryOnly()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lc8/Jxf;->mMemoryOnly:Z

    return v0
.end method

.method public isOnlyCache()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lc8/Jxf;->mSwitchFlags:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReleasableDrawableSpecified()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lc8/Jxf;->mReleasableDrawableSpecified:Z

    return v0
.end method

.method public isRetrying()Z
    .locals 1

    .prologue
    .line 374
    iget-boolean v0, p0, Lc8/Jxf;->mIsRetrying:Z

    return v0
.end method

.method public isSkipCache()Z
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lc8/Jxf;->mSwitchFlags:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public memoryOnly(Z)V
    .locals 0
    .param p1, "memOnly"    # Z

    .prologue
    .line 111
    iput-boolean p1, p0, Lc8/Jxf;->mMemoryOnly:Z

    .line 112
    return-void
.end method

.method public onlyCache(Z)V
    .locals 1
    .param p1, "onlyCache"    # Z

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iget v0, p0, Lc8/Jxf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lc8/Jxf;->mSwitchFlags:I

    .line 120
    :goto_0
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 121
    return-void

    .line 118
    :cond_0
    iget v0, p0, Lc8/Jxf;->mSwitchFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lc8/Jxf;->mSwitchFlags:I

    goto :goto_0
.end method

.method public releasableDrawableSpecified(Z)V
    .locals 0
    .param p1, "specified"    # Z

    .prologue
    .line 133
    iput-boolean p1, p0, Lc8/Jxf;->mReleasableDrawableSpecified:Z

    .line 134
    return-void
.end method

.method public declared-synchronized resetBeforeRetry(Ljava/lang/String;)V
    .locals 3
    .param p1, "retryUrl"    # Ljava/lang/String;

    .prologue
    .line 379
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lc8/zyf;->reset()V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Jxf;->mIsRetrying:Z

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc8/Jxf;->mRequestStartTime:J

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jxf;->mBlockingFuture:Ljava/util/concurrent/Future;

    .line 384
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v0}, Lc8/Lxf;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lc8/Lxf;

    iget-object v1, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v1}, Lc8/Lxf;->getCacheKeyInspector()Lc8/Dvf;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Lxf;-><init>(Ljava/lang/String;Lc8/Dvf;)V

    iput-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    .line 386
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/Jxf;->mMultiplexKey:Ljava/lang/String;

    .line 388
    :cond_0
    new-instance v0, Lc8/Kxf;

    iget-object v1, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lc8/Kxf;-><init>(Lc8/Lxf;Z)V

    iput-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    .line 390
    iget-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 391
    iget-object v0, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    const-string/jumbo v1, "inner_is_async_http"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget-object v1, p0, Lc8/Jxf;->mLoaderExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lc8/Kxf;->setExtras(Ljava/util/Map;)V

    .line 394
    :cond_1
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget v1, p0, Lc8/Jxf;->mDiskCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Kxf;->setDiskCachePriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    monitor-exit p0

    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBitmapProcessors([Lc8/ovf;)V
    .locals 7
    .param p1, "bitmapProcessors"    # [Lc8/ovf;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const-string/jumbo v2, ""

    .line 162
    .local v2, "suffix":Ljava/lang/String;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, p1, v3

    .line 163
    .local v1, "processor":Lc8/ovf;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "#PROCESSOR_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-interface {v1}, Lc8/ovf;->getId()Ljava/lang/String;

    move-result-object v0

    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 165
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "processor":Lc8/ovf;
    :cond_1
    iput-object p1, p0, Lc8/Jxf;->mBitmapProcessors:[Lc8/ovf;

    .line 169
    invoke-virtual {p0}, Lc8/Jxf;->getImageUriInfo()Lc8/Lxf;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/Lxf;->addMemoryCacheKeySuffix(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0, v2}, Lc8/Jxf;->addMultiplexKeySuffix(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setBlockingFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, "blockingFuture":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lc8/Jxf;->mBlockingFuture:Ljava/util/concurrent/Future;

    .line 337
    return-void
.end method

.method public setDiskCachePriority(I)V
    .locals 2
    .param p1, "priority"    # I

    .prologue
    .line 207
    iget v0, p0, Lc8/Jxf;->mDiskCachePriority:I

    if-eq v0, p1, :cond_0

    .line 208
    iput p1, p0, Lc8/Jxf;->mDiskCachePriority:I

    .line 209
    iget-object v0, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    iget v1, p0, Lc8/Jxf;->mDiskCachePriority:I

    invoke-virtual {v0, v1}, Lc8/Kxf;->setDiskCachePriority(I)V

    .line 210
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 212
    :cond_0
    return-void
.end method

.method public setMaxViewHeight(I)V
    .locals 3
    .param p1, "maxViewHeight"    # I

    .prologue
    .line 182
    iget v0, p0, Lc8/Jxf;->mMaxViewHeight:I

    if-eq v0, p1, :cond_0

    .line 183
    iput p1, p0, Lc8/Jxf;->mMaxViewHeight:I

    .line 184
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    iget v1, p0, Lc8/Jxf;->mMaxViewWidth:I

    iget v2, p0, Lc8/Jxf;->mMaxViewHeight:I

    invoke-virtual {v0, v1, v2}, Lc8/Lxf;->setMaxViewSize(II)V

    .line 185
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 187
    :cond_0
    return-void
.end method

.method public setMaxViewWidth(I)V
    .locals 3
    .param p1, "maxViewWidth"    # I

    .prologue
    .line 174
    iget v0, p0, Lc8/Jxf;->mMaxViewWidth:I

    if-eq v0, p1, :cond_0

    .line 175
    iput p1, p0, Lc8/Jxf;->mMaxViewWidth:I

    .line 176
    iget-object v0, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    iget v1, p0, Lc8/Jxf;->mMaxViewWidth:I

    iget v2, p0, Lc8/Jxf;->mMaxViewHeight:I

    invoke-virtual {v0, v1, v2}, Lc8/Lxf;->setMaxViewSize(II)V

    .line 177
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 179
    :cond_0
    return-void
.end method

.method public setMemoryCachePriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 203
    iput p1, p0, Lc8/Jxf;->mMemoryCachePriority:I

    .line 204
    return-void
.end method

.method public setModuleName(Ljava/lang/String;)V
    .locals 0
    .param p1, "moduleName"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lc8/Jxf;->mModuleName:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setPexodeOptions(Lc8/ouf;)V
    .locals 0
    .param p1, "pexodeOptions"    # Lc8/ouf;

    .prologue
    .line 344
    iput-object p1, p0, Lc8/Jxf;->mPexodeOptions:Lc8/ouf;

    .line 345
    return-void
.end method

.method public setProgressUpdateStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 194
    iput p1, p0, Lc8/Jxf;->mProgressUpdateStep:I

    .line 195
    return-void
.end method

.method public setSecondaryPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 316
    new-instance v0, Lc8/Lxf;

    iget-object v1, p0, Lc8/Jxf;->mImageUriInfo:Lc8/Lxf;

    invoke-virtual {v1}, Lc8/Lxf;->getCacheKeyInspector()Lc8/Dvf;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lc8/Lxf;-><init>(Ljava/lang/String;Lc8/Dvf;)V

    iput-object v0, p0, Lc8/Jxf;->mSecondaryUriInfo:Lc8/Lxf;

    .line 317
    return-void
.end method

.method public setWorkThreadEndTime(J)V
    .locals 1
    .param p1, "workThreadEndTime"    # J

    .prologue
    .line 288
    iput-wide p1, p0, Lc8/Jxf;->mWorkThreadEndTime:J

    .line 289
    return-void
.end method

.method public skipCache()V
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lc8/Jxf;->mSwitchFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/Jxf;->mSwitchFlags:I

    .line 125
    invoke-direct {p0}, Lc8/Jxf;->rebuildKeyIfChanged()V

    .line 126
    return-void
.end method

.method public syncFrom(Lc8/zyf;)V
    .locals 8
    .param p1, "pipeline"    # Lc8/zyf;

    .prologue
    .line 357
    move-object v2, p1

    check-cast v2, Lc8/Jxf;

    .line 358
    .local v2, "pipe":Lc8/Jxf;
    invoke-virtual {v2}, Lc8/Jxf;->getStatistics()Lc8/Kxf;

    move-result-object v4

    .line 359
    .local v4, "pipeStat":Lc8/Kxf;
    iget-object v5, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lc8/Kxf;->duplicate(Z)V

    .line 360
    iget-object v5, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    invoke-virtual {v4}, Lc8/Kxf;->getFromType()Lcom/taobao/phenix/request/ImageStatistics$FromType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Kxf;->fromType(Lcom/taobao/phenix/request/ImageStatistics$FromType;)V

    .line 361
    iget-object v5, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    invoke-virtual {v4}, Lc8/Kxf;->getFormat()Lc8/Yuf;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Kxf;->setCompressFormat(Lc8/Yuf;)V

    .line 362
    iget-object v5, p0, Lc8/Jxf;->mStatistics:Lc8/Kxf;

    invoke-virtual {v4}, Lc8/Kxf;->getSize()I

    move-result v6

    invoke-virtual {v5, v6}, Lc8/Kxf;->setSize(I)V

    .line 364
    invoke-virtual {p0}, Lc8/Jxf;->getProduceTimeline()Ljava/util/Map;

    move-result-object v1

    .line 365
    .local v1, "myDetail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-virtual {v2}, Lc8/Jxf;->getProduceTimeline()Ljava/util/Map;

    move-result-object v3

    .line 366
    .local v3, "pipeDetail":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 368
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    return-void
.end method
