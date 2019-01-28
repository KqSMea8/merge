.class public Lc8/ssf;
.super Ljava/lang/Object;
.source "SmoothCalculate.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/tsf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyFrameCallback"
.end annotation


# instance fields
.field mInnerDrawCount:I

.field final synthetic this$0:Lc8/tsf;


# direct methods
.method public constructor <init>(Lc8/tsf;)V
    .locals 1

    .prologue
    .line 547
    iput-object p1, p0, Lc8/ssf;->this$0:Lc8/tsf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    const/4 v0, 0x0

    iput v0, p0, Lc8/ssf;->mInnerDrawCount:I

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 13
    .param p1, "frameTimeNanos"    # J

    .prologue
    const v12, 0x4185999a    # 16.7f

    .line 552
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iput-wide p1, v8, Lc8/tsf;->mLastFrameTimeNanos:J

    .line 553
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 554
    .local v4, "frameTimeNanosCur":J
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget v9, v8, Lc8/tsf;->mTotalSmCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lc8/tsf;->mTotalSmCount:I

    .line 555
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-wide v8, v8, Lc8/tsf;->mFrameEndTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    .line 556
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-wide v8, v8, Lc8/tsf;->mFrameEndTime:J

    sub-long v8, v4, v8

    long-to-float v8, v8

    const v9, 0x49742400    # 1000000.0f

    div-float v6, v8, v9

    .line 557
    .local v6, "interval":F
    cmpl-float v8, v6, v12

    if-ltz v8, :cond_0

    .line 558
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget v9, v8, Lc8/tsf;->mBadSmCount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lc8/tsf;->mBadSmCount:I

    .line 559
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget v9, v8, Lc8/tsf;->mTotalBadSmTime:I

    int-to-float v9, v9

    const v10, 0x4184cccd    # 16.6f

    sub-float v10, v6, v10

    add-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Lc8/tsf;->mTotalBadSmTime:I

    .line 561
    :cond_0
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v8, v8, Lc8/tsf;->mFrameTimeByteArray:[S

    if-eqz v8, :cond_1

    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-short v8, v8, Lc8/tsf;->mFrameTimeIndex:S

    iget-object v9, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v9, v9, Lc8/tsf;->mFrameTimeByteArray:[S

    array-length v9, v9

    if-ge v8, v9, :cond_1

    .line 562
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v8, v8, Lc8/tsf;->mFrameTimeByteArray:[S

    iget-object v9, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-short v9, v9, Lc8/tsf;->mFrameTimeIndex:S

    float-to-int v10, v6

    int-to-short v10, v10

    aput-short v10, v8, v9

    .line 563
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-short v9, v8, Lc8/tsf;->mFrameTimeIndex:S

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iput-short v9, v8, Lc8/tsf;->mFrameTimeIndex:S

    .line 565
    :cond_1
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-wide v8, v8, Lc8/tsf;->mMaxSMInterval:J

    float-to-long v10, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 566
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    float-to-long v10, v6

    iput-wide v10, v8, Lc8/tsf;->mMaxSMInterval:J

    .line 568
    :cond_2
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v8, v8, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v8, :cond_4

    cmpl-float v8, v6, v12

    if-ltz v8, :cond_4

    .line 569
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v8, v8, Lc8/tsf;->mOnLineMonitor:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v0, v8, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityBadSmoothStepCount:[I

    .line 570
    .local v0, "activityBadSmoothStepCount":[I
    float-to-int v8, v6

    sget v9, Lc8/osf;->sSmoothStepInterval:I

    div-int/2addr v8, v9

    add-int/lit8 v1, v8, -0x1

    .line 571
    .local v1, "index":I
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    if-le v1, v8, :cond_3

    .line 572
    array-length v8, v0

    add-int/lit8 v1, v8, -0x1

    .line 574
    :cond_3
    if-ltz v1, :cond_4

    .line 575
    aget v8, v0, v1

    add-int/lit8 v8, v8, 0x1

    aput v8, v0, v1

    .line 588
    .end local v0    # "activityBadSmoothStepCount":[I
    .end local v1    # "index":I
    .end local v6    # "interval":F
    :cond_4
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iput-wide v4, v8, Lc8/tsf;->mFrameEndTime:J

    .line 589
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-boolean v8, v8, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v8, :cond_8

    .line 590
    iget v8, p0, Lc8/ssf;->mInnerDrawCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lc8/ssf;->mInnerDrawCount:I

    .line 591
    iget v8, p0, Lc8/ssf;->mInnerDrawCount:I

    iget-object v9, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget v9, v9, Lc8/tsf;->mDrawTimesOnFling:I

    sub-int v7, v8, v9

    .line 592
    .local v7, "stopFrame":I
    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    const/4 v8, -0x2

    if-gt v7, v8, :cond_7

    .line 593
    :cond_5
    sget-boolean v8, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v8, :cond_6

    .line 594
    const-string/jumbo v8, "OnLineMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "\u505c\u6b62\u6ed1\u52a8\u7edf\u8ba1 , stopFrame="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_6
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    invoke-virtual {v8}, Lc8/tsf;->stopSmoothSmCalculate()V

    .line 598
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v2, v8, v10

    .line 599
    .local v2, "curTime":J
    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-wide v8, v8, Lc8/tsf;->mFlyFrameStartTime:J

    sub-long v8, v2, v8

    const-wide/16 v10, 0x2710

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 600
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iput-wide v2, v8, Lc8/tsf;->mFlyFrameStartTime:J

    .line 601
    const-string/jumbo v8, "OnLineMonitor"

    const-string/jumbo v9, "\u754c\u9762\u6709\u4e0d\u505c\u7684\u5237\u65b0\uff0c\u53ef\u80fd\u6709\u89c6\u9891\u6216\u8005\u52a8\u753b!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    invoke-virtual {v8}, Lc8/tsf;->stopSmoothSmCalculate()V

    .line 605
    .end local v2    # "curTime":J
    .end local v7    # "stopFrame":I
    :cond_8
    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-boolean v8, v8, Lc8/tsf;->mIsTouchDownMode:Z

    if-nez v8, :cond_9

    iget-object v8, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-boolean v8, v8, Lc8/tsf;->mIsFlingStart:Z

    if-eqz v8, :cond_a

    .line 606
    :cond_9
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v8

    iget-object v9, p0, Lc8/ssf;->this$0:Lc8/tsf;

    iget-object v9, v9, Lc8/tsf;->mFrameCallback:Lc8/ssf;

    invoke-virtual {v8, v9}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 608
    :cond_a
    return-void
.end method
