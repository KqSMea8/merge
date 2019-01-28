.class public Lc8/Yrf;
.super Landroid/os/Handler;
.source "OnLineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/msf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/msf;


# direct methods
.method constructor <init>(Lc8/msf;)V
    .locals 0

    .prologue
    .line 6436
    iput-object p1, p0, Lc8/Yrf;->this$0:Lc8/msf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6441
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 6520
    :cond_0
    :goto_0
    return-void

    .line 6443
    :sswitch_0
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    if-eqz v3, :cond_0

    .line 6444
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mMessageQueue:Landroid/os/MessageQueue;

    iget-object v6, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mIdleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v3, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_0

    .line 6448
    :sswitch_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long v4, v6, v8

    .line 6449
    .local v4, "time":J
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-wide v6, v3, Lc8/msf;->mCheckAnrTime:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0xbb8

    cmp-long v3, v6, v8

    if-gez v3, :cond_1

    .line 6450
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    const/4 v6, 0x0

    iput-boolean v6, v3, Lc8/msf;->mIsCheckAnrStat:Z

    .line 6452
    :cond_1
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iput-wide v4, v3, Lc8/msf;->mCheckAnrTime:J

    goto :goto_0

    .line 6456
    .end local v4    # "time":J
    :sswitch_2
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    invoke-virtual {v3}, Lc8/msf;->startPerformanceMonitor()V

    goto :goto_0

    .line 6460
    :sswitch_3
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 6462
    :pswitch_0
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v3, :cond_0

    .line 6463
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x0

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v8, v7, Lc8/Grf;->mActivityStartTime:J

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityOncreateTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    .line 6464
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityStartTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    goto :goto_0

    .line 6469
    :pswitch_1
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityStartTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    goto/16 :goto_0

    .line 6473
    :pswitch_2
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    if-eqz v3, :cond_0

    .line 6474
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mActivityRuntimeInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    iget-object v3, v3, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityResumeTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    goto/16 :goto_0

    .line 6479
    :pswitch_3
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6482
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 6483
    .local v1, "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-eqz v1, :cond_0

    .line 6484
    iget-object v3, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityPausedTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    goto/16 :goto_0

    .line 6489
    .end local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :pswitch_4
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6492
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    iget-object v6, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 6493
    .restart local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-eqz v1, :cond_0

    .line 6494
    iget-object v3, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityStopedTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6

    goto/16 :goto_0

    .line 6499
    .end local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    :pswitch_5
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 6502
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6503
    .local v2, "size":I
    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_0

    .line 6504
    iget-object v3, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v3, v3, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v3, v3, Lc8/Asf;->mActivityRuntimeInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;

    .line 6505
    .restart local v1    # "info":Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->activityName:Ljava/lang/String;

    iget-object v6, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v6, v6, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mDestroyedActivityName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6506
    iget-object v3, v1, Lcom/taobao/onlinemonitor/OnLineMonitor$ActivityRuntimeInfo;->lifeCycleArrayUsedTime:[J

    const/4 v6, 0x5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/Yrf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-wide v10, v7, Lc8/Grf;->mActivityDestroyTime:J

    sub-long/2addr v8, v10

    aput-wide v8, v3, v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6503
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 6441
    .line 6460
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xe -> :sswitch_2
        0xf -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
