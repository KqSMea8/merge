.class public Lc8/tsf;
.super Ljava/lang/Object;
.source "SmoothCalculate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ssf;
    }
.end annotation


# static fields
.field static final MIN_FRAME_COUNT:I = 0x5


# instance fields
.field mActivityDragFlingCount:I

.field mActivityTotalBadSmCount:I

.field mActivityTotalBadSmUsedTime:I

.field mActivityTotalSmCount:I

.field mActivityTotalSmLayoutTimes:I

.field mActivityTotalSmUsedTime:I

.field mBadSmCount:I

.field mClassRecyclerView:Ljava/lang/Class;

.field mClassViewPager:Ljava/lang/Class;

.field mDepth:I

.field mDragFpsCount:I

.field mDrawTimesOnDrag:I

.field mDrawTimesOnFling:I

.field mFetchSmoothView:Z

.field mFlingFpsCount:I

.field mFlyFrameStartTime:J

.field mFrameCallback:Lc8/ssf;

.field mFrameEndTime:J

.field mFrameStartTime:J

.field mFrameTimeArrayStartTime:J

.field mFrameTimeByteArray:[S

.field mFrameTimeIndex:S

.field mIsActivityPaused:Z

.field mIsFlingStart:Z

.field mIsTouchDownMode:Z

.field mLastFrameTimeNanos:J

.field volatile mLastSmoothView:Landroid/view/View;

.field mLastTouchDownTime:J

.field mLastTouchTime:J

.field mMaxDelayTimeOnFling:J

.field mMaxSMInterval:J

.field mNeedScrollView:Z

.field mOnLineMonitor:Lc8/msf;

.field mRectView:Landroid/graphics/Rect;

.field mSmStat:Lcom/taobao/onlinemonitor/TraceDetail$SmStat;

.field mTotalBadSmTime:I

.field mTotalSmCount:I

.field mTotalTimeOnFling:J

.field mTouchCount:J

.field mViewName:Ljava/lang/String;

.field mWeakSmoothViewMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lc8/msf;)V
    .locals 2
    .param p1, "onLineMonitor"    # Lc8/msf;

    .prologue
    const-wide/16 v0, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v0, p0, Lc8/tsf;->mFrameStartTime:J

    .line 27
    iput-wide v0, p0, Lc8/tsf;->mFlyFrameStartTime:J

    .line 28
    iput-wide v0, p0, Lc8/tsf;->mFrameEndTime:J

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/tsf;->mFetchSmoothView:Z

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lc8/tsf;->mRectView:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    .line 117
    iput-object p1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    .line 118
    return-void
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method addSmoothView(Landroid/view/View;I)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "depth"    # I

    .prologue
    .line 339
    invoke-virtual {p0, p1}, Lc8/tsf;->isSmoothView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, p1

    .line 346
    check-cast v1, Landroid/view/ViewGroup;

    .line 347
    .local v1, "group":Landroid/view/ViewGroup;
    iget v3, p0, Lc8/tsf;->mDepth:I

    if-ge v3, p2, :cond_1

    .line 348
    iput p2, p0, Lc8/tsf;->mDepth:I

    .line 351
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 352
    .local v0, "cc":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 353
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p0, v3, v4}, Lc8/tsf;->addSmoothView(Landroid/view/View;I)V

    .line 352
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 356
    .end local v0    # "cc":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method commitActivityDragFps(Ljava/lang/String;IJJIJLandroid/view/View;)I
    .locals 13
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventCount"    # I
    .param p3, "eventDisposeTime"    # J
    .param p5, "maxDelaytime"    # J
    .param p7, "drawTimes"    # I
    .param p8, "now"    # J
    .param p10, "scrollView"    # Landroid/view/View;

    .prologue
    .line 407
    if-nez p2, :cond_0

    .line 408
    const/4 v10, 0x0

    .line 470
    :goto_0
    return v10

    .line 410
    :cond_0
    iget-wide v2, p0, Lc8/tsf;->mLastTouchDownTime:J

    sub-long v6, p8, v2

    .line 411
    .local v6, "touchTotalTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    const-wide/32 v2, 0xea60

    cmp-long v2, v6, v2

    if-ltz v2, :cond_2

    .line 412
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 414
    :cond_2
    iget v2, p0, Lc8/tsf;->mTotalSmCount:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v2, v6

    long-to-int v10, v2

    .line 416
    .local v10, "sm":I
    const/16 v2, 0x3c

    if-lt v10, v2, :cond_3

    .line 418
    iget v2, p0, Lc8/tsf;->mTotalBadSmTime:I

    if-ltz v2, :cond_3

    .line 419
    iget v2, p0, Lc8/tsf;->mTotalSmCount:I

    mul-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v2, v2, 0x3c

    int-to-long v6, v2

    .line 420
    iget v2, p0, Lc8/tsf;->mTotalBadSmTime:I

    int-to-long v2, v2

    add-long/2addr v6, v2

    .line 423
    :cond_3
    iget v2, p0, Lc8/tsf;->mTotalSmCount:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v2, v6

    long-to-int v10, v2

    .line 424
    const/16 v2, 0x3c

    if-le v10, v2, :cond_4

    .line 425
    const/16 v10, 0x3c

    .line 427
    :cond_4
    iget v2, p0, Lc8/tsf;->mActivityTotalSmCount:I

    iget v3, p0, Lc8/tsf;->mTotalSmCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lc8/tsf;->mActivityTotalSmCount:I

    .line 428
    iget v2, p0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    int-to-long v2, v2

    add-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, p0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    .line 429
    iget v2, p0, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    iget v3, p0, Lc8/tsf;->mTotalBadSmTime:I

    add-int/2addr v2, v3

    iput v2, p0, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    .line 430
    iget v2, p0, Lc8/tsf;->mActivityTotalBadSmCount:I

    iget v3, p0, Lc8/tsf;->mBadSmCount:I

    add-int/2addr v2, v3

    iput v2, p0, Lc8/tsf;->mActivityTotalBadSmCount:I

    .line 431
    iget v2, p0, Lc8/tsf;->mActivityDragFlingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/tsf;->mActivityDragFlingCount:I

    .line 432
    iget v2, p0, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    iget-object v3, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-short v3, v3, Lc8/msf;->mLayoutTimes:S

    add-int/2addr v2, v3

    iput v2, p0, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    .line 434
    iget-object v2, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-boolean v2, v2, Lc8/Grf;->mHasMoved:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    move/from16 v0, p7

    if-lt v0, v2, :cond_5

    .line 435
    iget-object v2, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v2}, Lc8/Prf;->stopLoadTimeCalculate()V

    .line 438
    :cond_5
    sget-boolean v2, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v2, :cond_7

    .line 439
    new-instance v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;

    invoke-direct {v11}, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;-><init>()V

    .line 440
    .local v11, "smStat":Lcom/taobao/onlinemonitor/TraceDetail$SmStat;
    iget v2, p0, Lc8/tsf;->mDragFpsCount:I

    iput v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->index:I

    .line 441
    int-to-short v2, p2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventCount:S

    .line 442
    move-wide/from16 v0, p3

    long-to-int v2, v0

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventUseTime:S

    .line 443
    move/from16 v0, p7

    int-to-short v2, v0

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->drawCount:S

    .line 444
    iget-object v2, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-short v2, v2, Lc8/msf;->mLayoutTimes:S

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->layoutTimes:S

    .line 445
    move-wide/from16 v0, p5

    long-to-int v2, v0

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventMaxDelaytime:S

    .line 446
    iget-wide v2, p0, Lc8/tsf;->mMaxSMInterval:J

    long-to-int v2, v2

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->maxSMInterval:S

    .line 447
    long-to-int v2, v6

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->usetime:S

    .line 448
    int-to-short v2, v10

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->sm:S

    .line 449
    iget v2, p0, Lc8/tsf;->mBadSmCount:I

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->badSmCount:S

    .line 450
    iget v2, p0, Lc8/tsf;->mTotalSmCount:I

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->totalSmCount:S

    .line 451
    iget v2, p0, Lc8/tsf;->mTotalBadSmTime:I

    int-to-short v2, v2

    iput-short v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->totalBadSmTime:S

    .line 453
    if-eqz p10, :cond_6

    .line 454
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->viewName:Ljava/lang/String;

    .line 456
    :cond_6
    iget-object v2, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v2, v2, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->dragList:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v11    # "smStat":Lcom/taobao/onlinemonitor/TraceDetail$SmStat;
    :cond_7
    iget v2, p0, Lc8/tsf;->mDragFpsCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lc8/tsf;->mDragFpsCount:I

    .line 461
    sget-boolean v2, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v2, :cond_8

    .line 462
    const-string/jumbo v2, "OnLineMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "index="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/tsf;->mDragFpsCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", DrawTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",LayoutTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-short v4, v4, Lc8/msf;->mLayoutTimes:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string/jumbo v2, "OnLineMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "TotalTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", SM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", TotalSmCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/tsf;->mTotalSmCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", BadSmCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/tsf;->mBadSmCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", MaxSMInterval="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lc8/tsf;->mMaxSMInterval:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_8
    const/4 v3, 0x1

    iget-wide v4, p0, Lc8/tsf;->mFrameTimeArrayStartTime:J

    iget-short v8, p0, Lc8/tsf;->mFrameTimeIndex:S

    iget-object v9, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lc8/tsf;->notifySmoothDetailData(IJJS[S)V

    goto/16 :goto_0
.end method

.method commitActivityFlingFps(IJJLandroid/view/View;I)V
    .locals 10
    .param p1, "drawCount"    # I
    .param p2, "totalTime"    # J
    .param p4, "maxDelaytime"    # J
    .param p6, "scrollView"    # Landroid/view/View;
    .param p7, "badDrawCount"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 537
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v0}, Lc8/msf;->startMemoryMonitor()V

    .line 482
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    div-long/2addr v0, p2

    long-to-int v8, v0

    .line 483
    .local v8, "fps":I
    const/16 v0, 0x3c

    if-lt v8, v0, :cond_2

    .line 485
    iget v0, p0, Lc8/tsf;->mTotalBadSmTime:I

    if-ltz v0, :cond_2

    .line 486
    mul-int/lit16 v0, p1, 0x3e8

    div-int/lit8 v0, v0, 0x3c

    int-to-long p2, v0

    .line 487
    iget v0, p0, Lc8/tsf;->mTotalBadSmTime:I

    int-to-long v0, v0

    add-long/2addr p2, v0

    .line 490
    :cond_2
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    div-long/2addr v0, p2

    long-to-int v8, v0

    .line 491
    const/16 v0, 0x3c

    if-le v8, v0, :cond_3

    .line 492
    const/16 v8, 0x3c

    .line 494
    :cond_3
    iget v0, p0, Lc8/tsf;->mActivityTotalSmCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lc8/tsf;->mActivityTotalSmCount:I

    .line 495
    iget v0, p0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    .line 496
    iget v0, p0, Lc8/tsf;->mActivityDragFlingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/tsf;->mActivityDragFlingCount:I

    .line 497
    iget v0, p0, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    iget v1, p0, Lc8/tsf;->mTotalBadSmTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    .line 498
    iget v0, p0, Lc8/tsf;->mActivityTotalBadSmCount:I

    iget v1, p0, Lc8/tsf;->mBadSmCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lc8/tsf;->mActivityTotalBadSmCount:I

    .line 499
    iget v0, p0, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-short v1, v1, Lc8/msf;->mLayoutTimes:S

    add-int/2addr v0, v1

    iput v0, p0, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    .line 501
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v0, :cond_6

    .line 502
    new-instance v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;

    invoke-direct {v9}, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;-><init>()V

    .line 503
    .local v9, "smStat":Lcom/taobao/onlinemonitor/TraceDetail$SmStat;
    iget v0, p0, Lc8/tsf;->mFlingFpsCount:I

    iput v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->index:I

    .line 504
    const/4 v0, 0x0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventCount:S

    .line 505
    const/4 v0, 0x0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventRate:S

    .line 506
    const/4 v0, 0x0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->drawCount:S

    .line 507
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-short v0, v0, Lc8/msf;->mLayoutTimes:S

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->layoutTimes:S

    .line 508
    long-to-int v0, p4

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->eventMaxDelaytime:S

    .line 509
    iget-wide v0, p0, Lc8/tsf;->mMaxSMInterval:J

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->maxSMInterval:S

    .line 510
    long-to-int v0, p2

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->usetime:S

    .line 511
    int-to-short v0, v8

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->sm:S

    .line 512
    iget v0, p0, Lc8/tsf;->mBadSmCount:I

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->badSmCount:S

    .line 513
    iget v0, p0, Lc8/tsf;->mTotalSmCount:I

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->totalSmCount:S

    .line 514
    iget v0, p0, Lc8/tsf;->mTotalBadSmTime:I

    int-to-short v0, v0

    iput-short v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->totalBadSmTime:S

    .line 516
    if-eqz p6, :cond_4

    .line 517
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/taobao/onlinemonitor/TraceDetail$SmStat;->viewName:Ljava/lang/String;

    .line 519
    :cond_4
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v0, :cond_5

    .line 521
    const-string/jumbo v0, "OnLineMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fling TotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", SM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", TotalSmCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/tsf;->mTotalSmCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", BadSmCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/tsf;->mBadSmCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MaxSMInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lc8/tsf;->mMaxSMInterval:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_5
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fpsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 527
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->fpsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local v9    # "smStat":Lcom/taobao/onlinemonitor/TraceDetail$SmStat;
    :cond_6
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-boolean v0, v0, Lc8/Grf;->mHasMoved:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x5

    if-lt p1, v0, :cond_7

    .line 531
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    invoke-virtual {v0}, Lc8/Prf;->stopLoadTimeCalculate()V

    .line 533
    :cond_7
    iget v0, p0, Lc8/tsf;->mFlingFpsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/tsf;->mFlingFpsCount:I

    .line 535
    const/4 v1, 0x2

    iget-wide v2, p0, Lc8/tsf;->mFrameTimeArrayStartTime:J

    iget-short v6, p0, Lc8/tsf;->mFrameTimeIndex:S

    iget-object v7, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    move-object v0, p0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lc8/tsf;->notifySmoothDetailData(IJJS[S)V

    goto/16 :goto_0
.end method

.method findSmoothView(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 297
    sget-boolean v9, Lc8/msf;->sIsTraceDetail:Z

    if-nez v9, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    .line 301
    .local v7, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    .line 302
    .local v8, "y":I
    iget-boolean v9, p0, Lc8/tsf;->mIsActivityPaused:Z

    if-nez v9, :cond_0

    .line 305
    const/4 v1, -0x1

    .line 306
    .local v1, "depth":I
    iget-object v9, p0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->size()I

    move-result v5

    .line 307
    .local v5, "size":I
    if-lez v5, :cond_4

    .line 308
    iget-object v9, p0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    invoke-virtual {v9}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 309
    .local v2, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 310
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;"
    if-eqz v3, :cond_2

    .line 311
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 312
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 315
    iget-object v9, p0, Lc8/tsf;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v6, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 317
    iget-object v9, p0, Lc8/tsf;->mRectView:Landroid/graphics/Rect;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 318
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 319
    .local v0, "curDepth":I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_3

    if-ge v1, v0, :cond_2

    .line 320
    :cond_3
    iput-object v6, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    .line 321
    move v1, v0

    goto :goto_1

    .line 328
    .end local v0    # "curDepth":I
    .end local v2    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;>;"
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Integer;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "view":Landroid/view/View;
    :cond_4
    sget-boolean v9, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v9, :cond_0

    .line 329
    const-string/jumbo v9, "OnLineMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "LastSmoothView="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected isSmoothView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    .line 363
    instance-of v1, p1, Landroid/widget/AbsListView;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/widget/HorizontalScrollView;

    if-nez v1, :cond_0

    instance-of v1, p1, Lc8/nsf;

    if-nez v1, :cond_0

    instance-of v1, p1, Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 379
    :cond_0
    :goto_0
    return v0

    .line 368
    :cond_1
    iget-object v1, p0, Lc8/tsf;->mClassViewPager:Ljava/lang/Class;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc8/tsf;->mClassViewPager:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    :cond_2
    iget-object v1, p0, Lc8/tsf;->mClassRecyclerView:Ljava/lang/Class;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lc8/tsf;->mClassRecyclerView:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 379
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifySmoothDetailData(IJJS[S)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "timeStart"    # J
    .param p4, "usedTime"    # J
    .param p6, "frameCount"    # S
    .param p7, "frameTimeArray"    # [S

    .prologue
    .line 540
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    if-eqz v0, :cond_0

    if-lez p6, :cond_0

    .line 541
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v0, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v3, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v1 .. v9}, Lc8/lsf;->onSmoothDetailNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;JJS[S)V

    .line 543
    :cond_0
    return-void
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 121
    sget v0, Lc8/msf;->sApiLevel:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 122
    new-instance v0, Lc8/ssf;

    invoke-direct {v0, p0}, Lc8/ssf;-><init>(Lc8/tsf;)V

    iput-object v0, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    .line 125
    :cond_0
    :try_start_0
    const-string/jumbo v0, "android.support.v4.view.ViewPager"

    invoke-static {v0}, Lc8/tsf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/tsf;->mClassViewPager:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 130
    :goto_0
    :try_start_1
    const-string/jumbo v0, "android.support.v7.widget.RecyclerView"

    invoke-static {v0}, Lc8/tsf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lc8/tsf;->mClassRecyclerView:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityPaused(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 137
    iput-object v1, p0, Lc8/tsf;->mViewName:Ljava/lang/String;

    .line 138
    iput-wide v2, p0, Lc8/tsf;->mFrameStartTime:J

    .line 139
    iput-wide v2, p0, Lc8/tsf;->mFrameTimeArrayStartTime:J

    .line 140
    iput-wide v2, p0, Lc8/tsf;->mFrameEndTime:J

    .line 141
    iput-boolean v0, p0, Lc8/tsf;->mNeedScrollView:Z

    .line 142
    iput-wide v2, p0, Lc8/tsf;->mTouchCount:J

    .line 143
    iput-object v1, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    .line 144
    iput v0, p0, Lc8/tsf;->mActivityTotalSmCount:I

    .line 145
    iput v0, p0, Lc8/tsf;->mActivityTotalBadSmCount:I

    .line 146
    iput v0, p0, Lc8/tsf;->mActivityTotalSmUsedTime:I

    .line 147
    iput v0, p0, Lc8/tsf;->mActivityDragFlingCount:I

    .line 148
    iput v0, p0, Lc8/tsf;->mActivityTotalSmLayoutTimes:I

    .line 149
    iput v0, p0, Lc8/tsf;->mActivityTotalBadSmUsedTime:I

    .line 150
    iput v0, p0, Lc8/tsf;->mDrawTimesOnFling:I

    .line 151
    iput v0, p0, Lc8/tsf;->mDrawTimesOnDrag:I

    .line 152
    iput-wide v2, p0, Lc8/tsf;->mTotalTimeOnFling:J

    .line 153
    iput-wide v2, p0, Lc8/tsf;->mMaxSMInterval:J

    .line 154
    iput v0, p0, Lc8/tsf;->mBadSmCount:I

    .line 155
    iput v0, p0, Lc8/tsf;->mTotalSmCount:I

    .line 156
    iput v0, p0, Lc8/tsf;->mTotalBadSmTime:I

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tsf;->mIsActivityPaused:Z

    .line 158
    iget-object v0, p0, Lc8/tsf;->mWeakSmoothViewMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 159
    return-void
.end method

.method protected onActivityStarted(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lc8/tsf;->mIsActivityPaused:Z

    .line 164
    iput-boolean v0, p0, Lc8/tsf;->mFetchSmoothView:Z

    .line 165
    iput v0, p0, Lc8/tsf;->mDragFpsCount:I

    .line 166
    iput v0, p0, Lc8/tsf;->mFlingFpsCount:I

    .line 167
    return-void
.end method

.method onDraw(J)V
    .locals 1
    .param p1, "curTime"    # J

    .prologue
    .line 395
    iget-boolean v0, p0, Lc8/tsf;->mIsTouchDownMode:Z

    if-eqz v0, :cond_0

    .line 396
    iget v0, p0, Lc8/tsf;->mDrawTimesOnDrag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/tsf;->mDrawTimesOnDrag:I

    .line 398
    :cond_0
    iget-boolean v0, p0, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v0, :cond_1

    .line 399
    iget v0, p0, Lc8/tsf;->mDrawTimesOnFling:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc8/tsf;->mDrawTimesOnFling:I

    .line 402
    :cond_1
    return-void
.end method

.method onScrollFinished()V
    .locals 8

    .prologue
    .line 384
    iget-object v0, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lc8/tsf;->mViewName:Ljava/lang/String;

    .line 385
    iget-wide v0, p0, Lc8/tsf;->mFrameEndTime:J

    iget-wide v2, p0, Lc8/tsf;->mFrameStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/tsf;->mTotalTimeOnFling:J

    .line 387
    iget v1, p0, Lc8/tsf;->mTotalSmCount:I

    iget-wide v2, p0, Lc8/tsf;->mTotalTimeOnFling:J

    iget-wide v4, p0, Lc8/tsf;->mMaxSMInterval:J

    iget-object v6, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    iget v7, p0, Lc8/tsf;->mBadSmCount:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lc8/tsf;->commitActivityFlingFps(IJJLandroid/view/View;I)V

    .line 391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/tsf;->mIsFlingStart:Z

    .line 392
    return-void

    .line 384
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method onTouchDown(Landroid/view/MotionEvent;JLandroid/view/View;)V
    .locals 10
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "time"    # J
    .param p4, "decorView"    # Landroid/view/View;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 171
    iget-boolean v1, p0, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lc8/tsf;->stopSmoothSmCalculate()V

    .line 175
    :cond_0
    iput-boolean v7, p0, Lc8/tsf;->mIsTouchDownMode:Z

    .line 176
    iput-wide p2, p0, Lc8/tsf;->mLastTouchDownTime:J

    .line 177
    iput v6, p0, Lc8/tsf;->mDrawTimesOnDrag:I

    .line 178
    iput v6, p0, Lc8/tsf;->mDrawTimesOnFling:I

    .line 179
    iput-wide v8, p0, Lc8/tsf;->mMaxDelayTimeOnFling:J

    .line 180
    iput-wide v8, p0, Lc8/tsf;->mTotalTimeOnFling:J

    .line 181
    iget-wide v2, p0, Lc8/tsf;->mTouchCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/tsf;->mTouchCount:J

    .line 182
    iput-boolean v6, p0, Lc8/tsf;->mIsFlingStart:Z

    .line 183
    iput-wide v8, p0, Lc8/tsf;->mFrameStartTime:J

    .line 184
    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    if-eqz v1, :cond_2

    .line 185
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 186
    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    aput-short v6, v1, v0

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_1
    iput-short v6, p0, Lc8/tsf;->mFrameTimeIndex:S

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, p0, Lc8/tsf;->mFrameTimeArrayStartTime:J

    .line 191
    .end local v0    # "i":I
    :cond_2
    iput-wide v8, p0, Lc8/tsf;->mFrameEndTime:J

    .line 192
    iput-boolean v6, p0, Lc8/tsf;->mNeedScrollView:Z

    .line 193
    iput v6, p0, Lc8/tsf;->mTotalSmCount:I

    .line 194
    iput v6, p0, Lc8/tsf;->mTotalBadSmTime:I

    .line 195
    iput v6, p0, Lc8/tsf;->mBadSmCount:I

    .line 196
    iput-wide v8, p0, Lc8/tsf;->mMaxSMInterval:J

    .line 197
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lc8/tsf;->mLastFrameTimeNanos:J

    .line 198
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_3

    .line 199
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iput-short v6, v1, Lc8/msf;->mLayoutTimes:S

    .line 202
    :cond_3
    sget v1, Lc8/msf;->sApiLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_4

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_4

    .line 203
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 206
    :cond_4
    sget-boolean v1, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lc8/tsf;->mFetchSmoothView:Z

    if-nez v1, :cond_5

    if-eqz p4, :cond_5

    .line 207
    iput v6, p0, Lc8/tsf;->mDepth:I

    .line 209
    invoke-virtual {p0, p4, v6}, Lc8/tsf;->addSmoothView(Landroid/view/View;I)V

    .line 210
    iput-boolean v7, p0, Lc8/tsf;->mFetchSmoothView:Z

    .line 213
    :cond_5
    return-void
.end method

.method protected onTouchFirstMove(Landroid/view/MotionEvent;J)V
    .locals 1
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;
    .param p2, "time"    # J

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/tsf;->mNeedScrollView:Z

    .line 220
    invoke-virtual {p0, p1}, Lc8/tsf;->findSmoothView(Landroid/view/MotionEvent;)V

    .line 221
    return-void
.end method

.method onTouchUp(J)V
    .locals 13
    .param p1, "time"    # J
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 225
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v1, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    .line 227
    .local v0, "callback":Lc8/Grf;
    iput-boolean v12, p0, Lc8/tsf;->mIsTouchDownMode:Z

    .line 229
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v1, Lc8/msf;->mActivityName:Ljava/lang/String;

    iget v3, v0, Lc8/Grf;->mEventCount:I

    iget v1, v0, Lc8/Grf;->mEventUsedTime:I

    int-to-long v4, v1

    iget-wide v6, v0, Lc8/Grf;->mMaxDelayedTime:J

    iget v8, p0, Lc8/tsf;->mDrawTimesOnDrag:I

    iget-object v11, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    move-object v1, p0

    move-wide v9, p1

    invoke-virtual/range {v1 .. v11}, Lc8/tsf;->commitActivityDragFps(Ljava/lang/String;IJJIJLandroid/view/View;)I

    .line 232
    iget-object v1, p0, Lc8/tsf;->mLastSmoothView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 233
    iput-boolean v12, p0, Lc8/tsf;->mFetchSmoothView:Z

    .line 236
    :cond_0
    sget v1, Lc8/msf;->sApiLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_1

    .line 237
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 241
    :cond_1
    invoke-virtual {p0}, Lc8/tsf;->startSmCalculate()V

    .line 243
    return-void
.end method

.method startSmCalculate()V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 247
    sget v1, Lc8/msf;->sApiLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v1, v1, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    sget-boolean v1, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v1, :cond_2

    .line 251
    const-string/jumbo v1, "OnLineMonitor"

    const-string/jumbo v2, "startSmCalculate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    iput v6, p0, Lc8/tsf;->mTotalSmCount:I

    .line 254
    iput v6, p0, Lc8/tsf;->mTotalBadSmTime:I

    .line 255
    iput v6, p0, Lc8/tsf;->mBadSmCount:I

    .line 256
    iput-wide v8, p0, Lc8/tsf;->mMaxSMInterval:J

    .line 257
    iget-wide v2, p0, Lc8/tsf;->mLastFrameTimeNanos:J

    iput-wide v2, p0, Lc8/tsf;->mFrameStartTime:J

    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iput-wide v2, p0, Lc8/tsf;->mFlyFrameStartTime:J

    .line 259
    iget-wide v2, p0, Lc8/tsf;->mFrameStartTime:J

    cmp-long v1, v2, v8

    if-nez v1, :cond_3

    .line 260
    iget-wide v2, p0, Lc8/tsf;->mFlyFrameStartTime:J

    iput-wide v2, p0, Lc8/tsf;->mFrameStartTime:J

    .line 262
    :cond_3
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    if-eqz v1, :cond_5

    .line 263
    iget-wide v2, p0, Lc8/tsf;->mFlyFrameStartTime:J

    iput-wide v2, p0, Lc8/tsf;->mFrameTimeArrayStartTime:J

    .line 264
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 265
    iget-object v1, p0, Lc8/tsf;->mFrameTimeByteArray:[S

    aput-short v6, v1, v0

    .line 264
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_4
    iput-short v6, p0, Lc8/tsf;->mFrameTimeIndex:S

    .line 269
    .end local v0    # "i":I
    :cond_5
    iput-wide v8, p0, Lc8/tsf;->mFrameEndTime:J

    .line 270
    iput-boolean v7, p0, Lc8/tsf;->mIsFlingStart:Z

    .line 271
    iput v6, p0, Lc8/tsf;->mDrawTimesOnFling:I

    .line 272
    iput-wide v8, p0, Lc8/tsf;->mMaxDelayTimeOnFling:J

    .line 273
    iget-object v1, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    iput v6, v1, Lc8/ssf;->mInnerDrawCount:I

    .line 274
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iput-short v6, v1, Lc8/msf;->mLayoutTimes:S

    .line 275
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    if-eqz v1, :cond_6

    .line 276
    iget-object v1, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v7, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFlingMode:Z

    .line 279
    :cond_6
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iget-object v2, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    invoke-virtual {v1, v2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method

.method stopSmoothSmCalculate()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    sget v0, Lc8/msf;->sApiLevel:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    iget-object v0, v0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-virtual {p0}, Lc8/tsf;->onScrollFinished()V

    .line 288
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v0, :cond_2

    .line 289
    const-string/jumbo v0, "OnLineMonitor"

    const-string/jumbo v1, "stopSmoothSmCalculate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_2
    iget-object v0, p0, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v0, v0, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iput-boolean v2, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFlingMode:Z

    .line 292
    iput-boolean v2, p0, Lc8/tsf;->mIsFlingStart:Z

    .line 293
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
