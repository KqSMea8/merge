.class public Lc8/Prf;
.super Ljava/lang/Object;
.source "LoadTimeCalculate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Mrf;,
        Lc8/Orf;,
        Lc8/Nrf;
    }
.end annotation


# static fields
.field protected static final CHECK_LAYOUT_FITER:I = 0x3e8

.field protected static final CHECK_LAYOUT_TIMER:I = 0x64

.field protected static final LAYOUT_FITER:I = 0x4e20


# instance fields
.field mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

.field mActivityRuntimeInfoOld:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

.field mActivityViewCount:I

.field mActivityVisibleViewCount:I

.field mAllScreenLoadTimes:I

.field mBadSmCount:I

.field mCanCheckOverDraw:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClassV4DrawableWrapper:Ljava/lang/Class;

.field protected mContext:Landroid/content/Context;

.field protected volatile mDecorView:Landroid/view/View;

.field mEditTextViewFocused:Z

.field mEmptyTextView:I

.field mFirstRelativeLayoutDepth:S

.field mFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mFrameEndTime:J

.field mFrameIsLoad:Z

.field mFrameIsTotalLoad:Z

.field mFrameStartTime:J

.field mFrameTimeArrayStartTime:J

.field mFrameTimeByteArray:[S

.field mFrameTimeIndex:S

.field mHalfScreenArea:I

.field mHasEditTextView:Z

.field mHasSmoothView:Z

.field mHasfScreenLoadTimes:I

.field mHeightLocation:[B

.field mIsLayouted:Z

.field mIsPortrait:Z

.field mIsWaitDataFill:Z

.field mLargeLocation:[B

.field mLastFrameTimeField:Ljava/lang/reflect/Field;

.field mLastFrameTimeNanos:J

.field mLastHeightPercent:I

.field mLastHeightPercentEqualTimes:I

.field mLastLayoutTime:J

.field mLastViewGroupCount:I

.field mLastWidthPercent:I

.field mLayoutCheckFreqControl:J

.field mLayoutMinTimeControl:I

.field mLayoutTimesOnLoad:S

.field mLoadStartTime:J

.field mLoadTime:J

.field mLoadTimeGetted:Z

.field mLocationPos:[I

.field mMaxLayoutDepth:S

.field mMaxLayoutUseTime:J

.field mMaxRelativeLayoutDepth:S

.field mMeasureTimes:S

.field mOnGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mOnLineMonitor:Lc8/msf;

.field mOverDrawByte:[[B

.field mRectCurrent:Landroid/graphics/Rect;

.field mRectRelativeChild:[Landroid/graphics/Rect;

.field mRectResult:Landroid/graphics/Rect;

.field mRectScreen:Landroid/graphics/Rect;

.field mRedundantLayout:S

.field mScreenArea:I

.field mScreenAreaIn10:I

.field mScreenHeight:I

.field mScreenWidth:I

.field mSmallLocation:[B

.field mSmoothViewOutRevLayoutDepth:I

.field mStartActivityTime:J

.field mSuspectRelativeLayout:S

.field mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mTotalBadSmTime:I

.field mTotalLayOutTimes:S

.field mTotalLayoutUseTime:J

.field mTotalSmCount:I

.field mViewEqualTimes:I

.field mViewGroupCount:I

.field mViewGroupCountEqualTimes:I

.field volatile mViewWaitDataFill:Landroid/view/View;

.field mVisibleArea:I

.field mWidthLocation:[B


# direct methods
.method protected constructor <init>(Lc8/msf;)V
    .locals 8
    .param p1, "onLineMonitor"    # Lc8/msf;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, -0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-boolean v6, p0, Lc8/Prf;->mIsPortrait:Z

    .line 45
    iput-wide v2, p0, Lc8/Prf;->mStartActivityTime:J

    .line 46
    iput-wide v2, p0, Lc8/Prf;->mLastLayoutTime:J

    .line 47
    iput-wide v2, p0, Lc8/Prf;->mLoadTime:J

    .line 48
    iput v4, p0, Lc8/Prf;->mLastViewGroupCount:I

    .line 49
    iput v4, p0, Lc8/Prf;->mViewGroupCount:I

    .line 50
    iput v4, p0, Lc8/Prf;->mHasfScreenLoadTimes:I

    .line 51
    iput v4, p0, Lc8/Prf;->mViewGroupCountEqualTimes:I

    .line 52
    iput v4, p0, Lc8/Prf;->mViewEqualTimes:I

    .line 53
    iput v4, p0, Lc8/Prf;->mAllScreenLoadTimes:I

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/Prf;->mContext:Landroid/content/Context;

    .line 60
    iput-boolean v4, p0, Lc8/Prf;->mIsWaitDataFill:Z

    .line 62
    iput v5, p0, Lc8/Prf;->mScreenWidth:I

    .line 63
    iput v5, p0, Lc8/Prf;->mScreenHeight:I

    .line 67
    iput-short v6, p0, Lc8/Prf;->mMaxLayoutDepth:S

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/Prf;->mRectResult:Landroid/graphics/Rect;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/Prf;->mRectCurrent:Landroid/graphics/Rect;

    .line 111
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    .line 118
    iput-boolean v4, p0, Lc8/Prf;->mIsLayouted:Z

    .line 119
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lc8/Prf;->mLocationPos:[I

    .line 133
    iput v4, p0, Lc8/Prf;->mVisibleArea:I

    .line 136
    const-wide/16 v2, 0x64

    iput-wide v2, p0, Lc8/Prf;->mLayoutCheckFreqControl:J

    .line 137
    const/16 v1, 0x32

    iput v1, p0, Lc8/Prf;->mLayoutMinTimeControl:I

    .line 139
    iput v4, p0, Lc8/Prf;->mEmptyTextView:I

    .line 172
    iput-object p1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    .line 173
    sget-boolean v1, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v1, :cond_0

    .line 174
    new-array v1, v7, [Landroid/graphics/Rect;

    iput-object v1, p0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_0

    .line 176
    iget-object v1, p0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    aput-object v2, v1, v0

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v0    # "i":I
    :cond_0
    :try_start_0
    const-string/jumbo v1, "android.support.v4.graphics.drawable.DrawableWrapper"

    invoke-static {v1}, Lc8/Prf;->_1forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lc8/Prf;->mClassV4DrawableWrapper:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static _1forName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    invoke-static/range {p0 .. p0}, Lcom/ali/mobisecenhance/ReflectMap;->genRealName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getViewGroupCount(Landroid/view/View;SSS)I
    .locals 32
    .param p1, "view"    # Landroid/view/View;
    .param p2, "depth"    # S
    .param p3, "relativeDepth"    # S
    .param p4, "linearDepth"    # S

    .prologue
    .line 464
    const/4 v5, 0x0

    .line 465
    .local v5, "count":I
    add-int/lit8 v27, p2, 0x1

    move/from16 v0, v27

    int-to-short v15, v0

    .line 466
    .local v15, "nextDepth":S
    move/from16 v17, p3

    .line 467
    .local v17, "nextRelativeDepth":S
    move/from16 v16, p4

    .line 469
    .local v16, "nextLinearDepth":S
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v27, v0

    if-eqz v27, :cond_14

    move-object/from16 v8, p1

    .line 471
    check-cast v8, Landroid/view/ViewGroup;

    .line 472
    .local v8, "group":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 473
    .local v3, "cc":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_6

    const/16 v24, 0x1

    .line 475
    .local v24, "visible":Z
    :goto_0
    sget-boolean v27, Lc8/Asf;->sCheckOverDraw:Z

    if-eqz v27, :cond_0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mCanCheckOverDraw:Z

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v27, v0

    if-eqz v27, :cond_0

    .line 476
    invoke-virtual/range {p0 .. p1}, Lc8/Prf;->checkOverDraw(Landroid/view/View;)V

    .line 479
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v3, v0, :cond_1

    .line 481
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mRedundantLayout:S

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/Prf;->mRedundantLayout:S

    .line 484
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v27, v0

    if-eqz v27, :cond_a

    .line 486
    if-eqz v24, :cond_3

    .line 487
    add-int/lit8 v27, v17, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v17, v0

    .line 488
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mFirstRelativeLayoutDepth:S

    move/from16 v27, v0

    if-nez v27, :cond_2

    .line 489
    move-object/from16 v0, p0

    iput-short v15, v0, Lc8/Prf;->mFirstRelativeLayoutDepth:S

    .line 491
    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mMaxRelativeLayoutDepth:S

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 492
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/Prf;->mMaxRelativeLayoutDepth:S

    .line 495
    :cond_3
    sget-boolean v27, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v27, :cond_b

    .line 496
    const/16 v27, 0x4

    move/from16 v0, v27

    if-gt v3, v0, :cond_b

    .line 497
    const/4 v9, 0x0

    .line 498
    .local v9, "hasViewGroup":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_4

    .line 499
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 500
    .local v4, "child":Landroid/view/View;
    instance-of v0, v4, Landroid/view/ViewGroup;

    move/from16 v27, v0

    if-eqz v27, :cond_7

    .line 501
    const/4 v9, 0x1

    .line 513
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    if-nez v9, :cond_5

    .line 514
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mSuspectRelativeLayout:S

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/Prf;->mSuspectRelativeLayout:S

    .line 516
    :cond_5
    const/4 v11, 0x0

    :goto_2
    const/16 v27, 0x4

    move/from16 v0, v27

    if-ge v11, v0, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    .line 516
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 473
    .end local v9    # "hasViewGroup":Z
    .end local v11    # "i":I
    .end local v24    # "visible":Z
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 504
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "hasViewGroup":Z
    .restart local v11    # "i":I
    .restart local v24    # "visible":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v28

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v29

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v30

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v31

    invoke-virtual/range {v27 .. v31}, Landroid/graphics/Rect;->set(IIII)V

    .line 505
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    if-ge v14, v11, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectRelativeChild:[Landroid/graphics/Rect;

    move-object/from16 v28, v0

    aget-object v28, v28, v14

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 508
    const/4 v9, 0x1

    .line 498
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 505
    :cond_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 521
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "hasViewGroup":Z
    .end local v11    # "i":I
    .end local v14    # "j":I
    :cond_a
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v27, v0

    if-eqz v27, :cond_b

    .line 522
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v3, :cond_b

    .line 523
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 524
    .restart local v4    # "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 525
    .local v18, "para":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v27, v0

    const/16 v28, 0x0

    cmpl-float v27, v27, v28

    if-lez v27, :cond_10

    .line 527
    add-int/lit8 v27, v16, 0x1

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v16, v0

    .line 534
    .end local v4    # "child":Landroid/view/View;
    .end local v11    # "i":I
    .end local v18    # "para":Landroid/widget/LinearLayout$LayoutParams;
    :cond_b
    if-nez v3, :cond_d

    if-eqz v24, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mIsWaitDataFill:Z

    move/from16 v27, v0

    if-nez v27, :cond_d

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lc8/tsf;->isSmoothView(Landroid/view/View;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 537
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mHasSmoothView:Z

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mSmoothViewOutRevLayoutDepth:I

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    .line 539
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mSmoothViewOutRevLayoutDepth:I

    .line 544
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectCurrent:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mRectCurrent:Landroid/graphics/Rect;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v27

    if-eqz v27, :cond_d

    .line 546
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mIsWaitDataFill:Z

    .line 547
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    .line 553
    :cond_d
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mMaxLayoutDepth:S

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v0, v15, :cond_e

    .line 554
    move-object/from16 v0, p0

    iput-short v15, v0, Lc8/Prf;->mMaxLayoutDepth:S

    .line 556
    :cond_e
    const/4 v6, 0x0

    .local v6, "countTemp":I
    const/16 v25, 0x0

    .line 557
    .local v25, "visibleCount":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    if-ge v11, v3, :cond_11

    .line 558
    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 559
    .restart local v4    # "child":Landroid/view/View;
    if-eqz v24, :cond_f

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_f

    .line 560
    add-int/lit8 v25, v25, 0x1

    .line 562
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v4, v15, v1, v2}, Lc8/Prf;->getViewGroupCount(Landroid/view/View;SSS)I

    move-result v27

    add-int v6, v6, v27

    .line 557
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 522
    .end local v6    # "countTemp":I
    .end local v25    # "visibleCount":I
    .restart local v18    # "para":Landroid/widget/LinearLayout$LayoutParams;
    :cond_10
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 564
    .end local v4    # "child":Landroid/view/View;
    .end local v18    # "para":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v6    # "countTemp":I
    .restart local v25    # "visibleCount":I
    :cond_11
    add-int v27, v17, v16

    if-lez v27, :cond_13

    .line 565
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mMeasureTimes:S

    move/from16 v27, v0

    shl-int/lit8 v28, v25, 0x1

    add-int v29, v17, v16

    mul-int v28, v28, v29

    move/from16 v0, v28

    int-to-short v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/Prf;->mMeasureTimes:S

    .line 569
    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mActivityViewCount:I

    move/from16 v27, v0

    add-int/lit8 v28, v3, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mActivityViewCount:I

    .line 570
    add-int/lit8 v5, v6, 0x1

    .line 571
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mActivityVisibleViewCount:I

    move/from16 v27, v0

    add-int/lit8 v28, v25, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mActivityVisibleViewCount:I

    .line 696
    .end local v3    # "cc":I
    .end local v6    # "countTemp":I
    .end local v8    # "group":Landroid/view/ViewGroup;
    .end local v11    # "i":I
    .end local v24    # "visible":Z
    .end local v25    # "visibleCount":I
    :cond_12
    :goto_7
    return v5

    .line 567
    .restart local v3    # "cc":I
    .restart local v6    # "countTemp":I
    .restart local v8    # "group":Landroid/view/ViewGroup;
    .restart local v11    # "i":I
    .restart local v24    # "visible":Z
    .restart local v25    # "visibleCount":I
    :cond_13
    move-object/from16 v0, p0

    iget-short v0, v0, Lc8/Prf;->mMeasureTimes:S

    move/from16 v27, v0

    move/from16 v0, v25

    int-to-short v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x1

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-short v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-short v0, v1, Lc8/Prf;->mMeasureTimes:S

    goto :goto_6

    .line 573
    .end local v3    # "cc":I
    .end local v6    # "countTemp":I
    .end local v8    # "group":Landroid/view/ViewGroup;
    .end local v11    # "i":I
    .end local v24    # "visible":Z
    .end local v25    # "visibleCount":I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsTotalLoad:Z

    move/from16 v27, v0

    if-nez v27, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v27

    if-nez v27, :cond_12

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v26

    .line 575
    .local v26, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v10

    .line 576
    .local v10, "height":I
    sget-boolean v27, Lc8/Asf;->sCheckOverDraw:Z

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mCanCheckOverDraw:Z

    move/from16 v27, v0

    if-eqz v27, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    if-lez v26, :cond_15

    if-lez v10, :cond_15

    .line 577
    invoke-virtual/range {p0 .. p1}, Lc8/Prf;->checkOverDraw(Landroid/view/View;)V

    .line 579
    :cond_15
    if-lez v26, :cond_12

    if-lez v10, :cond_12

    .line 580
    const/4 v13, 0x0

    .line 581
    .local v13, "isIgnore":Z
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v27, v0

    if-eqz v27, :cond_1e

    .line 582
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mHasEditTextView:Z

    .line 583
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_16

    .line 584
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mEditTextViewFocused:Z

    .line 585
    sget-boolean v27, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v27, :cond_16

    .line 586
    const-string/jumbo v27, "OnLineMonitor"

    const-string/jumbo v28, "\u7f16\u8f91\u63a7\u4ef6\u5df2\u83b7\u5f97\u7126\u70b9"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_16
    :goto_8
    if-nez v13, :cond_12

    .line 638
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v21, v0

    .line 639
    .local v21, "screenWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v20, v0

    .line 640
    .local v20, "screenHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mIsPortrait:Z

    move/from16 v27, v0

    if-nez v27, :cond_17

    .line 641
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v20, v0

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v21, v0

    .line 644
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mLocationPos:[I

    move-object/from16 v19, v0

    .line 645
    .local v19, "pos":[I
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 647
    const/16 v27, 0x0

    aget v27, v19, v27

    move/from16 v0, v27

    move/from16 v1, v21

    if-gt v0, v1, :cond_12

    const/16 v27, 0x0

    aget v27, v19, v27

    add-int v27, v27, v26

    if-ltz v27, :cond_12

    .line 651
    const/16 v27, 0x0

    aget v27, v19, v27

    if-ltz v27, :cond_2a

    const/16 v27, 0x0

    aget v22, v19, v27

    .line 652
    .local v22, "start":I
    :goto_9
    const/16 v27, 0x0

    aget v27, v19, v27

    add-int v7, v26, v27

    .line 653
    .local v7, "end":I
    add-int/lit8 v27, v21, -0x1

    move/from16 v0, v27

    if-le v7, v0, :cond_18

    .line 654
    add-int/lit8 v7, v21, -0x1

    .line 657
    :cond_18
    move/from16 v0, v22

    if-le v7, v0, :cond_1a

    .line 659
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v7, v0, :cond_19

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v7, v0

    .line 662
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-static {v0, v1, v7, v2}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 667
    :cond_1a
    :goto_a
    const/16 v27, 0x1

    aget v27, v19, v27

    move/from16 v0, v27

    move/from16 v1, v20

    if-le v0, v1, :cond_1b

    const/16 v27, 0x1

    aget v27, v19, v27

    add-int v27, v27, v10

    if-ltz v27, :cond_12

    .line 670
    :cond_1b
    const/16 v27, 0x1

    aget v27, v19, v27

    if-ltz v27, :cond_2b

    const/16 v27, 0x1

    aget v22, v19, v27

    .line 671
    :goto_b
    const/16 v27, 0x1

    aget v27, v19, v27

    add-int v7, v10, v27

    .line 672
    add-int/lit8 v27, v20, -0x1

    move/from16 v0, v27

    if-le v7, v0, :cond_1c

    .line 673
    add-int/lit8 v7, v20, -0x1

    .line 676
    :cond_1c
    move/from16 v0, v22

    if-le v7, v0, :cond_12

    .line 678
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-le v7, v0, :cond_1d

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    array-length v7, v0

    .line 681
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-static {v0, v1, v7, v2}, Ljava/util/Arrays;->fill([BIIB)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_0
    move-exception v27

    goto/16 :goto_7

    .line 589
    .end local v7    # "end":I
    .end local v19    # "pos":[I
    .end local v20    # "screenHeight":I
    .end local v21    # "screenWidth":I
    .end local v22    # "start":I
    :cond_1e
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/CompoundButton;

    move/from16 v27, v0

    if-eqz v27, :cond_1f

    .line 590
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 591
    :cond_1f
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v27, v0

    if-eqz v27, :cond_20

    move-object/from16 v23, p1

    .line 592
    check-cast v23, Landroid/widget/TextView;

    .line 593
    .local v23, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lc8/Prf;->isViewIgnore(Landroid/graphics/drawable/Drawable;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_16

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v27

    if-nez v27, :cond_16

    .line 594
    const/4 v13, 0x1

    .line 595
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mEmptyTextView:I

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mEmptyTextView:I

    goto/16 :goto_8

    .line 598
    .end local v23    # "textView":Landroid/widget/TextView;
    :cond_20
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v27, v0

    if-eqz v27, :cond_24

    move-object/from16 v12, p1

    .line 599
    check-cast v12, Landroid/widget/ImageView;

    .line 600
    .local v12, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v12}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lc8/Prf;->isViewIgnore(Landroid/graphics/drawable/Drawable;)Z

    move-result v27

    if-eqz v27, :cond_21

    invoke-virtual {v12}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lc8/Prf;->isViewIgnore(Landroid/graphics/drawable/Drawable;)Z

    move-result v27

    if-eqz v27, :cond_21

    .line 601
    const/4 v13, 0x1

    .line 604
    :cond_21
    if-nez v13, :cond_16

    .line 605
    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    if-ge v10, v0, :cond_23

    :cond_22
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ge v10, v0, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_16

    .line 606
    :cond_23
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 612
    .end local v12    # "imageView":Landroid/widget/ImageView;
    :cond_24
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/AbsSeekBar;

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 613
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    if-eqz v27, :cond_16

    .line 614
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 617
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v27

    if-eqz v27, :cond_26

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v27

    const-string/jumbo v28, "android.view.View"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_26

    .line 618
    const/4 v13, 0x0

    goto/16 :goto_8

    .line 620
    :cond_26
    if-nez v13, :cond_16

    .line 621
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lc8/Prf;->isViewIgnore(Landroid/graphics/drawable/Drawable;)Z

    move-result v27

    if-eqz v27, :cond_27

    .line 622
    const/4 v13, 0x1

    .line 624
    :cond_27
    if-nez v13, :cond_16

    .line 625
    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    move/from16 v0, v27

    if-ge v10, v0, :cond_29

    :cond_28
    const/16 v27, 0xa

    move/from16 v0, v27

    if-ge v10, v0, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v27, v0

    div-int/lit8 v27, v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_16

    .line 626
    :cond_29
    const/4 v13, 0x1

    goto/16 :goto_8

    .line 651
    .restart local v19    # "pos":[I
    .restart local v20    # "screenHeight":I
    .restart local v21    # "screenWidth":I
    :cond_2a
    const/16 v22, 0x0

    goto/16 :goto_9

    .line 670
    .restart local v7    # "end":I
    .restart local v22    # "start":I
    :cond_2b
    const/16 v22, 0x0

    goto/16 :goto_b

    :catch_1
    move-exception v27

    goto/16 :goto_a
.end method

.method public static isOriatationPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 844
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method checkLoadTimeOnLayout(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 1222
    iget-wide v4, p0, Lc8/Prf;->mLastLayoutTime:J

    sub-long v2, p1, v4

    .line 1223
    .local v2, "interval":J
    const-wide/16 v4, 0x4e20

    cmp-long v1, v2, v4

    if-lez v1, :cond_2

    iget-short v1, p0, Lc8/Prf;->mTotalLayOutTimes:S

    if-lez v1, :cond_2

    .line 1225
    sget-boolean v1, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v1, :cond_0

    .line 1226
    const-string/jumbo v1, "OnLineMonitor"

    const-string/jumbo v4, "\u8d85\u8fc720s\u7684\uff0c\u8ba4\u4e3a\u5df2\u7ecf\u7ed3\u675f\uff01"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lc8/Prf;->checkWhiteSreen()V

    .line 1229
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    .line 1265
    :cond_1
    :goto_0
    return-void

    .line 1241
    :cond_2
    iget v1, p0, Lc8/Prf;->mActivityViewCount:I

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v0, v1, 0x1

    .line 1242
    .local v0, "count":I
    rem-int/lit8 v1, v0, 0x64

    if-lez v1, :cond_3

    .line 1243
    add-int/lit8 v0, v0, 0x1

    .line 1246
    :cond_3
    iget-boolean v1, p0, Lc8/Prf;->mFrameIsTotalLoad:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lc8/Prf;->mAllScreenLoadTimes:I

    if-le v1, v0, :cond_1

    .line 1247
    sget-boolean v1, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v1, :cond_4

    .line 1248
    const-string/jumbo v1, "OnLineMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "70%\u52a0\u8f7d\u4e86\uff0c\u5e03\u5c40\u6b21\u6570\u8fbe\u5230\u6700\u9ad8\u9650\u5236\uff0c\u8ba4\u4e3a\u7ed3\u675f,LayoutLoadTimes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/Prf;->mAllScreenLoadTimes:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :cond_4
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto :goto_0
.end method

.method checkOverDraw(Landroid/view/View;)V
    .locals 19
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    if-nez v17, :cond_1

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Prf;->mLocationPos:[I

    .line 364
    .local v10, "pos":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 365
    const/16 v17, 0x0

    aget v17, v10, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    add-int v11, v17, v18

    .line 366
    .local v11, "startX":I
    const/16 v17, 0x1

    aget v17, v10, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    add-int v12, v17, v18

    .line 367
    .local v12, "startY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v16, v17, v18

    .line 368
    .local v16, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v18

    sub-int v3, v17, v18

    .line 369
    .local v3, "height":I
    const/4 v9, 0x0

    .line 370
    .local v9, "overdrawVal":I
    const/4 v7, 0x0

    .line 371
    .local v7, "isNeedCal":Z
    const/4 v1, 0x1

    .line 374
    .local v1, "addnum":S
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 375
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2

    .line 376
    const/4 v7, 0x1

    .line 378
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v5, p1

    .line 379
    check-cast v5, Landroid/widget/ImageView;

    .line 380
    .local v5, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 381
    if-eqz v2, :cond_3

    .line 382
    const/4 v7, 0x1

    .line 383
    const/16 v17, 0x2

    move/from16 v0, v17

    int-to-short v1, v0

    .line 404
    .end local v5    # "imageView":Landroid/widget/ImageView;
    :cond_3
    :goto_1
    if-eqz v7, :cond_b

    .line 405
    move v4, v11

    .local v4, "i":I
    :goto_2
    add-int v17, v11, v16

    move/from16 v0, v17

    if-ge v4, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v4, v0, :cond_b

    .line 406
    if-ltz v4, :cond_a

    .line 409
    move v8, v12

    .local v8, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    add-int v17, v12, v3

    move/from16 v0, v17

    if-ge v8, v0, :cond_a

    .line 410
    if-ltz v8, :cond_4

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    aget-byte v18, v17, v8

    add-int v18, v18, v1

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, v17, v8

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOverDrawByte:[[B

    move-object/from16 v17, v0

    aget-object v17, v17, v4

    aget-byte v15, v17, v8

    .line 415
    .local v15, "val":I
    if-le v15, v9, :cond_4

    .line 416
    move v9, v15

    .line 409
    .end local v15    # "val":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 386
    .end local v4    # "i":I
    .end local v8    # "j":I
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/EditText;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v13, p1

    .line 387
    check-cast v13, Landroid/widget/EditText;

    .line 388
    .local v13, "tditText":Landroid/widget/EditText;
    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 389
    const/4 v7, 0x1

    .line 390
    const/16 v17, 0x2

    move/from16 v0, v17

    int-to-short v1, v0

    goto :goto_1

    .line 392
    .end local v13    # "tditText":Landroid/widget/EditText;
    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/CompoundButton;

    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/AbsSeekBar;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 393
    :cond_7
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 394
    :cond_8
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v14, p1

    .line 395
    check-cast v14, Landroid/widget/TextView;

    .line 396
    .local v14, "textView":Landroid/widget/TextView;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 397
    const/4 v7, 0x1

    .line 398
    const/16 v17, 0x2

    move/from16 v0, v17

    int-to-short v1, v0

    goto/16 :goto_1

    .line 400
    .end local v14    # "textView":Landroid/widget/TextView;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v17

    if-eqz v17, :cond_3

    .line 401
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 405
    .restart local v4    # "i":I
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 421
    .end local v4    # "i":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v6, v0, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 422
    .local v6, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-eqz v6, :cond_0

    .line 423
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v9, v0, :cond_c

    .line 424
    iget-short v0, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw3xCount:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw3xCount:S

    goto/16 :goto_0

    .line 425
    :cond_c
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v9, v0, :cond_0

    .line 426
    iget-short v0, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw4xCount:S

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput-short v0, v6, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw4xCount:S

    goto/16 :goto_0
.end method

.method checkWhiteSreen()V
    .locals 10

    .prologue
    .line 1119
    sget v1, Lc8/osf;->sWhiteScreenMaxWidthPercent:I

    iget v2, p0, Lc8/Prf;->mLastWidthPercent:I

    if-le v1, v2, :cond_1

    sget v1, Lc8/osf;->sWhiteScreenMaxHeightPercent:I

    iget v2, p0, Lc8/Prf;->mLastHeightPercent:I

    if-le v1, v2, :cond_1

    .line 1120
    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v1, v1, Lc8/msf;->mIsInBootStep:Z

    if-nez v1, :cond_1

    .line 1121
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iget-wide v4, p0, Lc8/Prf;->mLoadStartTime:J

    sub-long v8, v2, v4

    .line 1122
    .local v8, "useTime":J
    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1123
    .local v7, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 1124
    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/psf;

    .line 1125
    .local v0, "onlineStatistics":Lc8/psf;
    if-eqz v0, :cond_0

    .line 1126
    iget-object v1, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v1, v1, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v2, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mActivityName:Ljava/lang/String;

    iget v3, p0, Lc8/Prf;->mLastWidthPercent:I

    iget v4, p0, Lc8/Prf;->mLastHeightPercent:I

    long-to-int v5, v8

    invoke-interface/range {v0 .. v5}, Lc8/psf;->onWhiteScreen(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;III)V

    .line 1123
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1131
    .end local v0    # "onlineStatistics":Lc8/psf;
    .end local v6    # "i":I
    .end local v7    # "size":I
    .end local v8    # "useTime":J
    :cond_1
    return-void
.end method

.method createOnGlobalLayoutListener(I)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 848
    new-instance v0, Lc8/Nrf;

    invoke-direct {v0, p0, p1}, Lc8/Nrf;-><init>(Lc8/Prf;I)V

    return-object v0
.end method

.method doOnEndOfLayout(Z)V
    .locals 28
    .param p1, "isFromTimer"    # Z

    .prologue
    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    if-nez v24, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v24, v0

    if-lez v24, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v24, v0

    if-lez v24, :cond_3

    .line 918
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Prf;->mWidthLocation:[B

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mScreenHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lc8/Prf;->mHeightLocation:[B

    .line 921
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 924
    move-object/from16 v0, p0

    iget v13, v0, Lc8/Prf;->mActivityViewCount:I

    .line 925
    .local v13, "lastViewCount":I
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Prf;->mActivityVisibleViewCount:I

    .line 927
    .local v14, "lastVisibleViewCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Lc8/msf;->notifyOnCheckViewTree(I)V

    .line 928
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    const-wide/32 v26, 0xf4240

    div-long v18, v24, v26

    .line 930
    .local v18, "t1":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lc8/Prf;->getViewGroupCount(Landroid/view/View;SSS)I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mViewGroupCount:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 934
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    const-wide/32 v26, 0xf4240

    div-long v20, v24, v26

    .line 935
    .local v20, "time":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Lc8/msf;->notifyOnCheckViewTree(I)V

    .line 938
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Prf;->mLastLayoutTime:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-gtz v24, :cond_4

    .line 939
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Prf;->mLastLayoutTime:J

    .line 942
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsLoad:Z

    move/from16 v24, v0

    if-eqz v24, :cond_5

    .line 943
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mHasfScreenLoadTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mHasfScreenLoadTimes:I

    .line 945
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsTotalLoad:Z

    move/from16 v24, v0

    if-eqz v24, :cond_6

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mAllScreenLoadTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mAllScreenLoadTimes:I

    .line 948
    :cond_6
    if-nez p1, :cond_7

    .line 949
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mActivityViewCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v13, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mActivityVisibleViewCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v14, v0, :cond_9

    .line 950
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewEqualTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mViewEqualTimes:I

    .line 956
    :cond_7
    :goto_2
    const/16 v22, 0x0

    .local v22, "width":I
    const/4 v6, 0x0

    .line 958
    .local v6, "height":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_a

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v8

    if-lez v24, :cond_8

    .line 960
    add-int/lit8 v22, v22, 0x1

    .line 958
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 952
    .end local v6    # "height":I
    .end local v8    # "i":I
    .end local v22    # "width":I
    :cond_9
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mViewEqualTimes:I

    goto :goto_2

    .line 963
    .restart local v6    # "height":I
    .restart local v8    # "i":I
    .restart local v22    # "width":I
    :cond_a
    const/4 v8, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_c

    .line 964
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v8

    if-lez v24, :cond_b

    .line 965
    add-int/lit8 v6, v6, 0x1

    .line 963
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 968
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lc8/msf;->mStatusBarHeight:I

    move/from16 v24, v0

    add-int v6, v6, v24

    .line 969
    mul-int/lit8 v24, v22, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    div-int v23, v24, v25

    .line 970
    .local v23, "widthP":I
    mul-int/lit8 v24, v6, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    div-int v7, v24, v25

    .line 971
    .local v7, "heightP":I
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_d

    .line 972
    const-string/jumbo v24, "OnLineMonitor"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "ViewGroupCount="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",LastViewGroupCount="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mLastViewGroupCount:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",time="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Prf;->mLastLayoutTime:J

    move-wide/from16 v26, v0

    sub-long v26, v20, v26

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", widthPercent="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",heightPercent="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ",\u68c0\u6d4busetime="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    sub-long v26, v20, v18

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_d
    const/16 v24, 0x3c

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_f

    const/16 v24, 0x50

    move/from16 v0, v24

    if-lt v7, v0, :cond_f

    .line 984
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_e

    .line 985
    const-string/jumbo v24, "OnLineMonitor"

    const-string/jumbo v25, "\u5bbd\u5ea680%\u4ee5\u4e0a\uff0c\u9ad8\u5ea6\u8fbe\u523080%\uff0c\u8ba4\u4e3a\u7ed3\u675f"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_e
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Prf;->mLastLayoutTime:J

    .line 988
    invoke-virtual/range {p0 .. p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 993
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    div-int/lit8 v16, v24, 0x14

    .line 994
    .local v16, "perH10":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    div-int/lit8 v17, v24, 0x14

    .line 995
    .local v17, "perW10":I
    const/16 v22, 0x0

    .line 996
    const/4 v6, 0x0

    .line 998
    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_12

    .line 999
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_12

    .line 1000
    const/4 v11, 0x0

    .line 1001
    .local v11, "indexCount":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_6
    move/from16 v0, v17

    if-ge v12, v0, :cond_10

    .line 1002
    add-int v10, v8, v12

    .line 1003
    .local v10, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v10

    if-lez v24, :cond_11

    .line 1004
    add-int/lit8 v11, v11, 0x1

    .line 1005
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v11, v0, :cond_11

    .line 1006
    add-int v22, v22, v17

    .line 999
    .end local v10    # "index":I
    :cond_10
    add-int v8, v8, v17

    goto :goto_5

    .line 1001
    .restart local v10    # "index":I
    :cond_11
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1015
    .end local v10    # "index":I
    .end local v11    # "indexCount":I
    .end local v12    # "j":I
    :cond_12
    const/4 v8, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lc8/msf;->mStatusBarHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_13

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aput-byte v25, v24, v8

    .line 1015
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1018
    :cond_13
    const/4 v8, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v8, v0, :cond_16

    .line 1019
    const/4 v11, 0x0

    .line 1020
    .restart local v11    # "indexCount":I
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_9
    move/from16 v0, v16

    if-ge v12, v0, :cond_14

    .line 1021
    add-int v10, v8, v12

    .line 1022
    .restart local v10    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v24, v0

    aget-byte v24, v24, v10

    if-lez v24, :cond_15

    .line 1023
    add-int/lit8 v11, v11, 0x1

    .line 1024
    const/16 v24, 0xa

    move/from16 v0, v24

    if-ne v11, v0, :cond_15

    .line 1025
    add-int v6, v6, v16

    .line 1018
    .end local v10    # "index":I
    :cond_14
    add-int v8, v8, v16

    goto :goto_8

    .line 1020
    .restart local v10    # "index":I
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1031
    .end local v10    # "index":I
    .end local v11    # "indexCount":I
    .end local v12    # "j":I
    :cond_16
    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    .line 1032
    mul-int/lit8 v24, v22, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mWidthLocation:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    div-int v23, v24, v25

    .line 1034
    :cond_17
    mul-int/lit8 v24, v6, 0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mHeightLocation:[B

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    div-int v7, v24, v25

    .line 1035
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_18

    .line 1036
    const-string/jumbo v24, "OnLineMonitor"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\u91c7\u6837\u8ba1\u7b97\u6cd5\uff1awidthP="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", heightP="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    :cond_18
    if-nez p1, :cond_19

    .line 1042
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mLastHeightPercent:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v7, :cond_19

    .line 1043
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mLastHeightPercentEqualTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mLastHeightPercentEqualTimes:I

    .line 1046
    :cond_19
    const/16 v24, 0x3c

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_1c

    const/16 v24, 0x5a

    move/from16 v0, v24

    if-ge v7, v0, :cond_1a

    const/16 v24, 0x50

    move/from16 v0, v24

    if-lt v7, v0, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mLastHeightPercentEqualTimes:I

    move/from16 v24, v0

    const/16 v25, 0x3

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCountEqualTimes:I

    move/from16 v24, v0

    if-lez v24, :cond_1c

    .line 1047
    :cond_1a
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_1b

    .line 1048
    const-string/jumbo v24, "OnLineMonitor"

    const-string/jumbo v25, "\u91c7\u6837\u8fbe\u523050%\u9ad8\u5ea6\u8fbe\u523090%\u6216\u800580%3\u6b21\u4e0d\u53d8\uff0c\u8ba4\u4e3a\u7ed3\u675f"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_1b
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Prf;->mLastLayoutTime:J

    .line 1051
    invoke-virtual/range {p0 .. p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1053
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mHasEditTextView:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mEditTextViewFocused:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1e

    .line 1055
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_1d

    .line 1056
    const-string/jumbo v24, "OnLineMonitor"

    const-string/jumbo v25, "\u7f16\u8f91\u63a7\u4ef6\u5df2\u7ecf\u805a\u7126\uff0c\u8ba4\u4e3a\u7ed3\u675f"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1061
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsLoad:Z

    move/from16 v24, v0

    if-nez v24, :cond_1f

    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1f

    const/16 v24, 0x32

    move/from16 v0, v24

    if-lt v7, v0, :cond_1f

    .line 1063
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mFrameIsLoad:Z

    .line 1065
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsTotalLoad:Z

    move/from16 v24, v0

    if-nez v24, :cond_20

    const/16 v24, 0x32

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_20

    const/16 v24, 0x46

    move/from16 v0, v24

    if-lt v7, v0, :cond_20

    .line 1066
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/Prf;->mFrameIsTotalLoad:Z

    .line 1068
    :cond_20
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mLastWidthPercent:I

    .line 1069
    move-object/from16 v0, p0

    iput v7, v0, Lc8/Prf;->mLastHeightPercent:I

    .line 1070
    if-nez p1, :cond_21

    .line 1071
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lc8/Prf;->checkLoadTimeOnLayout(J)V

    .line 1073
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mLastViewGroupCount:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v25, v0

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_23

    .line 1074
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCountEqualTimes:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mViewGroupCountEqualTimes:I

    .line 1079
    :cond_21
    :goto_a
    move-object/from16 v0, p0

    iget v15, v0, Lc8/Prf;->mLastViewGroupCount:I

    .line 1081
    .local v15, "oldCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mLastViewGroupCount:I

    .line 1082
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mFrameIsLoad:Z

    move/from16 v24, v0

    if-eqz v24, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mHasfScreenLoadTimes:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-lt v0, v1, :cond_24

    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v0, v15, :cond_24

    if-lez v15, :cond_24

    .line 1084
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v24, v0

    sub-int v24, v24, v15

    mul-int/lit8 v24, v24, 0x64

    div-int v9, v24, v15

    .line 1085
    .local v9, "increact":I
    const/16 v24, 0x5a

    move/from16 v0, v24

    if-lt v9, v0, :cond_24

    .line 1086
    sget-boolean v24, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v24, :cond_22

    .line 1087
    const-string/jumbo v24, "OnLineMonitor"

    const-string/jumbo v25, "\u518d\u6dfb\u52a090%\u7684View\u6811\uff0c\u8ba4\u4e3a\u7ed3\u675f"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1076
    .end local v9    # "increact":I
    .end local v15    # "oldCount":I
    :cond_23
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lc8/Prf;->mViewGroupCountEqualTimes:I

    goto :goto_a

    .line 1093
    .restart local v15    # "oldCount":I
    :cond_24
    if-nez p1, :cond_26

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Lc8/Prf;->mViewGroupCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-le v15, v0, :cond_25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/Prf;->mLastLayoutTime:J

    move-wide/from16 v24, v0

    sub-long v24, v20, v24

    const-wide/16 v26, 0x3e8

    cmp-long v24, v24, v26

    if-gtz v24, :cond_26

    .line 1105
    :cond_25
    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/Prf;->mLastLayoutTime:J

    .line 1110
    :cond_26
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/Prf;->mLoadTimeGetted:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    const-wide/16 v26, 0x64

    invoke-virtual/range {v24 .. v27}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .end local v6    # "height":I
    .end local v7    # "heightP":I
    .end local v8    # "i":I
    .end local v15    # "oldCount":I
    .end local v16    # "perH10":I
    .end local v17    # "perW10":I
    .end local v20    # "time":J
    .end local v22    # "width":I
    .end local v23    # "widthP":I
    :catch_0
    move-exception v24

    goto/16 :goto_1
.end method

.method getLastFrameTime()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 207
    sget v1, Lc8/msf;->sApiLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/Prf;->mLastFrameTimeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 209
    :try_start_0
    iget-object v1, p0, Lc8/Prf;->mLastFrameTimeField:Ljava/lang/reflect/Field;

    iget-object v2, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/Prf;->mLastFrameTimeNanos:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method initGetLastFrameTimeField()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 190
    sget v1, Lc8/msf;->sApiLevel:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-nez v1, :cond_0

    .line 192
    :try_start_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    .line 193
    iget-object v1, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "mLastFrameTimeNanos"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Lc8/Prf;->mLastFrameTimeField:Ljava/lang/reflect/Field;

    .line 194
    iget-object v1, p0, Lc8/Prf;->mLastFrameTimeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lc8/Prf;->mLastFrameTimeField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method isViewIgnore(Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 436
    if-eqz p1, :cond_1

    .line 437
    instance-of v2, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v2, :cond_0

    instance-of v2, p1, Landroid/graphics/drawable/PictureDrawable;

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    .line 459
    :cond_1
    :goto_0
    return v0

    .line 440
    :cond_2
    sget v2, Lc8/msf;->sApiLevel:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 441
    instance-of v2, p1, Landroid/graphics/drawable/DrawableWrapper;

    if-nez v2, :cond_1

    .line 445
    :cond_3
    instance-of v2, p1, Landroid/graphics/drawable/ShapeDrawable;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ImageDrawable"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 446
    goto :goto_0

    .line 448
    :cond_4
    instance-of v2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v2, :cond_1

    instance-of v2, p1, Landroid/graphics/drawable/DrawableContainer;

    if-nez v2, :cond_1

    .line 452
    iget-object v2, p0, Lc8/Prf;->mClassV4DrawableWrapper:Ljava/lang/Class;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lc8/Prf;->mClassV4DrawableWrapper:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    move v0, v1

    .line 459
    goto :goto_0
.end method

.method needStopLoadTimeCalculate(Z)V
    .locals 13
    .param p1, "isOnPause"    # Z

    .prologue
    const/16 v12, 0x21

    const/16 v11, 0x10

    const/16 v10, 0xa

    const/4 v9, 0x5

    const/4 v8, 0x1

    .line 1137
    iget-boolean v4, p0, Lc8/Prf;->mLoadTimeGetted:Z

    if-eqz v4, :cond_1

    .line 1212
    :cond_0
    :goto_0
    return-void

    .line 1140
    :cond_1
    iget-short v4, p0, Lc8/Prf;->mTotalLayOutTimes:S

    if-nez v4, :cond_2

    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v4, v4, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v4, :cond_0

    .line 1143
    :cond_2
    iget-object v4, p0, Lc8/Prf;->mDecorView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1146
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long v2, v4, v6

    .line 1147
    .local v2, "now":J
    iget-wide v4, p0, Lc8/Prf;->mLastLayoutTime:J

    sub-long v0, v2, v4

    .line 1148
    .local v0, "interval":J
    invoke-virtual {p0, v8}, Lc8/Prf;->doOnEndOfLayout(Z)V

    .line 1149
    iget-boolean v4, p0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v4, :cond_0

    .line 1152
    invoke-virtual {p0, v2, v3}, Lc8/Prf;->checkLoadTimeOnLayout(J)V

    .line 1153
    iget-boolean v4, p0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v4, :cond_0

    .line 1156
    if-eqz p1, :cond_4

    .line 1157
    invoke-virtual {p0}, Lc8/Prf;->checkWhiteSreen()V

    .line 1158
    iget-short v4, p0, Lc8/Prf;->mTotalLayOutTimes:S

    if-lez v4, :cond_0

    iget-boolean v4, p0, Lc8/Prf;->mIsWaitDataFill:Z

    if-nez v4, :cond_0

    iget v4, p0, Lc8/Prf;->mActivityVisibleViewCount:I

    iget v5, p0, Lc8/Prf;->mViewGroupCount:I

    if-le v4, v5, :cond_0

    iget v4, p0, Lc8/Prf;->mLastWidthPercent:I

    if-lt v4, v10, :cond_0

    iget v4, p0, Lc8/Prf;->mLastHeightPercent:I

    if-lt v4, v9, :cond_0

    .line 1160
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_3

    .line 1161
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "\u53ef\u80fd\u9759\u6001\u754c\u9762\uff0c\u7ed3\u675f\u5728pause\u51fd\u6570"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_3
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto :goto_0

    .line 1167
    :cond_4
    iget-boolean v4, p0, Lc8/Prf;->mFrameIsTotalLoad:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lc8/Prf;->mFrameIsLoad:Z

    if-eqz v4, :cond_9

    .line 1168
    :cond_5
    iget-boolean v4, p0, Lc8/Prf;->mFrameIsLoad:Z

    if-eqz v4, :cond_7

    const-wide/16 v4, 0x7d0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_7

    .line 1170
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_6

    .line 1171
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "\u5df2\u7ecf\u6709\u4e00\u534a\u533a\u57df\uff0c\u4e142\u79d2\u6ca1\u6709\u53d8\u5316\uff0c\u7ed3\u675f"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_6
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto :goto_0

    .line 1176
    :cond_7
    iget-boolean v4, p0, Lc8/Prf;->mFrameIsTotalLoad:Z

    if-eqz v4, :cond_d

    const-wide/16 v4, 0x3e8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_d

    .line 1178
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_8

    .line 1179
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "\u5df2\u7ecf\u670970%\u533a\u57df\uff0c\u4e141\u79d2\u6ca1\u6709\u53d8\u5316\uff0c\u7ed3\u675f"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :cond_8
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1187
    :cond_9
    iget-short v4, p0, Lc8/Prf;->mTotalLayOutTimes:S

    if-ne v4, v8, :cond_b

    iget v4, p0, Lc8/Prf;->mActivityVisibleViewCount:I

    iget v5, p0, Lc8/Prf;->mViewGroupCount:I

    if-le v4, v5, :cond_b

    iget-boolean v4, p0, Lc8/Prf;->mIsWaitDataFill:Z

    if-nez v4, :cond_b

    const-wide/16 v4, 0xbb8

    cmp-long v4, v0, v4

    if-ltz v4, :cond_b

    iget v4, p0, Lc8/Prf;->mLastWidthPercent:I

    if-lt v4, v12, :cond_b

    iget v4, p0, Lc8/Prf;->mLastHeightPercent:I

    if-lt v4, v10, :cond_b

    .line 1190
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_a

    .line 1191
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "3s\u53ea\u6709\u4e00\u6b21\u5e03\u5c40\u7684\uff0c\u4e14\u6ca1\u6709\u7b49\u5f85\u6570\u636e\u7684\u63a7\u4ef6!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    :cond_a
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1196
    :cond_b
    iget-short v4, p0, Lc8/Prf;->mTotalLayOutTimes:S

    if-le v4, v8, :cond_d

    iget-boolean v4, p0, Lc8/Prf;->mIsWaitDataFill:Z

    if-nez v4, :cond_d

    const-wide/16 v4, 0x1388

    cmp-long v4, v0, v4

    if-ltz v4, :cond_d

    iget v4, p0, Lc8/Prf;->mLastWidthPercent:I

    if-lt v4, v12, :cond_d

    iget v4, p0, Lc8/Prf;->mLastHeightPercent:I

    if-lt v4, v9, :cond_d

    .line 1198
    sget-boolean v4, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v4, :cond_c

    .line 1199
    const-string/jumbo v4, "OnLineMonitor"

    const-string/jumbo v5, "5s\u6709\u4e00\u6b21\u4ee5\u4e0a\u5e03\u5c40\u7684\uff0c\u4e14\u6ca1\u6709\u7b49\u5f85\u6570\u636e\u7684\u63a7\u4ef6!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_c
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto/16 :goto_0

    .line 1207
    :cond_d
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 1209
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 1210
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method protected onActivityCreated(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x10

    const/4 v8, 0x0

    .line 226
    iget-object v4, p0, Lc8/Prf;->mContext:Landroid/content/Context;

    if-nez v4, :cond_3

    .line 227
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lc8/Prf;->mContext:Landroid/content/Context;

    .line 228
    invoke-virtual {p0}, Lc8/Prf;->initGetLastFrameTimeField()V

    .line 229
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    if-gtz v4, :cond_3

    .line 232
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lc8/Prf;->mScreenWidth:I

    .line 233
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lc8/Prf;->mScreenHeight:I

    .line 234
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    .line 235
    .local v0, "desty":F
    sget-boolean v4, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v4, :cond_0

    sget-boolean v4, Lc8/Asf;->sCheckOverDraw:Z

    if-eqz v4, :cond_0

    .line 236
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    iput-object v4, p0, Lc8/Prf;->mOverDrawByte:[[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :cond_0
    :goto_0
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenWidth:I

    if-eqz v4, :cond_1

    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenHeght:I

    if-nez v4, :cond_2

    .line 247
    :cond_1
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    iput v5, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenHeght:I

    .line 248
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget v5, p0, Lc8/Prf;->mScreenWidth:I

    iput v5, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->screenWidth:I

    .line 249
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v4, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iput v0, v4, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->density:F

    .line 252
    :cond_2
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lc8/Prf;->mScreenArea:I

    .line 253
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lc8/Prf;->mHalfScreenArea:I

    .line 254
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    mul-int/2addr v4, v5

    div-int/lit8 v4, v4, 0xa

    iput v4, p0, Lc8/Prf;->mScreenAreaIn10:I

    .line 255
    iget-object v4, p0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 256
    iget-object v4, p0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    iget v5, p0, Lc8/Prf;->mScreenWidth:I

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 257
    iget-object v4, p0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 258
    iget-object v4, p0, Lc8/Prf;->mRectScreen:Landroid/graphics/Rect;

    iget v5, p0, Lc8/Prf;->mScreenHeight:I

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 259
    iget v4, p0, Lc8/Prf;->mScreenWidth:I

    new-array v4, v4, [B

    iput-object v4, p0, Lc8/Prf;->mWidthLocation:[B

    .line 260
    iget v4, p0, Lc8/Prf;->mScreenHeight:I

    new-array v4, v4, [B

    iput-object v4, p0, Lc8/Prf;->mHeightLocation:[B

    .line 261
    iget v4, p0, Lc8/Prf;->mScreenHeight:I

    iget v5, p0, Lc8/Prf;->mScreenWidth:I

    if-le v4, v5, :cond_5

    .line 262
    iget-object v4, p0, Lc8/Prf;->mHeightLocation:[B

    iput-object v4, p0, Lc8/Prf;->mLargeLocation:[B

    .line 263
    iget-object v4, p0, Lc8/Prf;->mWidthLocation:[B

    iput-object v4, p0, Lc8/Prf;->mSmallLocation:[B

    .line 270
    .end local v0    # "desty":F
    :cond_3
    :goto_1
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-object v4, p0, Lc8/Prf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 273
    sget v4, Lc8/msf;->sApiLevel:I

    if-lt v4, v9, :cond_4

    .line 274
    iget-object v4, p0, Lc8/Prf;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v4, :cond_4

    .line 275
    new-instance v4, Lc8/Orf;

    invoke-direct {v4, p0}, Lc8/Orf;-><init>(Lc8/Prf;)V

    iput-object v4, p0, Lc8/Prf;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 278
    :cond_4
    iget-object v4, p0, Lc8/Prf;->mFrameTimeByteArray:[S

    if-eqz v4, :cond_7

    .line 279
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v4, p0, Lc8/Prf;->mFrameTimeByteArray:[S

    array-length v4, v4

    if-ge v1, v4, :cond_6

    .line 280
    iget-object v4, p0, Lc8/Prf;->mFrameTimeByteArray:[S

    aput-short v8, v4, v1

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 239
    .end local v1    # "i":I
    :catch_0
    move-exception v4

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    .line 240
    .local v3, "wm":Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 241
    .local v2, "metric":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 242
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lc8/Prf;->mScreenWidth:I

    .line 243
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lc8/Prf;->mScreenHeight:I

    .line 244
    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .restart local v0    # "desty":F
    goto/16 :goto_0

    .line 265
    .end local v2    # "metric":Landroid/util/DisplayMetrics;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_5
    iget-object v4, p0, Lc8/Prf;->mWidthLocation:[B

    iput-object v4, p0, Lc8/Prf;->mLargeLocation:[B

    .line 266
    iget-object v4, p0, Lc8/Prf;->mHeightLocation:[B

    iput-object v4, p0, Lc8/Prf;->mSmallLocation:[B

    goto :goto_1

    .line 282
    .end local v0    # "desty":F
    .restart local v1    # "i":I
    :cond_6
    iput-short v8, p0, Lc8/Prf;->mFrameTimeIndex:S

    .line 283
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    iput-wide v4, p0, Lc8/Prf;->mFrameTimeArrayStartTime:J

    .line 285
    .end local v1    # "i":I
    :cond_7
    sget v4, Lc8/msf;->sApiLevel:I

    if-lt v4, v9, :cond_9

    iget-object v4, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v4, :cond_9

    .line 286
    iget-object v4, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-nez v4, :cond_8

    .line 287
    new-instance v4, Lc8/Mrf;

    invoke-direct {v4, p0}, Lc8/Mrf;-><init>(Lc8/Prf;)V

    iput-object v4, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 289
    :cond_8
    iput-wide v10, p0, Lc8/Prf;->mFrameStartTime:J

    .line 290
    iput-wide v10, p0, Lc8/Prf;->mFrameEndTime:J

    .line 291
    iget-object v4, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 292
    iget-object v4, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    iget-object v5, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v4, v5}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 295
    :cond_9
    iget-object v4, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v4, v4, Lc8/Grf;->mActivityOncreateTime:J

    iput-wide v4, p0, Lc8/Prf;->mLoadStartTime:J

    .line 296
    iput-boolean v8, p0, Lc8/Prf;->mCanCheckOverDraw:Z

    .line 297
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    .line 298
    return-void
.end method

.method protected onActivityPaused(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 309
    iput-object v0, p0, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    .line 310
    iput-object v0, p0, Lc8/Prf;->mDecorView:Landroid/view/View;

    .line 311
    iget-object v0, p0, Lc8/Prf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iput-object v0, p0, Lc8/Prf;->mActivityRuntimeInfoOld:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 312
    const/4 v0, 0x1

    iput-short v0, p0, Lc8/Prf;->mMaxLayoutDepth:S

    .line 313
    iput-wide v4, p0, Lc8/Prf;->mLoadTime:J

    .line 314
    iput-wide v4, p0, Lc8/Prf;->mLastLayoutTime:J

    .line 315
    iput v2, p0, Lc8/Prf;->mLastViewGroupCount:I

    .line 316
    iput-short v2, p0, Lc8/Prf;->mRedundantLayout:S

    .line 317
    iput-short v2, p0, Lc8/Prf;->mMaxRelativeLayoutDepth:S

    .line 318
    iput-short v2, p0, Lc8/Prf;->mSuspectRelativeLayout:S

    .line 319
    iput-boolean v2, p0, Lc8/Prf;->mLoadTimeGetted:Z

    .line 320
    iput-boolean v2, p0, Lc8/Prf;->mIsWaitDataFill:Z

    .line 321
    iput-boolean v2, p0, Lc8/Prf;->mFrameIsTotalLoad:Z

    .line 322
    iput-boolean v2, p0, Lc8/Prf;->mFrameIsLoad:Z

    .line 323
    iput-short v2, p0, Lc8/Prf;->mLayoutTimesOnLoad:S

    .line 324
    iput-wide v4, p0, Lc8/Prf;->mTotalLayoutUseTime:J

    .line 325
    iput-wide v4, p0, Lc8/Prf;->mMaxLayoutUseTime:J

    .line 326
    iput v2, p0, Lc8/Prf;->mActivityViewCount:I

    .line 327
    iput v2, p0, Lc8/Prf;->mAllScreenLoadTimes:I

    .line 328
    iput v2, p0, Lc8/Prf;->mHasfScreenLoadTimes:I

    .line 329
    iput v2, p0, Lc8/Prf;->mViewGroupCountEqualTimes:I

    .line 330
    iput v2, p0, Lc8/Prf;->mViewEqualTimes:I

    .line 331
    iput-boolean v2, p0, Lc8/Prf;->mIsLayouted:Z

    .line 332
    iput-short v2, p0, Lc8/Prf;->mTotalLayOutTimes:S

    .line 333
    iput v2, p0, Lc8/Prf;->mHasfScreenLoadTimes:I

    .line 335
    iput v2, p0, Lc8/Prf;->mEmptyTextView:I

    .line 336
    iget-object v0, p0, Lc8/Prf;->mWidthLocation:[B

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lc8/Prf;->mWidthLocation:[B

    iget-object v1, p0, Lc8/Prf;->mWidthLocation:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 338
    iget-object v0, p0, Lc8/Prf;->mHeightLocation:[B

    iget-object v1, p0, Lc8/Prf;->mHeightLocation:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 340
    :cond_0
    iput v2, p0, Lc8/Prf;->mLastWidthPercent:I

    .line 341
    iput v2, p0, Lc8/Prf;->mLastHeightPercent:I

    .line 342
    iput v2, p0, Lc8/Prf;->mLastHeightPercentEqualTimes:I

    .line 343
    iput v2, p0, Lc8/Prf;->mBadSmCount:I

    .line 344
    iput v2, p0, Lc8/Prf;->mTotalSmCount:I

    .line 345
    iput v2, p0, Lc8/Prf;->mTotalBadSmTime:I

    .line 346
    iput-wide v4, p0, Lc8/Prf;->mFrameEndTime:J

    .line 347
    iput-wide v4, p0, Lc8/Prf;->mFrameStartTime:J

    .line 349
    invoke-virtual {p0}, Lc8/Prf;->removeFromChoreographer()V

    .line 351
    return-void
.end method

.method protected onActivityStarted(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "decorView"    # Landroid/view/View;

    .prologue
    .line 302
    iput-object p2, p0, Lc8/Prf;->mDecorView:Landroid/view/View;

    .line 303
    iget-object v0, p0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v0, v0, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v0, :cond_0

    .line 304
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p0, Lc8/Prf;->mLoadStartTime:J

    .line 306
    :cond_0
    return-void
.end method

.method postFrameCallback()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 219
    sget v0, Lc8/msf;->sApiLevel:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Lc8/Prf;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 222
    :cond_0
    return-void
.end method

.method removeFromChoreographer()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 701
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_1

    sget v0, Lc8/msf;->sApiLevel:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 703
    :try_start_0
    iget-object v0, p0, Lc8/Prf;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 704
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lc8/Prf;->mFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_1

    .line 707
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iget-object v1, p0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method setActivityInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .prologue
    .line 716
    if-nez p1, :cond_1

    .line 737
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget-wide v0, p0, Lc8/Prf;->mTotalLayoutUseTime:J

    iput-wide v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->totalLayoutUseTime:J

    .line 720
    iget-short v0, p0, Lc8/Prf;->mLayoutTimesOnLoad:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->layoutTimesOnLoad:S

    .line 721
    iget-wide v0, p0, Lc8/Prf;->mMaxLayoutUseTime:J

    iput-wide v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutUseTime:J

    .line 722
    iget-short v0, p0, Lc8/Prf;->mMeasureTimes:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->measureTimes:S

    .line 723
    iget-short v0, p0, Lc8/Prf;->mSuspectRelativeLayout:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->suspectRelativeLayout:S

    .line 724
    iget-short v0, p0, Lc8/Prf;->mMaxLayoutDepth:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxLayoutDepth:S

    .line 725
    iget-short v0, p0, Lc8/Prf;->mRedundantLayout:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->redundantLayout:S

    .line 726
    iget-wide v0, p0, Lc8/Prf;->mLoadTime:J

    long-to-int v0, v0

    iput v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadTime:I

    .line 727
    iget-short v0, p0, Lc8/Prf;->mFirstRelativeLayoutDepth:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->firstRelativeLayoutDepth:S

    .line 728
    iget-short v0, p0, Lc8/Prf;->mMaxRelativeLayoutDepth:S

    iput-short v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->maxRelativeLayoutDepth:S

    .line 729
    iget v0, p0, Lc8/Prf;->mActivityViewCount:I

    iput v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityViewCount:I

    .line 730
    iget v0, p0, Lc8/Prf;->mActivityVisibleViewCount:I

    iput v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityVisibleViewCount:I

    .line 731
    iget v0, p0, Lc8/Prf;->mSmoothViewOutRevLayoutDepth:I

    iput v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->smoothViewOutRevLayoutDepth:I

    .line 732
    sget-boolean v0, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v0, :cond_0

    .line 733
    iget-boolean v0, p0, Lc8/Prf;->mIsWaitDataFill:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lc8/Prf;->mViewWaitDataFill:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " \u672a\u6709\u6570\u636e\u586b\u5145!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->loadRelason:Ljava/lang/String;

    goto :goto_0
.end method

.method stopLoadTimeCalculate()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    if-nez v2, :cond_1

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/Prf;->mLoadTimeGetted:Z

    .line 757
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v11, v2, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 758
    .local v11, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-eqz v11, :cond_0

    .line 761
    const-wide/16 v14, 0x0

    .line 763
    .local v14, "startActivityTime":J
    iget-boolean v2, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->isColdOpen:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mStartActivityTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLoadStartTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mStartActivityTime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLoadStartTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mStartActivityTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_a

    .line 764
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLastLayoutTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mStartActivityTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lc8/Prf;->mLoadTime:J

    .line 765
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLoadStartTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mStartActivityTime:J

    sub-long v14, v2, v4

    .line 766
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lc8/Prf;->mStartActivityTime:J

    .line 771
    :goto_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLoadTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 772
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lc8/Prf;->mLoadTime:J

    .line 775
    :cond_2
    sget v2, Lc8/msf;->sApiLevel:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v2, :cond_3

    .line 778
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mChoreographer:Landroid/view/Choreographer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Prf;->mTimeFrameCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 784
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lc8/Prf;->setActivityInfo(Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;)V

    .line 785
    iput-wide v14, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->startActivityTime:J

    .line 786
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Prf;->mTotalSmCount:I

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v2, v2, Lc8/msf;->mIsActivityColdOpen:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lc8/Prf;->mTotalSmCount:I

    const v3, 0x927c0

    if-ge v2, v3, :cond_4

    .line 787
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mFrameEndTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mFrameStartTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmUsedTime:I

    .line 788
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Prf;->mBadSmCount:I

    iput v2, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmCount:I

    .line 789
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Prf;->mTotalSmCount:I

    iput v2, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadSmCount:I

    .line 790
    move-object/from16 v0, p0

    iget v2, v0, Lc8/Prf;->mTotalBadSmTime:I

    iput v2, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityLoadBadSmUsedTime:I

    .line 792
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lc8/Prf;->mLoadTimeGetted:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v2, v2, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v2, :cond_5

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mLoadTime:J

    long-to-int v3, v4

    iput v3, v2, Lc8/msf;->mBootActivityLoadTime:I

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    long-to-int v3, v14

    iput v3, v2, Lc8/msf;->mBootStartActivityTime:I

    .line 796
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v2, :cond_6

    .line 797
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 800
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    invoke-virtual {v2}, Lc8/msf;->notifyActivityLoadFinish()V

    .line 802
    sget-boolean v2, Lc8/msf;->sIsNormalDebug:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lc8/osf;->sIsDebug:Z

    if-eqz v2, :cond_8

    .line 803
    :cond_7
    const-string/jumbo v2, "OnLineMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v4, v4, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v4}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " LoadTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mLoadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",startActivityTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",LayoutTimesOnLoad="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-short v4, v0, Lc8/Prf;->mLayoutTimesOnLoad:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",TotalLayoutTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mTotalLayoutUseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :cond_8
    sget-boolean v2, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v2, :cond_9

    .line 806
    const-string/jumbo v2, "OnLineMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mMaxLayoutUseTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mMaxLayoutUseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mTotalLayoutUseTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mTotalLayoutUseTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",mLayoutTimesOnLoad="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-short v4, v0, Lc8/Prf;->mLayoutTimesOnLoad:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/Prf;->mCanCheckOverDraw:Z

    .line 809
    sget-boolean v2, Lc8/Asf;->sCheckOverDraw:Z

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 810
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long v16, v2, v4

    .line 811
    .local v16, "t1":J
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    array-length v2, v2

    if-ge v10, v2, :cond_c

    .line 812
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    aget-object v2, v2, v10

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    aget-object v2, v2, v10

    array-length v2, v2

    if-ge v12, v2, :cond_b

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    aget-object v2, v2, v10

    const/4 v3, 0x0

    aput-byte v3, v2, v12

    .line 812
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 768
    .end local v10    # "i":I
    .end local v12    # "j":I
    .end local v16    # "t1":J
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Prf;->mLastLayoutTime:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mLoadStartTime:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lc8/Prf;->mLoadTime:J

    goto/16 :goto_1

    .line 811
    .restart local v10    # "i":I
    .restart local v12    # "j":I
    .restart local v16    # "t1":J
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 816
    .end local v12    # "j":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mWidthLocation:[B

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Prf;->mWidthLocation:[B

    array-length v3, v3

    if-eq v2, v3, :cond_d

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mWidthLocation:[B

    array-length v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lc8/Prf;->mHeightLocation:[B

    array-length v3, v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    move-object/from16 v0, p0

    iput-object v2, v0, Lc8/Prf;->mOverDrawByte:[[B

    .line 819
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lc8/msf;->notifyOnCheckViewTree(I)V

    .line 821
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mDecorView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lc8/Prf;->getViewGroupCount(Landroid/view/View;SSS)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 825
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lc8/msf;->notifyOnCheckViewTree(I)V

    .line 826
    sget-boolean v2, Lc8/msf;->sIsNormalDebug:Z

    if-nez v2, :cond_e

    sget-boolean v2, Lc8/osf;->sIsDebug:Z

    if-eqz v2, :cond_f

    .line 827
    :cond_e
    const-string/jumbo v2, "OnLineMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\u8fc7\u5ea6\u7ed8\u5236\u70b9,OverDraw3x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw3xCount:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",OverDraw4x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, v11, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->overDraw4xCount:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", \u8fc7\u5ea6\u7ed8\u5236\u68c0\u6d4b\u8017\u65f6="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/32 v8, 0xf4240

    div-long/2addr v4, v8

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    .end local v10    # "i":I
    .end local v16    # "t1":J
    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lc8/Prf;->mCanCheckOverDraw:Z

    .line 831
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mSmoothDetailDataNotify:Lc8/lsf;

    if-eqz v2, :cond_0

    .line 832
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mFrameTimeArrayStartTime:J

    sub-long v6, v2, v4

    .line 833
    .local v6, "usedTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lc8/Prf;->mOnLineMonitor:Lc8/msf;

    iget-object v2, v2, Lc8/msf;->mSmoothCalculate:Lc8/tsf;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lc8/Prf;->mFrameTimeArrayStartTime:J

    move-object/from16 v0, p0

    iget-short v8, v0, Lc8/Prf;->mFrameTimeIndex:S

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Prf;->mFrameTimeByteArray:[S

    invoke-virtual/range {v2 .. v9}, Lc8/tsf;->notifySmoothDetailData(IJJS[S)V

    goto/16 :goto_0

    .end local v6    # "usedTime":J
    .restart local v10    # "i":I
    .restart local v16    # "t1":J
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .end local v10    # "i":I
    .end local v16    # "t1":J
    :catch_1
    move-exception v2

    goto/16 :goto_2
.end method

.method stopOnClick()V
    .locals 3

    .prologue
    .line 741
    iget-boolean v0, p0, Lc8/Prf;->mLoadTimeGetted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Prf;->mHasSmoothView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Prf;->mIsWaitDataFill:Z

    if-nez v0, :cond_0

    iget v0, p0, Lc8/Prf;->mLastHeightPercent:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 744
    :cond_1
    sget-boolean v0, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v0, :cond_2

    .line 745
    const-string/jumbo v0, "OnLineMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u70b9\u51fb\u505c\u6b62 LastHeightPercent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lc8/Prf;->mLastHeightPercent:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_2
    invoke-virtual {p0}, Lc8/Prf;->stopLoadTimeCalculate()V

    goto :goto_0
.end method
