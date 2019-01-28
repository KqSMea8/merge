.class public Lc8/dvf;
.super Ljava/lang/Object;
.source "AnimatedFrameCompositor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cvf;,
        Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    }
.end annotation


# instance fields
.field private final mAnimatedFramesBuffer:Lc8/gvf;

.field private final mAnimatedImage:Lc8/ruf;

.field private mDrawableId:Ljava/lang/String;

.field private final mFrameInfos:[Lc8/quf;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private mTempRenderBitmap:Landroid/graphics/Bitmap;

.field private final mTransparentFillPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lc8/ruf;Lc8/gvf;Ljava/lang/String;)V
    .locals 5
    .param p1, "animatedImage"    # Lc8/ruf;
    .param p2, "animatedFramesBuffer"    # Lc8/gvf;
    .param p3, "drawableId"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    .line 30
    iput-object p3, p0, Lc8/dvf;->mDrawableId:Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2}, Lc8/ruf;->getWidth()I

    move-result v2

    iput v2, p0, Lc8/dvf;->mImageWidth:I

    .line 32
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2}, Lc8/ruf;->getHeight()I

    move-result v2

    iput v2, p0, Lc8/dvf;->mImageHeight:I

    .line 33
    iput-object p2, p0, Lc8/dvf;->mAnimatedFramesBuffer:Lc8/gvf;

    .line 34
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lc8/dvf;->mTransparentFillPaint:Landroid/graphics/Paint;

    .line 35
    iget-object v2, p0, Lc8/dvf;->mTransparentFillPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget-object v2, p0, Lc8/dvf;->mTransparentFillPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    iget-object v2, p0, Lc8/dvf;->mTransparentFillPaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 38
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2}, Lc8/ruf;->getFrameCount()I

    move-result v2

    new-array v2, v2, [Lc8/quf;

    iput-object v2, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2}, Lc8/ruf;->getFrameCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 40
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2, v1}, Lc8/ruf;->getFrame(I)Lc8/suf;

    move-result-object v0

    .line 42
    .local v0, "frame":Lc8/suf;
    :try_start_0
    iget-object v2, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    invoke-interface {v0}, Lc8/suf;->getFrameInfo()Lc8/quf;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-interface {v0}, Lc8/suf;->dispose()V

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v2

    invoke-interface {v0}, Lc8/suf;->dispose()V

    throw v2

    .line 47
    .end local v0    # "frame":Lc8/suf;
    :cond_0
    return-void
.end method

.method private disposeToBackground(Landroid/graphics/Canvas;Lc8/quf;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "frameInfo"    # Lc8/quf;

    .prologue
    .line 207
    iget v0, p2, Lc8/quf;->xOffset:I

    int-to-float v1, v0

    iget v0, p2, Lc8/quf;->yOffset:I

    int-to-float v2, v0

    iget v0, p2, Lc8/quf;->xOffset:I

    iget v3, p2, Lc8/quf;->width:I

    add-int/2addr v0, v3

    int-to-float v3, v0

    iget v0, p2, Lc8/quf;->yOffset:I

    iget v4, p2, Lc8/quf;->height:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lc8/dvf;->mTransparentFillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 213
    return-void
.end method

.method private ensureTempRenderBitmap()V
    .locals 4

    .prologue
    .line 98
    iget-object v0, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 99
    invoke-static {}, Lc8/pvf;->getInstance()Lc8/pvf;

    move-result-object v0

    iget v1, p0, Lc8/dvf;->mImageWidth:I

    iget v2, p0, Lc8/dvf;->mImageHeight:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1, v2, v3}, Lc8/pvf;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    goto :goto_0
.end method

