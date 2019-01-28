.class public Lc8/ivf;
.super Lc8/Yvf;
.source "AnimatedImageDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/hvf;
    }
.end annotation


# static fields
.field private static final CHOREOGRAPHER_SUBTRACT_FRAME_DELAY:I = 0xa

.field private static final FRAME_DURATION_MS_FOR_MIN:I = 0x64

.field private static final MIN_FRAME_DURATION_MS:I = 0xb

.field private static final TIMEOUT_FOR_DRAW_MS:I = 0x3e8

.field private static sOneSchedulerSupplier:Lc8/Oyf;


# instance fields
.field private mAccruedFrameDurations:[I

.field private mAllowPlaying:Z

.field private mAnimatedFramesBuffer:Lc8/gvf;

.field private mCurrAbsFrameNum:I

.field private mCurrRelFrameNum:I

.field private final mDurationMs:I

.field private final mFrameCount:I

.field private mFrameDurations:[I

.field private final mHandler:Landroid/os/Handler;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mInvalidateTask:Ljava/lang/Runnable;

.field private mIsPaused:Z

.field private mLastFrameAbsNum:I

.field private mLoopCountAtLastPause:I

.field private mLoopListener:Lc8/jvf;

.field private mMaxLoopCount:I

.field private final mNextFrameTask:Ljava/lang/Runnable;

.field private mNextFrameTaskMs:J

.field private mRenderingBitmap:Landroid/graphics/Bitmap;

.field private mStartFrameMustBeRendered:I

.field private final mStartTask:Ljava/lang/Runnable;

.field private mStartTimeMs:J

.field private final mTimeout4DrawTask:Ljava/lang/Runnable;

.field private mWaitingForUpdate:Z


# direct methods
.method public constructor <init>(Lc8/ruf;)V
    .locals 6
    .param p1, "animatedImage"    # Lc8/ruf;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 109
    move-object v0, p0

    move-object v2, v1

    move v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lc8/ivf;-><init>(Ljava/lang/String;Ljava/lang/String;IILc8/ruf;)V

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILc8/ruf;)V
    .locals 14
    .param p1, "memKey"    # Ljava/lang/String;
    .param p2, "diskKey"    # Ljava/lang/String;
    .param p3, "catalog"    # I
    .param p4, "diskPriority"    # I
    .param p5, "animatedImage"    # Lc8/ruf;

    .prologue
    .line 113
    invoke-direct/range {p0 .. p4}, Lc8/Yvf;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 36
    new-instance v2, Lc8/hvf;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lc8/hvf;-><init>(Lc8/ivf;I)V

    iput-object v2, p0, Lc8/ivf;->mStartTask:Ljava/lang/Runnable;

    .line 37
    new-instance v2, Lc8/hvf;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lc8/hvf;-><init>(Lc8/ivf;I)V

    iput-object v2, p0, Lc8/ivf;->mNextFrameTask:Ljava/lang/Runnable;

    .line 38
    new-instance v2, Lc8/hvf;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lc8/hvf;-><init>(Lc8/ivf;I)V

    iput-object v2, p0, Lc8/ivf;->mInvalidateTask:Ljava/lang/Runnable;

    .line 39
    new-instance v2, Lc8/hvf;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lc8/hvf;-><init>(Lc8/ivf;I)V

    iput-object v2, p0, Lc8/ivf;->mTimeout4DrawTask:Ljava/lang/Runnable;

    .line 114
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lc8/ivf;->mHandler:Landroid/os/Handler;

    .line 115
    invoke-interface/range {p5 .. p5}, Lc8/ruf;->getWidth()I

    move-result v2

    iput v2, p0, Lc8/ivf;->mImageWidth:I

    .line 116
    invoke-interface/range {p5 .. p5}, Lc8/ruf;->getHeight()I

    move-result v2

    iput v2, p0, Lc8/ivf;->mImageHeight:I

    .line 117
    invoke-interface/range {p5 .. p5}, Lc8/ruf;->getFrameDurations()[I

    move-result-object v2

    iput-object v2, p0, Lc8/ivf;->mFrameDurations:[I

    .line 118
    invoke-interface/range {p5 .. p5}, Lc8/ruf;->getLoopCount()I

    move-result v2

    iput v2, p0, Lc8/ivf;->mMaxLoopCount:I

    .line 119
    invoke-interface/range {p5 .. p5}, Lc8/ruf;->getFrameCount()I

    move-result v2

    iput v2, p0, Lc8/ivf;->mFrameCount:I

    .line 120
    const/4 v2, 0x0

    iput v2, p0, Lc8/ivf;->mStartFrameMustBeRendered:I

    .line 121
    const/4 v2, 0x0

    iput v2, p0, Lc8/ivf;->mLoopCountAtLastPause:I

    .line 122
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lc8/ivf;->mNextFrameTaskMs:J

    .line 123
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/ivf;->mWaitingForUpdate:Z

    .line 124
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/ivf;->mAllowPlaying:Z

    .line 125
    invoke-direct {p0}, Lc8/ivf;->accrueAndFixDurations()I

    move-result v2

    iput v2, p0, Lc8/ivf;->mDurationMs:I

    .line 129
    invoke-static {}, Lc8/ixf;->instance()Lc8/ixf;

    move-result-object v2

    invoke-virtual {v2}, Lc8/ixf;->getSchedulerSupplierUsedInProducer()Lc8/Oyf;

    move-result-object v12

    .local v12, "supplier":Lc8/Oyf;
    if-nez v12, :cond_1

    .line 130
    const-class v13, Lc8/ivf;

    monitor-enter v13

    .line 131
    :try_start_0
    sget-object v2, Lc8/ivf;->sOneSchedulerSupplier:Lc8/Oyf;

    if-nez v2, :cond_0

    .line 132
    new-instance v2, Lc8/dwf;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/16 v6, 0x8

    const/4 v7, 0x5

    const/16 v8, 0x5dc

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Lc8/dwf;-><init>(Lc8/Nyf;IIIIIIII)V

    sput-object v2, Lc8/ivf;->sOneSchedulerSupplier:Lc8/Oyf;

    .line 144
    :cond_0
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    sget-object v12, Lc8/ivf;->sOneSchedulerSupplier:Lc8/Oyf;

    .line 147
    :cond_1
    new-instance v2, Lc8/gvf;

    invoke-interface {v12}, Lc8/Oyf;->forDecode()Lc8/Nyf;

    move-result-object v3

    invoke-virtual {p0}, Lc8/ivf;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-direct {v2, v0, v3, v4}, Lc8/gvf;-><init>(Lc8/ruf;Lc8/Nyf;Ljava/lang/String;)V

    iput-object v2, p0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    .line 148
    return-void

    .line 144
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static synthetic access$000(Lc8/ivf;)V
    .locals 0
    .param p0, "x0"    # Lc8/ivf;

    .prologue
    .line 22
    invoke-direct {p0}, Lc8/ivf;->doInvalidateSelf()V

    return-void
.end method

.method private accrueAndFixDurations()I
    .locals 4

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, "currTotalDuration":I
    iget v2, p0, Lc8/ivf;->mFrameCount:I

    new-array v2, v2, [I

    iput-object v2, p0, Lc8/ivf;->mAccruedFrameDurations:[I

    .line 158
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lc8/ivf;->mFrameCount:I

    if-ge v1, v2, :cond_1

    .line 159
    iget-object v2, p0, Lc8/ivf;->mFrameDurations:[I

    aget v2, v2, v1

    const/16 v3, 0xb

    if-ge v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Lc8/ivf;->mFrameDurations:[I

    const/16 v3, 0x64

    aput v3, v2, v1

    .line 162
    :cond_0
    iget-object v2, p0, Lc8/ivf;->mAccruedFrameDurations:[I

    aput v0, v2, v1

    .line 163
    iget-object v2, p0, Lc8/ivf;->mFrameDurations:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_1
    return v0
.end method

.method private computeAndScheduleNextFrame(ZZ)V
    .locals 20
    .param p1, "scheduleNext"    # Z
    .param p2, "fromDraw"    # Z

    .prologue
    .line 220
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mDurationMs:I

    if-nez v14, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 224
    .local v10, "nowMs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/ivf;->mStartTimeMs:J

    sub-long v12, v10, v14

    .line 225
    .local v12, "timeDistance":J
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mDurationMs:I

    int-to-long v14, v14

    div-long v14, v12, v14

    long-to-int v3, v14

    .line 226
    .local v3, "currLoopCount":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mDurationMs:I

    int-to-long v14, v14

    rem-long v14, v12, v14

    long-to-int v7, v14

    .line 227
    .local v7, "timestampMs":I
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lc8/ivf;->getFrameNumWithTimestamp(I)I

    move-result v5

    .line 228
    .local v5, "newCurrRelFrameNum":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mCurrRelFrameNum:I

    if-eq v14, v5, :cond_2

    const/4 v2, 0x1

    .line 229
    .local v2, "changed":Z
    :goto_1
    move-object/from16 v0, p0

    iput v5, v0, Lc8/ivf;->mCurrRelFrameNum:I

    .line 230
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mFrameCount:I

    mul-int/2addr v14, v3

    add-int/2addr v14, v5

    move-object/from16 v0, p0

    iput v14, v0, Lc8/ivf;->mCurrAbsFrameNum:I

    .line 232
    if-eqz p1, :cond_0

    .line 236
    if-eqz v2, :cond_3

    .line 237
    const-string/jumbo v14, "AnimatedImage"

    const-string/jumbo v15, "%s schedule next frame changed to %d, drawing=%b, now=%d"

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ivf;->mCurrRelFrameNum:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    invoke-direct/range {p0 .. p0}, Lc8/ivf;->doInvalidateSelf()V

    goto :goto_0

    .line 228
    .end local v2    # "changed":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 240
    .restart local v2    # "changed":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ivf;->mAccruedFrameDurations:[I

    move-object/from16 v0, p0

    iget v15, v0, Lc8/ivf;->mCurrRelFrameNum:I

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lc8/ivf;->mFrameDurations:[I

    move-object/from16 v0, p0

    iget v0, v0, Lc8/ivf;->mCurrRelFrameNum:I

    move/from16 v16, v0

    aget v15, v15, v16

    add-int/2addr v14, v15

    sub-int v4, v14, v7

    .line 241
    .local v4, "durationMs":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mCurrRelFrameNum:I

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lc8/ivf;->mFrameCount:I

    rem-int v6, v14, v15

    .line 248
    .local v6, "nextFrame":I
    int-to-long v14, v4

    add-long/2addr v14, v10

    const-wide/16 v16, 0xa

    add-long v8, v14, v16

    .line 250
    .local v8, "nextFrameMs":J
    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/ivf;->mNextFrameTaskMs:J

    const-wide/16 v16, -0x1

    cmp-long v14, v14, v16

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lc8/ivf;->mNextFrameTaskMs:J

    cmp-long v14, v14, v8

    if-lez v14, :cond_0

    .line 251
    :cond_4
    const-string/jumbo v14, "AnimatedImage"

    const-string/jumbo v15, "%s schedule next frame=%d at %d[last:%d], drawing=%b, now=%d"

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object p0, v16, v17

    const/16 v17, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/ivf;->mNextFrameTaskMs:J

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v14 .. v16}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ivf;->mNextFrameTask:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lc8/ivf;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ivf;->mNextFrameTask:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v8, v9}, Lc8/ivf;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 254
    move-object/from16 v0, p0

    iput-wide v8, v0, Lc8/ivf;->mNextFrameTaskMs:J

    goto/16 :goto_0
.end method

.method private doEnd()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput v0, p0, Lc8/ivf;->mLoopCountAtLastPause:I

    .line 384
    iget-object v0, p0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    invoke-virtual {v0}, Lc8/gvf;->dropCaches()V

    .line 385
    return-void
.end method

.method private doInvalidateSelf()V
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ivf;->mWaitingForUpdate:Z

    .line 171
    iget-object v0, p0, Lc8/ivf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/ivf;->mTimeout4DrawTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 172
    iget-object v0, p0, Lc8/ivf;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lc8/ivf;->mTimeout4DrawTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    invoke-virtual {p0}, Lc8/ivf;->invalidateSelf()V

    .line 174
    return-void
.end method

.method private getFrameNumWithTimestamp(I)I
    .locals 2
    .param p1, "timestamp"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lc8/ivf;->mAccruedFrameDurations:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 212
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 213
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v1, -0x1

    .line 215
    .end local v0    # "index":I
    :cond_0
    return v0
.end method

.method private updateRenderingBitmap(II)Z
    .locals 6
    .param p1, "frameRelNum"    # I
    .param p2, "frameAbsNum"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 270
    iget-object v3, p0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    invoke-virtual {v3, p1}, Lc8/gvf;->getCachedBitmapAt(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "frameBmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 284
    :goto_0
    return v1

    .line 275
    :cond_0
    iget-object v3, p0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_1

    .line 276
    iget-object v3, p0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    iget-object v4, p0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lc8/gvf;->freeBitmap(Landroid/graphics/Bitmap;)V

    .line 278
    :cond_1
    iput-object v0, p0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    .line 280
    iget v3, p0, Lc8/ivf;->mLastFrameAbsNum:I

    sub-int v3, p2, v3

    if-le v3, v2, :cond_2

    .line 281
    const-string/jumbo v3, "AnimatedImage"

    const-string/jumbo v4, "%s dropped %d frames"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    iget v1, p0, Lc8/ivf;->mLastFrameAbsNum:I

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lc8/qwf;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    :cond_2
    iput p2, p0, Lc8/ivf;->mLastFrameAbsNum:I

    move v1, v2

    .line 284
    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 289
    const-string/jumbo v12, "AnimatedImage"

    const-string/jumbo v13, "%s start to draw, waiting=%b, playing=%b"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/ivf;->mWaitingForUpdate:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/ivf;->mAllowPlaying:Z

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lc8/ivf;->mTimeout4DrawTask:Ljava/lang/Runnable;

    invoke-virtual {v12, v13}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 292
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/ivf;->mWaitingForUpdate:Z

    if-eqz v12, :cond_9

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/ivf;->mAllowPlaying:Z

    if-nez v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_9

    .line 294
    :cond_0
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/ivf;->mWaitingForUpdate:Z

    .line 297
    :try_start_0
    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mStartFrameMustBeRendered:I

    if-ltz v12, :cond_1

    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/ivf;->mAccruedFrameDurations:[I

    move-object/from16 v0, p0

    iget v15, v0, Lc8/ivf;->mStartFrameMustBeRendered:I

    aget v14, v14, v15

    int-to-long v14, v14

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lc8/ivf;->mStartTimeMs:J

    .line 300
    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/ivf;->computeAndScheduleNextFrame(ZZ)V

    .line 301
    move-object/from16 v0, p0

    iget v9, v0, Lc8/ivf;->mCurrRelFrameNum:I

    .local v9, "renderFrameRelNum":I
    move-object/from16 v0, p0

    iget v8, v0, Lc8/ivf;->mCurrAbsFrameNum:I

    .local v8, "renderFrameAbsNum":I
    move-object/from16 v0, p0

    iget v6, v0, Lc8/ivf;->mLastFrameAbsNum:I

    .line 303
    .local v6, "lastFrameAbsNum":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lc8/ivf;->updateRenderingBitmap(II)Z

    move-result v10

    .line 304
    .local v10, "rendered":Z
    const-string/jumbo v12, "AnimatedImage"

    const-string/jumbo v13, "%s drew frame=%d|%d, success=%B"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v13, v14}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    if-eqz v10, :cond_7

    .line 307
    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mStartFrameMustBeRendered:I

    if-ne v12, v9, :cond_b

    const/4 v5, 0x1

    .line 308
    .local v5, "justStarted":Z
    :goto_0
    if-eqz v5, :cond_2

    .line 309
    const/4 v12, -0x1

    move-object/from16 v0, p0

    iput v12, v0, Lc8/ivf;->mStartFrameMustBeRendered:I

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mLoopCountAtLastPause:I

    add-int/lit8 v13, v8, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mFrameCount:I

    div-int/2addr v13, v14

    add-int v7, v12, v13

    .line 316
    .local v7, "realLoopCount":I
    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mLoopCountAtLastPause:I

    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mFrameCount:I

    div-int/2addr v13, v14

    add-int/2addr v12, v13

    if-eq v7, v12, :cond_c

    const/4 v4, 0x1

    .line 323
    .local v4, "isThisLoopEnding":Z
    :goto_1
    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mLoopCountAtLastPause:I

    if-nez v12, :cond_3

    if-eqz v8, :cond_4

    :cond_3
    if-eqz v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mLoopListener:Lc8/jvf;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mLoopListener:Lc8/jvf;

    move-object/from16 v0, p0

    iget v13, v0, Lc8/ivf;->mMaxLoopCount:I

    .line 324
    invoke-interface {v12, v7, v13}, Lc8/jvf;->onLoopCompleted(II)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mMaxLoopCount:I

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lc8/ivf;->mMaxLoopCount:I

    if-lt v7, v12, :cond_d

    .line 326
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lc8/ivf;->mAllowPlaying:Z

    .line 331
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/ivf;->mAllowPlaying:Z

    if-nez v12, :cond_7

    .line 332
    invoke-direct/range {p0 .. p0}, Lc8/ivf;->doEnd()V

    .line 336
    .end local v4    # "isThisLoopEnding":Z
    .end local v5    # "justStarted":Z
    .end local v7    # "realLoopCount":I
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/ivf;->mAllowPlaying:Z

    if-nez v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-nez v12, :cond_9

    .line 339
    :cond_8
    if-eqz v10, :cond_e

    .line 340
    const/4 v2, 0x1

    .line 341
    .local v2, "cacheOffset":I
    const/4 v3, 0x0

    .line 347
    .local v3, "invalidateCall":Ljava/lang/Runnable;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/ivf;->mAllowPlaying:Z

    if-eqz v12, :cond_f

    .line 348
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    add-int v13, v9, v2

    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mFrameCount:I

    rem-int/2addr v13, v14

    invoke-virtual {v12, v13, v3}, Lc8/gvf;->startCacheFrom(ILjava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v2    # "cacheOffset":I
    .end local v3    # "invalidateCall":Ljava/lang/Runnable;
    .end local v6    # "lastFrameAbsNum":I
    .end local v8    # "renderFrameAbsNum":I
    .end local v9    # "renderFrameRelNum":I
    .end local v10    # "rendered":Z
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_a

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lc8/ivf;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 360
    :cond_a
    return-void

    .line 307
    .restart local v6    # "lastFrameAbsNum":I
    .restart local v8    # "renderFrameAbsNum":I
    .restart local v9    # "renderFrameRelNum":I
    .restart local v10    # "rendered":Z
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 316
    .restart local v5    # "justStarted":Z
    .restart local v7    # "realLoopCount":I
    :cond_c
    const/4 v4, 0x0

    goto :goto_1

    .line 328
    .restart local v4    # "isThisLoopEnding":Z
    :cond_d
    const/4 v12, 0x1

    const/4 v13, 0x1

    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lc8/ivf;->computeAndScheduleNextFrame(ZZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 353
    .end local v4    # "isThisLoopEnding":Z
    .end local v5    # "justStarted":Z
    .end local v6    # "lastFrameAbsNum":I
    .end local v7    # "realLoopCount":I
    .end local v8    # "renderFrameAbsNum":I
    .end local v9    # "renderFrameRelNum":I
    .end local v10    # "rendered":Z
    :catch_0
    move-exception v11

    .line 354
    .local v11, "thr":Ljava/lang/Throwable;
    const-string/jumbo v12, "AnimatedImage"

    const-string/jumbo v13, "%s frame render error=%s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p0, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    invoke-static {v12, v13, v14}, Lc8/qwf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 343
    .end local v11    # "thr":Ljava/lang/Throwable;
    .restart local v6    # "lastFrameAbsNum":I
    .restart local v8    # "renderFrameAbsNum":I
    .restart local v9    # "renderFrameRelNum":I
    .restart local v10    # "rendered":Z
    :cond_e
    const/4 v2, 0x0

    .line 344
    .restart local v2    # "cacheOffset":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/ivf;->mInvalidateTask:Ljava/lang/Runnable;

    .restart local v3    # "invalidateCall":Ljava/lang/Runnable;
    goto :goto_3

    .line 350
    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    add-int v13, v9, v2

    move-object/from16 v0, p0

    iget v14, v0, Lc8/ivf;->mFrameCount:I

    rem-int/2addr v13, v14

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14, v3}, Lc8/gvf;->startCacheFrom(IILjava/lang/Runnable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method

.method public getDurationMs()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lc8/ivf;->mDurationMs:I

    return v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lc8/ivf;->mFrameCount:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Lc8/ivf;->mImageHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Lc8/ivf;->mImageWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 410
    const/4 v0, -0x3

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lc8/ivf;->mAllowPlaying:Z

    return v0
.end method

.method onNextFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 203
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/ivf;->mNextFrameTaskMs:J

    .line 204
    iget-boolean v0, p0, Lc8/ivf;->mAllowPlaying:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/ivf;->mDurationMs:I

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/ivf;->mFrameCount:I

    if-gt v0, v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lc8/ivf;->computeAndScheduleNextFrame(ZZ)V

    goto :goto_0
.end method

.method onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-boolean v0, p0, Lc8/ivf;->mAllowPlaying:Z

    if-nez v0, :cond_0

    .line 188
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-boolean v0, p0, Lc8/ivf;->mIsPaused:Z

    if-eqz v0, :cond_1

    .line 181
    iget v0, p0, Lc8/ivf;->mCurrRelFrameNum:I

    iput v0, p0, Lc8/ivf;->mStartFrameMustBeRendered:I

    .line 187
    :goto_1
    invoke-direct {p0}, Lc8/ivf;->doInvalidateSelf()V

    goto :goto_0

    .line 183
    :cond_1
    iput v1, p0, Lc8/ivf;->mCurrRelFrameNum:I

    .line 184
    iput v1, p0, Lc8/ivf;->mCurrAbsFrameNum:I

    .line 185
    iput v1, p0, Lc8/ivf;->mStartFrameMustBeRendered:I

    goto :goto_1
.end method

.method onTimeout4Draw()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 389
    iget-object v0, p0, Lc8/ivf;->mNextFrameTask:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lc8/ivf;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 390
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lc8/ivf;->mNextFrameTaskMs:J

    .line 391
    iput v3, p0, Lc8/ivf;->mStartFrameMustBeRendered:I

    .line 392
    iput v3, p0, Lc8/ivf;->mLastFrameAbsNum:I

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/ivf;->mRenderingBitmap:Landroid/graphics/Bitmap;

    .line 394
    invoke-direct {p0}, Lc8/ivf;->doEnd()V

    .line 395
    const-string/jumbo v0, "AnimatedImage"

    const-string/jumbo v1, "%s timeout for draw, maybe terminate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lc8/qwf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ivf;->mIsPaused:Z

    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/ivf;->mAllowPlaying:Z

    .line 365
    iget-object v0, p0, Lc8/ivf;->mAnimatedFramesBuffer:Lc8/gvf;

    invoke-virtual {v0}, Lc8/gvf;->dropCaches()V

    .line 366
    iget v0, p0, Lc8/ivf;->mLoopCountAtLastPause:I

    iget v1, p0, Lc8/ivf;->mCurrAbsFrameNum:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lc8/ivf;->mFrameCount:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lc8/ivf;->mLoopCountAtLastPause:I

    .line 367
    return-void
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 400
    invoke-virtual {p0}, Lc8/ivf;->invalidateSelf()V

    .line 401
    return-void
.end method

.method public setAnimatedLoopListener(Lc8/jvf;)V
    .locals 0
    .param p1, "listener"    # Lc8/jvf;

    .prologue
    .line 264
    iput-object p1, p0, Lc8/ivf;->mLoopListener:Lc8/jvf;

    .line 265
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 405
    invoke-virtual {p0}, Lc8/ivf;->invalidateSelf()V

    .line 406
    return-void
.end method

.method public setMaxLoopCount(I)V
    .locals 0
    .param p1, "maxLoopCount"    # I

    .prologue
    .line 260
    iput p1, p0, Lc8/ivf;->mMaxLoopCount:I

    .line 261
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 191
    iget v0, p0, Lc8/ivf;->mDurationMs:I

    if-eqz v0, :cond_0

    iget v0, p0, Lc8/ivf;->mFrameCount:I

    if-gt v0, v1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iput-boolean v1, p0, Lc8/ivf;->mAllowPlaying:Z

    .line 195
    iget-object v0, p0, Lc8/ivf;->mStartTask:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lc8/ivf;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 370
    iput-boolean v0, p0, Lc8/ivf;->mIsPaused:Z

    .line 371
    iput-boolean v0, p0, Lc8/ivf;->mAllowPlaying:Z

    .line 372
    invoke-direct {p0}, Lc8/ivf;->doEnd()V

    .line 373
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "AnimatedImageDrawable("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lc8/ivf;->getMemoryCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
