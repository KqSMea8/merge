.class public Lc8/Uvf;
.super Lc8/Evf;
.source "ImageCacheAndPool.java"

# interfaces
.implements Lc8/lvf;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Evf",
        "<",
        "Ljava/lang/String;",
        "Lc8/Svf;",
        ">;",
        "Lc8/lvf;"
    }
.end annotation


# static fields
.field public static final CEILING_SIZE_MAX_MULTIPLE:I = 0x6

.field public static final TAG:Ljava/lang/String; = "ImageCachePool"

.field public static final TAG_POOL:Ljava/lang/String; = "BitmapPool"

.field public static final TAG_RECYCLE:Ljava/lang/String; = "ImageRecycle"


# instance fields
.field private final POOL_LOCK:Ljava/lang/Object;

.field private mAvailableSize:I

.field private mCurrCount:I

.field private mHitCount:I

.field private mMissCount:I

.field private mSizeGroup:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IF)V
    .locals 5
    .param p1, "maxSize"    # I
    .param p2, "hotPercent"    # F

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lc8/Evf;-><init>(IF)V

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/Uvf;->POOL_LOCK:Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    .line 36
    const-string/jumbo v0, "ImageCachePool"

    const-string/jumbo v1, "init with maxSize=%K, hotPercent=%.1f%%"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method

.method private getByteCountFromConfig(Landroid/graphics/Bitmap$Config;)I
    .locals 2
    .param p1, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    sget-object v0, Lc8/Tvf;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 60
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 62
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getStaticImageSize4Pool(Lc8/Svf;)I
    .locals 2
    .param p1, "value"    # Lc8/Svf;

    .prologue
    .line 70
    instance-of v1, p1, Lc8/cwf;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 71
    check-cast v1, Lc8/cwf;

    iget-object v0, v1, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    .line 72
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {p1}, Lc8/Svf;->getSize()I

    move-result v1

    .line 76
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lc8/Uvf;->mAvailableSize:I

    return v0
.end method

.method protected boardPool()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    .line 116
    invoke-static {v7}, Lc8/qwf;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string/jumbo v0, "BitmapPool"

    const-string/jumbo v1, "%K/%K, rate:%.1f%%, hits:%d, misses:%d, count:%d"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lc8/Uvf;->mAvailableSize:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lc8/Uvf;->maxPreEvictedSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x42c80000    # 100.0f

    iget v5, p0, Lc8/Uvf;->mHitCount:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lc8/Uvf;->mHitCount:I

    iget v6, p0, Lc8/Uvf;->mMissCount:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p0, Lc8/Uvf;->mHitCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x4

    iget v4, p0, Lc8/Uvf;->mMissCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget v4, p0, Lc8/Uvf;->mCurrCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public final declared-synchronized clear()V
    .locals 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lc8/Evf;->clear()V

    .line 203
    iget-object v1, p0, Lc8/Uvf;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 204
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lc8/Uvf;->mAvailableSize:I

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lc8/Uvf;->mCurrCount:I

    .line 206
    iget-object v0, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 202
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final get(Ljava/lang/String;)Lc8/Svf;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lc8/Evf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Svf;

    .line 213
    .local v0, "ret":Lc8/Svf;
    const-string/jumbo v1, "ImageCachePool"

    invoke-virtual {p0, v1}, Lc8/Uvf;->board(Ljava/lang/String;)V

    .line 214
    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Uvf;->get(Ljava/lang/String;)Lc8/Svf;

    move-result-object v0

    return-object v0
.end method

