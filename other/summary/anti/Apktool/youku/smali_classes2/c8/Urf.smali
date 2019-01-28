.class public Lc8/Urf;
.super Ljava/lang/Object;
.source "OnLineMonitor.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msf;


# direct methods
.method constructor <init>(Lc8/msf;)V
    .locals 0

    .prologue
    .line 624
    iput-object p1, p0, Lc8/Urf;->this$0:Lc8/msf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 627
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-boolean v6, v6, Lc8/msf;->mIsIdleGeted:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mActivityName:Ljava/lang/String;

    if-nez v6, :cond_2

    :cond_0
    move v4, v5

    .line 695
    :cond_1
    :goto_0
    return v4

    .line 630
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 631
    .local v0, "curTime":J
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-wide v0, v6, Lc8/msf;->mCheckAnrTime:J

    .line 632
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mActivityIdleTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    .line 633
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-wide v0, v6, Lc8/msf;->mActivityIdleTime:J

    .line 634
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-wide v0, v6, Lc8/msf;->mActivityIdleFistTime:J

    .line 651
    :cond_3
    :goto_1
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget v7, v6, Lc8/msf;->mIdleNotifyCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lc8/msf;->mIdleNotifyCount:I

    .line 654
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mActivityIdleTime:J

    iget-object v8, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mActivityIdleFistTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_9

    .line 655
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 658
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-boolean v6, v6, Lc8/msf;->mIsActivityColdOpen:Z

    if-nez v6, :cond_8

    .line 660
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleTime:J

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityResumeTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lc8/msf;->mActivityIdleTime:J

    .line 661
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleFistTime:J

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityResumeTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lc8/msf;->mActivityIdleFistTime:J

    .line 666
    :goto_2
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-boolean v5, v6, Lc8/msf;->mIsIdleGeted:Z

    .line 668
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v5, :cond_4

    .line 669
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    if-eqz v5, :cond_4

    .line 670
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v5, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 671
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1770

    invoke-virtual {v5, v12, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 674
    :cond_4
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v6, v6, Lc8/Grf;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v6, v4}, Lc8/msf;->notifyOnActivityLifeCycleList(Landroid/app/Activity;I)V

    .line 675
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    sget-short v7, Lc8/Asf;->sTraceThreadInterval:S

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 676
    sget-boolean v5, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v5, :cond_5

    .line 677
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v7}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is idle\uff0cuse time="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",idleNotifyCount="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mIdleNotifyCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", FistIdleTime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleFistTime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",MaxBlockIdletime="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mMaxBlockIdletime:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_5
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v5, :cond_1

    .line 687
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mActivityIdleTime:J

    long-to-int v6, v6

    iput v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->idleTime:I

    .line 688
    iget-object v5, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget v6, v6, Lc8/msf;->mIdleNotifyCount:I

    int-to-short v6, v6

    iput-short v6, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->checkIdleTimes:S

    goto/16 :goto_0

    .line 636
    :cond_6
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mActivityIdleTime:J

    sub-long v2, v0, v6

    .line 637
    .local v2, "interval":J
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget v6, v6, Lc8/msf;->mIdleCheckIntervalControl:I

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_7

    .line 643
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-wide v0, v6, Lc8/msf;->mActivityIdleTime:J

    .line 647
    :cond_7
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v6, v6, Lc8/msf;->mMaxBlockIdletime:J

    cmp-long v6, v6, v2

    if-gez v6, :cond_3

    .line 648
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iput-wide v2, v6, Lc8/msf;->mMaxBlockIdletime:J

    goto/16 :goto_1

    .line 663
    .end local v2    # "interval":J
    :cond_8
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleTime:J

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityOncreateTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lc8/msf;->mActivityIdleTime:J

    .line 664
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-wide v8, v7, Lc8/msf;->mActivityIdleFistTime:J

    iget-object v7, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityOncreateTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lc8/msf;->mActivityIdleFistTime:J

    goto/16 :goto_2

    .line 694
    :cond_9
    iget-object v6, p0, Lc8/Urf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xa

    invoke-virtual {v6, v5, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method
