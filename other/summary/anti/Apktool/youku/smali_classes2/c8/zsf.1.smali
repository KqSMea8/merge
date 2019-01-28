.class public Lc8/zsf;
.super Ljava/lang/Thread;
.source "TraceDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Asf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TraceMainThread"
.end annotation


# instance fields
.field mLastStackTraceElement:[Ljava/lang/StackTraceElement;

.field mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

.field final synthetic this$0:Lc8/Asf;


# direct methods
.method public constructor <init>(Lc8/Asf;Ljava/lang/String;)V
    .locals 0
    .param p2, "threadName"    # Ljava/lang/String;

    .prologue
    .line 3368
    iput-object p1, p0, Lc8/zsf;->this$0:Lc8/Asf;

    .line 3369
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3370
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 3374
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3375
    :cond_0
    :goto_0
    iget-object v6, p0, Lc8/zsf;->this$0:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v6, v6, Lc8/msf;->mIsInBackGround:Z

    if-nez v6, :cond_8

    .line 3376
    sget-object v6, Lc8/Asf;->sMainThread:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    .line 3377
    iget-object v3, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    .line 3378
    .local v3, "oldStack":[Ljava/lang/StackTraceElement;
    sget-object v6, Lc8/Asf;->sMainThread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    iput-object v6, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    .line 3379
    iget-object v6, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    array-length v6, v6

    if-lez v6, :cond_0

    .line 3381
    if-eqz v3, :cond_2

    .line 3383
    const/4 v1, 0x1

    .line 3384
    .local v1, "isEqual":Z
    array-length v6, v3

    iget-object v7, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    array-length v7, v7

    if-ne v6, v7, :cond_4

    .line 3385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v3

    if-ge v0, v6, :cond_1

    const/4 v6, 0x5

    if-ge v0, v6, :cond_1

    .line 3386
    aget-object v4, v3, v0

    .line 3387
    .local v4, "s1":Ljava/lang/StackTraceElement;
    iget-object v6, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    aget-object v5, v6, v0

    .line 3388
    .local v5, "s2":Ljava/lang/StackTraceElement;
    invoke-virtual {v4, v5}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3389
    const/4 v1, 0x0

    .line 3396
    .end local v0    # "i":I
    .end local v4    # "s1":Ljava/lang/StackTraceElement;
    .end local v5    # "s2":Ljava/lang/StackTraceElement;
    :cond_1
    :goto_2
    if-eqz v1, :cond_5

    .line 3397
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    if-nez v6, :cond_2

    .line 3398
    iget-object v6, p0, Lc8/zsf;->mLastStackTraceElement:[Ljava/lang/StackTraceElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 3399
    .local v2, "methodName":Ljava/lang/String;
    const-string/jumbo v6, "nativePollOnce"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3400
    new-instance v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-direct {v6}, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;-><init>()V

    iput-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    .line 3401
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static {v3, v7, v8}, Lc8/msf;->getStackTraceElement([Ljava/lang/StackTraceElement;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->stackTraceElement:Ljava/lang/String;

    .line 3402
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iput-wide v8, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->useTime:J

    .line 3403
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->cpuTime:J

    .line 3404
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iget-object v7, p0, Lc8/zsf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-static {v7}, Lc8/msf;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->activityName:Ljava/lang/String;

    .line 3405
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iget-object v7, p0, Lc8/zsf;->this$0:Lc8/Asf;

    iget-object v7, v7, Lc8/Asf;->mOnLineMonitor:Lc8/msf;

    iget-boolean v7, v7, Lc8/msf;->mIsInBootStep:Z

    iput-boolean v7, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->isBoot:Z

    .line 3406
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iput-object v2, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->methodName:Ljava/lang/String;

    .line 3423
    .end local v1    # "isEqual":Z
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_0
    sget-short v6, Lc8/Asf;->sThreadExecuteTimeInterval:S

    const/16 v7, 0xa

    if-gt v6, v7, :cond_7

    .line 3424
    sget-short v6, Lc8/Asf;->sThreadExecuteTimeInterval:S

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v6

    goto/16 :goto_0

    .line 3385
    .restart local v0    # "i":I
    .restart local v1    # "isEqual":Z
    .restart local v4    # "s1":Ljava/lang/StackTraceElement;
    .restart local v5    # "s2":Ljava/lang/StackTraceElement;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 3394
    .end local v0    # "i":I
    .end local v4    # "s1":Ljava/lang/StackTraceElement;
    .end local v5    # "s2":Ljava/lang/StackTraceElement;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 3411
    :cond_5
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    if-eqz v6, :cond_6

    .line 3412
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    iget-object v7, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iget-wide v10, v7, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->useTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->useTime:J

    .line 3413
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iget-wide v6, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->useTime:J

    sget-short v8, Lc8/Asf;->sThreadExecuteTimeInterval:S

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6

    .line 3414
    iget-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v8

    iget-object v7, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    iget-wide v10, v7, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->cpuTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v6, Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;->cpuTime:J

    .line 3415
    iget-object v6, p0, Lc8/zsf;->this$0:Lc8/Asf;

    iget-object v6, v6, Lc8/Asf;->mThreadStackTraceTimeList:Ljava/util/ArrayList;

    iget-object v7, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3418
    :cond_6
    const/4 v6, 0x0

    iput-object v6, p0, Lc8/zsf;->mThreadStackTraceTime:Lcom/taobao/onlinemonitor/TraceDetail$ThreadStackTraceTime;

    goto :goto_3

    .line 3426
    .end local v1    # "isEqual":Z
    :cond_7
    const-wide/16 v6, 0xa

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 3434
    .end local v3    # "oldStack":[Ljava/lang/StackTraceElement;
    :cond_8
    return-void
.end method