.method public getFromPool(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 18
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "config"    # Landroid/graphics/Bitmap$Config;

    .prologue
    .line 123
    mul-int v12, p1, p2

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lc8/Uvf;->getByteCountFromConfig(Landroid/graphics/Bitmap$Config;)I

    move-result v13

    mul-int v9, v12, v13

    .line 125
    .local v9, "target":I
    const/4 v3, 0x0

    .line 126
    .local v3, "cacheKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 127
    .local v4, "ceilingSize":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/Uvf;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v13

    .line 128
    if-lez v9, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/NavigableMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v5

    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit8 v12, v9, 0x6

    if-gt v4, v12, :cond_1

    .line 131
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 132
    .local v7, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 133
    const/4 v12, 0x0

    invoke-interface {v7, v12}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 134
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Uvf;->mAvailableSize:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Uvf;->mAvailableSize:I

    .line 135
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Uvf;->mCurrCount:I

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Uvf;->mCurrCount:I

    .line 137
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v7    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v8, 0x0

    .line 144
    .local v8, "ret":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 145
    .local v6, "foundImage":Lc8/Svf;
    if-eqz v3, :cond_2

    .line 146
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lc8/Uvf;->remove(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "foundImage":Lc8/Svf;
    check-cast v6, Lc8/Svf;

    .line 149
    .restart local v6    # "foundImage":Lc8/Svf;
    instance-of v12, v6, Lc8/cwf;

    if-eqz v12, :cond_2

    move-object v12, v6

    check-cast v12, Lc8/cwf;

    iget-object v11, v12, Lc8/cwf;->bitmap:Landroid/graphics/Bitmap;

    .local v11, "tmp":Landroid/graphics/Bitmap;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v12

    if-nez v12, :cond_2

    .line 151
    :try_start_1
    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    .line 152
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 153
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/graphics/Bitmap;->eraseColor(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    move-object v8, v11

    .line 160
    .end local v11    # "tmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_0
    if-eqz v8, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Uvf;->mHitCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Uvf;->mHitCount:I

    .line 162
    const-string/jumbo v12, "BitmapPool"

    const-string/jumbo v13, "get from bitmap pool, width=%d, height=%d, config=%s, redundant=%.1f, image=%s"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    aput-object p3, v14, v15

    const/4 v15, 0x3

    int-to-float v0, v4

    move/from16 v16, v0

    int-to-float v0, v9

    move/from16 v17, v0

    div-float v16, v16, v17

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    aput-object v6, v14, v15

    invoke-static {v12, v13, v14}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lc8/Uvf;->boardPool()V

    .line 167
    return-object v8

    .line 141
    .end local v6    # "foundImage":Lc8/Svf;
    .end local v8    # "ret":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 155
    .restart local v6    # "foundImage":Lc8/Svf;
    .restart local v8    # "ret":Landroid/graphics/Bitmap;
    .restart local v11    # "tmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v10

    .line 156
    .local v10, "thr":Ljava/lang/Throwable;
    const-string/jumbo v12, "BitmapPool"

    const-string/jumbo v13, "reconfigure error, bitmap=%s, throwable=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v11, v14, v15

    const/4 v15, 0x1

    aput-object v10, v14, v15

    invoke-static {v12, v13, v14}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    .end local v10    # "thr":Ljava/lang/Throwable;
    .end local v11    # "tmp":Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget v12, v0, Lc8/Uvf;->mMissCount:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lc8/Uvf;->mMissCount:I

    goto :goto_1
.end method

.method protected getSize(Lc8/Svf;)I
    .locals 1
    .param p1, "value"    # Lc8/Svf;

    .prologue
    .line 50
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lc8/Svf;->getSize()I

    move-result v0

    goto :goto_0
.end method

.method protected bridge synthetic getSize(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Lc8/Svf;

    invoke-virtual {p0, p1}, Lc8/Uvf;->getSize(Lc8/Svf;)I

    move-result v0

    return v0
.end method

.method public maxPoolSize(I)V
    .locals 5
    .param p1, "maxSize"    # I

    .prologue
    .line 105
    invoke-virtual {p0, p1}, Lc8/Uvf;->setPreEvictedMaxSize(I)V

    .line 106
    const-string/jumbo v0, "BitmapPool"

    const-string/jumbo v1, "set preEvictedMaxSize(maxPoolSize=%K) in ImageCacheAndPool"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected bridge synthetic onPreEvictedStateChange(ZLjava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Ljava/lang/String;

    check-cast p3, Lc8/Svf;

    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/Uvf;->onPreEvictedStateChange(ZLjava/lang/String;Lc8/Svf;Z)V

    return-void
.end method

.method protected onPreEvictedStateChange(ZLjava/lang/String;Lc8/Svf;Z)V
    .locals 8
    .param p1, "preEvicted"    # Z
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Lc8/Svf;
    .param p4, "removed"    # Z

    .prologue
    .line 82
    if-eqz p4, :cond_2

    .line 83
    invoke-virtual {p3}, Lc8/Svf;->removeFromCache()V

    .line 89
    :goto_0
    iget-object v3, p0, Lc8/Uvf;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 90
    if-nez p1, :cond_1

    :try_start_0
    invoke-direct {p0, p3}, Lc8/Uvf;->getStaticImageSize4Pool(Lc8/Svf;)I

    move-result v1

    .local v1, "size":I
    if-lez v1, :cond_1

    iget-object v2, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 91
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    iget v2, p0, Lc8/Uvf;->mAvailableSize:I

    sub-int/2addr v2, v1

    iput v2, p0, Lc8/Uvf;->mAvailableSize:I

    .line 93
    iget v2, p0, Lc8/Uvf;->mCurrCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lc8/Uvf;->mCurrCount:I

    .line 94
    const-string/jumbo v2, "BitmapPool"

    const-string/jumbo v4, "remove from bitmap pool when not pre-evicted(cache removed=%b), image=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-static {v2, v4, v5}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 97
    iget-object v2, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .end local v0    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "size":I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 85
    :cond_2
    invoke-virtual {p3, p1}, Lc8/Svf;->releaseFromCache(Z)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public putIntoPool(Lc8/Svf;)Z
    .locals 9
    .param p1, "rootImage"    # Lc8/Svf;

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-virtual {p1}, Lc8/Svf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "memKey":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lc8/Uvf;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 175
    const-string/jumbo v4, "BitmapPool"

    const-string/jumbo v5, "cannot put into bitmap pool(cache removed), image=%s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v3

    invoke-static {v4, v5, v6}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    :cond_0
    :goto_0
    return v3

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lc8/Uvf;->getStaticImageSize4Pool(Lc8/Svf;)I

    move-result v2

    .local v2, "size":I
    if-lez v2, :cond_0

    .line 180
    iget-object v4, p0, Lc8/Uvf;->POOL_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 181
    :try_start_0
    iget-object v3, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .local v0, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 182
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 183
    .restart local v0    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lc8/Uvf;->mSizeGroup:Ljava/util/NavigableMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_2
    iget v3, p0, Lc8/Uvf;->mAvailableSize:I

    add-int/2addr v3, v2

    iput v3, p0, Lc8/Uvf;->mAvailableSize:I

    .line 186
    iget v3, p0, Lc8/Uvf;->mCurrCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lc8/Uvf;->mCurrCount:I

    .line 187
    const-string/jumbo v3, "BitmapPool"

    const-string/jumbo v5, "put into bitmap pool, size=%d, image=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-static {v3, v5, v6}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p1}, Lc8/Svf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    monitor-exit v4

    goto :goto_0

    .line 189
    .end local v0    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public trimPool(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lc8/Uvf;->trimTo(I)Z

    .line 113
    return-void
.end method