.method private getCompositedFrameRenderingType(I)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 164
    iget-object v2, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v1, v2, p1

    .line 165
    .local v1, "frameInfo":Lc8/quf;
    iget-object v0, v1, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 166
    .local v0, "disposalMethod":Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    sget-object v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, v2, :cond_0

    .line 167
    sget-object v2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 178
    :goto_0
    return-object v2

    .line 169
    :cond_0
    sget-object v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, v2, :cond_2

    .line 170
    invoke-direct {p0, v1}, Lc8/dvf;->isFullFrame(Lc8/quf;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    sget-object v2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    goto :goto_0

    .line 173
    :cond_1
    sget-object v2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    goto :goto_0

    .line 175
    :cond_2
    sget-object v2, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v0, v2, :cond_3

    .line 176
    sget-object v2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    goto :goto_0

    .line 178
    :cond_3
    sget-object v2, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    goto :goto_0
.end method

.method private isFullFrame(Lc8/quf;)Z
    .locals 2
    .param p1, "frameInfo"    # Lc8/quf;

    .prologue
    .line 200
    iget v0, p1, Lc8/quf;->xOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lc8/quf;->yOffset:I

    if-nez v0, :cond_0

    iget v0, p1, Lc8/quf;->width:I

    iget v1, p0, Lc8/dvf;->mImageWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lc8/quf;->height:I

    iget v1, p0, Lc8/dvf;->mImageHeight:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyFrame(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x1

    .line 185
    if-nez p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v2

    .line 189
    :cond_1
    iget-object v3, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v0, v3, p1

    .line 190
    .local v0, "currFrameInfo":Lc8/quf;
    iget-object v3, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    add-int/lit8 v4, p1, -0x1

    aget-object v1, v3, v4

    .line 192
    .local v1, "prevFrameInfo":Lc8/quf;
    iget-object v3, v0, Lc8/quf;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v4, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v3, v4, :cond_2

    invoke-direct {p0, v0}, Lc8/dvf;->isFullFrame(Lc8/quf;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    iget-object v3, v1, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v4, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v3, v4, :cond_3

    .line 193
    invoke-direct {p0, v1}, Lc8/dvf;->isFullFrame(Lc8/quf;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareWithClosestCompositedFrame(ILandroid/graphics/Canvas;)I
    .locals 7
    .param p1, "previous"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 129
    move v2, p1

    .local v2, "index":I
    :goto_0
    if-ltz v2, :cond_3

    .line 130
    invoke-direct {p0, v2}, Lc8/dvf;->getCompositedFrameRenderingType(I)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    move-result-object v3

    .line 131
    .local v3, "renderingType":Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    sget-object v4, Lc8/bvf;->$SwitchMap$com$taobao$phenix$animate$AnimatedFrameCompositor$CompositedFrameRenderingType:[I

    invoke-virtual {v3}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 129
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 133
    :pswitch_0
    iget-object v4, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v1, v4, v2

    .line 134
    .local v1, "frameInfo":Lc8/quf;
    iget-object v4, p0, Lc8/dvf;->mAnimatedFramesBuffer:Lc8/gvf;

    invoke-virtual {v4, v2}, Lc8/gvf;->getCachedBitmapAt(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 135
    .local v0, "cachedBmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 136
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v4, p0, Lc8/dvf;->mAnimatedFramesBuffer:Lc8/gvf;

    invoke-virtual {v4, v0}, Lc8/gvf;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v4, v1, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v5, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v4, v5, :cond_1

    .line 139
    invoke-direct {p0, p2, v1}, Lc8/dvf;->disposeToBackground(Landroid/graphics/Canvas;Lc8/quf;)V

    .line 141
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 157
    .end local v0    # "cachedBmp":Landroid/graphics/Bitmap;
    .end local v1    # "frameInfo":Lc8/quf;
    .end local v2    # "index":I
    .end local v3    # "renderingType":Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    :goto_1
    :pswitch_1
    return v2

    .line 143
    .restart local v0    # "cachedBmp":Landroid/graphics/Bitmap;
    .restart local v1    # "frameInfo":Lc8/quf;
    .restart local v2    # "index":I
    .restart local v3    # "renderingType":Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    :cond_2
    invoke-direct {p0, v2}, Lc8/dvf;->isKeyFrame(I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 149
    .end local v0    # "cachedBmp":Landroid/graphics/Bitmap;
    .end local v1    # "frameInfo":Lc8/quf;
    :pswitch_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 157
    .end local v3    # "renderingType":Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private renderFrameAt(ILandroid/graphics/Canvas;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    iget-object v2, p0, Lc8/dvf;->mAnimatedImage:Lc8/ruf;

    invoke-interface {v2, p1}, Lc8/ruf;->getFrame(I)Lc8/suf;

    move-result-object v0

    .line 108
    .local v0, "frame":Lc8/suf;
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 109
    :try_start_1
    invoke-direct {p0}, Lc8/dvf;->ensureTempRenderBitmap()V

    .line 110
    invoke-interface {v0}, Lc8/suf;->getWidth()I

    move-result v2

    invoke-interface {v0}, Lc8/suf;->getHeight()I

    move-result v3

    iget-object v4, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v2, v3, v4}, Lc8/suf;->renderFrame(IILandroid/graphics/Bitmap;)V

    .line 111
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 112
    invoke-interface {v0}, Lc8/suf;->getXOffset()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0}, Lc8/suf;->getYOffset()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    iget-object v2, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 114
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 115
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    invoke-interface {v0}, Lc8/suf;->dispose()V

    .line 120
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 116
    :catch_0
    move-exception v1

    .line 117
    .local v1, "thr":Ljava/lang/Throwable;
    :try_start_4
    const-string/jumbo v2, "AnimatedImage"

    const-string/jumbo v3, "%s compositor render frame[%d] error=%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lc8/dvf;->mDrawableId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 119
    invoke-interface {v0}, Lc8/suf;->dispose()V

    goto :goto_0

    .end local v1    # "thr":Ljava/lang/Throwable;
    :catchall_1
    move-exception v2

    invoke-interface {v0}, Lc8/suf;->dispose()V

    throw v2
.end method


# virtual methods
.method public declared-synchronized dropCaches()V
    .locals 1

    .prologue
    .line 54
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/dvf;->mTempRenderBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrameInfoAt(I)Lc8/quf;
    .locals 1
    .param p1, "frameNumber"    # I

    .prologue
    .line 50
    iget-object v0, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public renderFrame(ILandroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "frameNumber"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 66
    invoke-direct {p0, p1}, Lc8/dvf;->isKeyFrame(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 67
    move v4, p1

    .line 75
    .local v4, "nextIndex":I
    :goto_0
    move v3, v4

    .local v3, "index":I
    :goto_1
    if-ge v3, p1, :cond_3

    .line 76
    iget-object v5, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v2, v5, v3

    .line 77
    .local v2, "frameInfo":Lc8/quf;
    iget-object v1, v2, Lc8/quf;->mDisposalMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 78
    .local v1, "disposalMethod":Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    sget-object v5, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-eq v1, v5, :cond_1

    .line 81
    iget-object v5, v2, Lc8/quf;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v6, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v5, v6, :cond_0

    .line 82
    invoke-direct {p0, v0, v2}, Lc8/dvf;->disposeToBackground(Landroid/graphics/Canvas;Lc8/quf;)V

    .line 84
    :cond_0
    invoke-direct {p0, v3, v0}, Lc8/dvf;->renderFrameAt(ILandroid/graphics/Canvas;)V

    .line 85
    sget-object v5, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    if-ne v1, v5, :cond_1

    .line 86
    invoke-direct {p0, v0, v2}, Lc8/dvf;->disposeToBackground(Landroid/graphics/Canvas;Lc8/quf;)V

    .line 75
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    .end local v1    # "disposalMethod":Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    .end local v2    # "frameInfo":Lc8/quf;
    .end local v3    # "index":I
    .end local v4    # "nextIndex":I
    :cond_2
    add-int/lit8 v5, p1, -0x1

    invoke-direct {p0, v5, v0}, Lc8/dvf;->prepareWithClosestCompositedFrame(ILandroid/graphics/Canvas;)I

    move-result v4

    .restart local v4    # "nextIndex":I
    goto :goto_0

    .line 90
    .restart local v3    # "index":I
    :cond_3
    iget-object v5, p0, Lc8/dvf;->mFrameInfos:[Lc8/quf;

    aget-object v2, v5, p1

    .line 91
    .restart local v2    # "frameInfo":Lc8/quf;
    iget-object v5, v2, Lc8/quf;->mBlendMode:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    sget-object v6, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;->NO_BLEND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$BlendMode;

    if-ne v5, v6, :cond_4

    .line 92
    invoke-direct {p0, v0, v2}, Lc8/dvf;->disposeToBackground(Landroid/graphics/Canvas;Lc8/quf;)V

    .line 94
    :cond_4
    invoke-direct {p0, p1, v0}, Lc8/dvf;->renderFrameAt(ILandroid/graphics/Canvas;)V

    .line 95
    return-void
.end method
