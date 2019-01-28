.class public Lc8/gvf;
.super Ljava/lang/Object;
.source "AnimatedFramesBuffer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/fvf;,
        Lc8/evf;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_SIZE:I = 0x500000

.field private static final MAX_FREE_SIZE:I = 0x200000


# instance fields
.field private final mCachedEntities:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lc8/evf;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeFlights:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mDecodeRunning:Z

.field private final mDecodeScheduler:Lc8/Nyf;

.field private mDrawableId:Ljava/lang/String;

.field private mFrameCompositor:Lc8/dvf;

.field private final mFrameCount:I

.field private mFreeBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMaxCacheCount:I

.field private final mMaxFreeCount:I

.field private final mWeakDecodeAction:Lc8/Kyf;


# direct methods
.method public constructor <init>(Lc8/ruf;Lc8/Nyf;Ljava/lang/String;)V
    .locals 5
    .param p1, "animated"    # Lc8/ruf;
    .param p2, "scheduler"    # Lc8/Nyf;
    .param p3, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lc8/fvf;

    invoke-direct {v0, p0}, Lc8/fvf;-><init>(Lc8/gvf;)V

    iput-object v0, p0, Lc8/gvf;->mWeakDecodeAction:Lc8/Kyf;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lc8/gvf;->mHandler:Landroid/os/Handler;

    .line 60
    iput-object p3, p0, Lc8/gvf;->mDrawableId:Ljava/lang/String;

    .line 61
    invoke-interface {p1}, Lc8/ruf;->getWidth()I

    move-result v0

    iput v0, p0, Lc8/gvf;->mImageWidth:I

    .line 62
    invoke-interface {p1}, Lc8/ruf;->getHeight()I

    move-result v0

    iput v0, p0, Lc8/gvf;->mImageHeight:I

    .line 63
    invoke-interface {p1}, Lc8/ruf;->getFrameCount()I

    move-result v0

    iput v0, p0, Lc8/gvf;->mFrameCount:I

    .line 64
    const/4 v0, 0x6

    const/high16 v1, 0x500000

    iget v2, p0, Lc8/gvf;->mImageWidth:I

    iget v3, p0, Lc8/gvf;->mImageHeight:I

    mul-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lc8/gvf;->mMaxCacheCount:I

    .line 65
    const/4 v0, 0x3

    const/high16 v1, 0x200000

    iget v2, p0, Lc8/gvf;->mImageWidth:I

    iget v3, p0, Lc8/gvf;->mImageHeight:I

    mul-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x2

    div-int/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lc8/gvf;->mMaxFreeCount:I

    .line 66
    iput-object p2, p0, Lc8/gvf;->mDecodeScheduler:Lc8/Nyf;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lc8/gvf;->mMaxCacheCount:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lc8/gvf;->mMaxFreeCount:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    iget v1, p0, Lc8/gvf;->mMaxCacheCount:I

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Lc8/dvf;

    invoke-direct {v0, p1, p0, p3}, Lc8/dvf;-><init>(Lc8/ruf;Lc8/gvf;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/gvf;->mFrameCompositor:Lc8/dvf;

    .line 71
    return-void
.end method

.method static synthetic access$200(Lc8/gvf;)V
    .locals 0
    .param p0, "x0"    # Lc8/gvf;

    .prologue
    .line 25
    invoke-direct {p0}, Lc8/gvf;->onDecodeActionRun()V

    return-void
.end method

.method private isInRange(III)Z
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "index"    # I

    .prologue
    .line 220
    if-le p2, p1, :cond_0

    if-lt p3, p1, :cond_0

    if-lt p3, p2, :cond_1

    :cond_0
    if-gt p2, p1, :cond_2

    if-ge p3, p1, :cond_1

    if-ge p3, p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newCachedEntityAt(I)Lc8/evf;
    .locals 6
    .param p1, "frameNumber"    # I

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, "renderBmp":Landroid/graphics/Bitmap;
    monitor-enter p0

    .line 85
    :try_start_0
    iget-object v2, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 86
    iget-object v2, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, v0

    .line 89
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    if-nez v1, :cond_1

    invoke-static {}, Lc8/nuf;->isAshmemSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    invoke-static {}, Lc8/uuf;->instance()Lc8/uuf;

    move-result-object v2

    iget v3, p0, Lc8/gvf;->mImageWidth:I

    iget v4, p0, Lc8/gvf;->mImageHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3, v4, v5}, Lc8/uuf;->newBitmapWithPin(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 95
    :cond_1
    if-nez v1, :cond_2

    .line 96
    iget v2, p0, Lc8/gvf;->mImageWidth:I

    iget v3, p0, Lc8/gvf;->mImageHeight:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 101
    :cond_2
    iget-object v2, p0, Lc8/gvf;->mFrameCompositor:Lc8/dvf;

    invoke-virtual {v2, p1, v1}, Lc8/dvf;->renderFrame(ILandroid/graphics/Bitmap;)V

    .line 103
    new-instance v2, Lc8/evf;

    invoke-direct {v2, v1}, Lc8/evf;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2

    .line 89
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onDecodeActionRun()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 192
    :cond_0
    :goto_0
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v5, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-gtz v5, :cond_1

    .line 194
    const/4 v4, 0x0

    iput-boolean v4, p0, Lc8/gvf;->mDecodeRunning:Z

    .line 195
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    iget-object v5, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 198
    .local v2, "fi":I
    iget-object v5, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 199
    .local v1, "cb":Ljava/lang/Runnable;
    iget-object v5, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->removeAt(I)V

    .line 200
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-enter p0

    .line 204
    :try_start_1
    iget-object v5, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    .line 205
    .local v3, "noCache":Z
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 206
    if-eqz v3, :cond_2

    .line 208
    invoke-direct {p0, v2}, Lc8/gvf;->newCachedEntityAt(I)Lc8/evf;

    move-result-object v0

    .line 209
    .local v0, "cachedEntity":Lc8/evf;
    monitor-enter p0

    .line 210
    :try_start_2
    iget-object v5, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v5, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    .end local v0    # "cachedEntity":Lc8/evf;
    :cond_2
    if-eqz v1, :cond_0

    .line 214
    iget-object v5, p0, Lc8/gvf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 200
    .end local v1    # "cb":Ljava/lang/Runnable;
    .end local v2    # "fi":I
    .end local v3    # "noCache":Z
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v1    # "cb":Ljava/lang/Runnable;
    .restart local v2    # "fi":I
    :cond_3
    move v3, v4

    .line 204
    goto :goto_1

    .line 205
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 211
    .restart local v0    # "cachedEntity":Lc8/evf;
    .restart local v3    # "noCache":Z
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method private recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 250
    iget-object v0, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lc8/gvf;->mMaxFreeCount:I

    if-ge v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 251
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lc8/gvf;->mImageWidth:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lc8/gvf;->mImageHeight:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    .line 252
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dropCaches()V
    .locals 5

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lc8/gvf;->mFrameCompositor:Lc8/dvf;

    invoke-virtual {v0}, Lc8/dvf;->dropCaches()V

    .line 243
    iget-object v0, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 244
    iget-object v0, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 245
    iget-object v0, p0, Lc8/gvf;->mFreeBitmaps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 246
    const-string/jumbo v0, "AnimatedImage"

    const-string/jumbo v1, "%s dropped frame caches"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lc8/gvf;->mDrawableId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized freeBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 228
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 229
    iget-object v3, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/evf;

    .line 230
    .local v0, "entity":Lc8/evf;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lc8/evf;->access$100(Lc8/evf;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-ne v3, p1, :cond_2

    .line 231
    invoke-static {v0}, Lc8/evf;->access$010(Lc8/evf;)I

    .line 236
    .end local v0    # "entity":Lc8/evf;
    :cond_0
    if-ne v1, v2, :cond_1

    .line 237
    invoke-direct {p0, p1}, Lc8/gvf;->recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_1
    monitor-exit p0

    return-void

    .line 228
    .restart local v0    # "entity":Lc8/evf;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v0    # "entity":Lc8/evf;
    .end local v1    # "idx":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getCachedBitmapAt(I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "frameNumber"    # I

    .prologue
    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/evf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "cached":Lc8/evf;
    if-nez v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .line 79
    :goto_0
    monitor-exit p0

    return-object v1

    .line 78
    :cond_0
    :try_start_1
    invoke-static {v0}, Lc8/evf;->access$008(Lc8/evf;)I

    .line 79
    invoke-static {v0}, Lc8/evf;->access$100(Lc8/evf;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 75
    .end local v0    # "cached":Lc8/evf;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized startCacheFrom(IILjava/lang/Runnable;)V
    .locals 9
    .param p1, "requestStart"    # I
    .param p2, "count"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 107
    monitor-enter p0

    if-ltz p1, :cond_5

    move v8, v6

    :goto_0
    :try_start_0
    invoke-static {v8}, Lc8/LNf;->checkArgument(Z)V

    .line 108
    if-lez p2, :cond_6

    :goto_1
    invoke-static {v6}, Lc8/LNf;->checkArgument(Z)V

    .line 111
    iget v6, p0, Lc8/gvf;->mMaxCacheCount:I

    if-le p2, v6, :cond_0

    .line 112
    iget p2, p0, Lc8/gvf;->mMaxCacheCount:I

    .line 115
    :cond_0
    const/4 v5, -0x1

    .line 116
    .local v5, "keyToKeepCached":I
    move v3, p1

    .line 122
    .local v3, "finalStart":I
    iget-object v6, p0, Lc8/gvf;->mFrameCompositor:Lc8/dvf;

    invoke-virtual {v6, v3}, Lc8/dvf;->getFrameInfoAt(I)Lc8/quf;

    move-result-object v6

    iget-object v6, v6, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v7, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v6, v7, :cond_1

    .line 123
    const/4 v6, 0x0

    add-int/lit8 v7, v3, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 125
    :cond_1
    move v4, v3

    .local v4, "idx":I
    :goto_2
    if-ltz v4, :cond_2

    .line 126
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 127
    move v5, v4

    .line 133
    :cond_2
    const/4 v4, 0x0

    .line 134
    add-int v6, v3, p2

    iget v7, p0, Lc8/gvf;->mFrameCount:I

    rem-int v0, v6, v7

    .line 135
    .local v0, "end":I
    :cond_3
    :goto_3
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_9

    .line 136
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 137
    .local v2, "fid":I
    if-eq v2, v5, :cond_4

    invoke-direct {p0, v3, v0, v2}, Lc8/gvf;->isInRange(III)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 138
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 139
    goto :goto_3

    .end local v0    # "end":I
    .end local v2    # "fid":I
    .end local v3    # "finalStart":I
    .end local v4    # "idx":I
    .end local v5    # "keyToKeepCached":I
    :cond_5
    move v8, v7

    .line 107
    goto :goto_0

    :cond_6
    move v6, v7

    .line 108
    goto :goto_1

    .line 125
    .restart local v3    # "finalStart":I
    .restart local v4    # "idx":I
    .restart local v5    # "keyToKeepCached":I
    :cond_7
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 142
    .restart local v0    # "end":I
    .restart local v2    # "fid":I
    :cond_8
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/evf;

    .line 143
    .local v1, "entity":Lc8/evf;
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    .line 144
    if-eqz v1, :cond_3

    invoke-static {v1}, Lc8/evf;->access$000(Lc8/evf;)I

    move-result v6

    if-gtz v6, :cond_3

    .line 145
    invoke-static {v1}, Lc8/evf;->access$100(Lc8/evf;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/gvf;->recycleAsFreeBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 107
    .end local v0    # "end":I
    .end local v1    # "entity":Lc8/evf;
    .end local v2    # "fid":I
    .end local v3    # "finalStart":I
    .end local v4    # "idx":I
    .end local v5    # "keyToKeepCached":I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 150
    .restart local v0    # "end":I
    .restart local v3    # "finalStart":I
    .restart local v4    # "idx":I
    .restart local v5    # "keyToKeepCached":I
    :cond_9
    const/4 v4, 0x0

    .line 151
    :goto_4
    :try_start_1
    iget-object v6, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v4, v6, :cond_b

    .line 152
    iget-object v6, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 153
    .restart local v2    # "fid":I
    invoke-direct {p0, v3, p2, v2}, Lc8/gvf;->isInRange(III)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 156
    :cond_a
    iget-object v6, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_4

    .line 161
    .end local v2    # "fid":I
    :cond_b
    const/4 v4, 0x0

    :goto_5
    if-ge v4, p2, :cond_f

    .line 162
    add-int v6, v3, v4

    iget v7, p0, Lc8/gvf;->mFrameCount:I

    rem-int v2, v6, v7

    .line 163
    .restart local v2    # "fid":I
    iget-object v6, p0, Lc8/gvf;->mCachedEntities:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 164
    if-ne p1, v2, :cond_c

    .line 165
    iget-object v6, p0, Lc8/gvf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_c
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 169
    :cond_d
    if-ne p1, v2, :cond_e

    .line 170
    iget-object v6, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 172
    :cond_e
    iget-object v6, p0, Lc8/gvf;->mDecodeFlights:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    .line 177
    .end local v2    # "fid":I
    :cond_f
    iget-boolean v6, p0, Lc8/gvf;->mDecodeRunning:Z

    if-nez v6, :cond_10

    .line 178
    const/4 v6, 0x1

    iput-boolean v6, p0, Lc8/gvf;->mDecodeRunning:Z

    .line 179
    iget-object v6, p0, Lc8/gvf;->mDecodeScheduler:Lc8/Nyf;

    iget-object v7, p0, Lc8/gvf;->mWeakDecodeAction:Lc8/Kyf;

    invoke-interface {v6, v7}, Lc8/Nyf;->schedule(Lc8/Kyf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :cond_10
    monitor-exit p0

    return-void
.end method

.method public startCacheFrom(ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 186
    iget v0, p0, Lc8/gvf;->mMaxCacheCount:I

    invoke-virtual {p0, p1, v0, p2}, Lc8/gvf;->startCacheFrom(IILjava/lang/Runnable;)V

    .line 187
    return-void
.end method
