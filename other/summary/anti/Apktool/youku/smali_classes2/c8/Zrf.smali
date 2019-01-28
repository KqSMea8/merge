.class public Lc8/Zrf;
.super Landroid/os/Handler;
.source "OnLineMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/asf;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/asf;


# direct methods
.method constructor <init>(Lc8/asf;)V
    .locals 0

    .prologue
    .line 6532
    iput-object p1, p0, Lc8/Zrf;->this$1:Lc8/asf;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 57
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 6538
    :try_start_0
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 7105
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6540
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x3

    invoke-static {v5, v7}, Lc8/msf;->onInstallBundler(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7102
    :catch_0
    move-exception v24

    .line 7103
    .local v24, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 6544
    .end local v24    # "e":Ljava/lang/Throwable;
    :pswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    if-eqz v5, :cond_0

    .line 6545
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mLoadTimeCalculate:Lc8/Prf;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lc8/Prf;->needStopLoadTimeCalculate(Z)V

    goto :goto_0

    .line 6551
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mIsFullInBackGround:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 6553
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mMyCallback:Lc8/Xrf;

    invoke-virtual {v5, v7}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 6558
    :goto_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    invoke-static {v7}, Lc8/msf;->access$000(Lc8/msf;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 6564
    :goto_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6566
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 6567
    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    .line 6568
    .local v33, "mapBgInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    const-wide/16 v10, 0x0

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 6569
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v10, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    .line 6570
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v10, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    .line 6571
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v10, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    sub-long/2addr v8, v10

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 6572
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v10, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    div-long/2addr v8, v10

    long-to-int v0, v8

    move/from16 v41, v0

    .line 6573
    .local v41, "percent":I
    const-string/jumbo v5, "MaxCpuSysRun"

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6574
    const-string/jumbo v5, "CpuSysRun"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6575
    const-string/jumbo v5, "MaxCpuSysTotal"

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget v7, v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6576
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    const-wide/16 v10, 0x64

    mul-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    iget-wide v10, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    div-long/2addr v8, v10

    long-to-int v0, v8

    move/from16 v41, v0

    .line 6577
    const-string/jumbo v5, "CpuSysTotal"

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6579
    .end local v41    # "percent":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    sget-boolean v5, Lc8/osf;->sIsDebug:Z

    if-nez v5, :cond_3

    .line 6580
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 6581
    .local v42, "size":I
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v42

    if-ge v0, v1, :cond_3

    .line 6582
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 6583
    .local v4, "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_2

    .line 6584
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, v33

    invoke-interface {v4, v5, v7, v0, v8}, Lc8/psf;->onGotoSleep(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 6581
    :cond_2
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 6554
    .end local v4    # "onlineStatistics":Lc8/psf;
    .end local v27    # "i":I
    .end local v33    # "mapBgInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v42    # "size":I
    :catch_1
    move-exception v24

    .line 6555
    .local v24, "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 6559
    .end local v24    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v24

    .line 6560
    .restart local v24    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 6588
    .end local v24    # "e":Ljava/lang/Exception;
    .restart local v33    # "mapBgInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_4

    .line 6589
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfo:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6591
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_5

    .line 6592
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 6595
    :cond_5
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 6596
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->runFinalization()V

    .line 6597
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 6602
    :goto_4
    :try_start_6
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_9

    .line 6603
    sget-boolean v5, Lc8/Asf;->sMemoryLeakDetector:Z

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-boolean v5, v5, Lc8/Asf;->mHasMemroyLeack:Z

    if-nez v5, :cond_7

    :cond_6
    sget-boolean v5, Lc8/Asf;->sMemoryAnalysis:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lc8/Asf;->sTraceThread:Z

    if-eqz v5, :cond_8

    sget v5, Lc8/osf;->sToSleepTime:I

    const v7, 0x1d4c0

    if-lt v5, v7, :cond_8

    .line 6604
    :cond_7
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v5, :cond_8

    .line 6606
    :try_start_7
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 6607
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->runFinalization()V

    .line 6608
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 6612
    :goto_5
    :try_start_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lc8/Asf;->writePageInfo(Z)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    .line 6614
    :try_start_9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 6615
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->runFinalization()V

    .line 6616
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_5

    .line 6622
    :cond_8
    :goto_6
    :try_start_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v5}, Lc8/Asf;->clear()V

    .line 6627
    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isFullInBackGround:Z

    .line 6628
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x34

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6629
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u5f00\u59cb\u8fdb\u5165\u4f11\u7720!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6630
    sget-boolean v5, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v5, :cond_0

    .line 6631
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "Now go to sleep!"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6598
    :catch_3
    move-exception v24

    .line 6599
    .local v24, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v24

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 6609
    .end local v24    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v24

    .line 6610
    .restart local v24    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v24

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 6617
    .end local v24    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v24

    .line 6618
    .restart local v24    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v24

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 6624
    .end local v24    # "e":Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lc8/msf;->checkMemoryLeack(Ljava/util/ArrayList;)V

    goto :goto_7

    .line 6636
    .end local v33    # "mapBgInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v5, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    monitor-enter v7
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0

    .line 6637
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 6639
    .restart local v42    # "size":I
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_8
    move/from16 v0, v27

    move/from16 v1, v42

    if-ge v0, v1, :cond_c

    .line 6640
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineMonitorNotifyList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lc8/jsf;

    .line 6641
    .local v37, "onLineMonitorNotify":Lc8/jsf;
    if-eqz v37, :cond_b

    .line 6644
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .line 6645
    .local v49, "type":I
    const-wide/16 v52, 0x0

    .local v52, "time1":J
    const-wide/16 v18, 0x0

    .line 6646
    .local v18, "cputime1":J
    sget-boolean v5, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v5, :cond_a

    .line 6647
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v52, v8, v10

    .line 6648
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v18

    .line 6652
    :cond_a
    :try_start_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, v37

    move/from16 v1, v49

    invoke-interface {v0, v1, v5}, Lc8/jsf;->onLineMonitorNotify(ILcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 6656
    :goto_9
    :try_start_d
    sget-boolean v5, Lc8/Asf;->sTraceOnLineListener:Z

    if-eqz v5, :cond_b

    .line 6657
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v54, v8, v10

    .line 6658
    .local v54, "time2":J
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v20

    .line 6659
    .local v20, "cputime2":J
    sub-long v30, v54, v52

    .line 6660
    .local v30, "interval":J
    sget v5, Lc8/Asf;->sTraceOnLineDuration:I

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-ltz v5, :cond_b

    .line 6661
    new-instance v29, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;

    invoke-direct/range {v29 .. v29}, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;-><init>()V

    .line 6662
    .local v29, "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->activityName:Ljava/lang/String;

    .line 6663
    sub-long v8, v20, v18

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    move-object/from16 v0, v29

    iput-wide v8, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->cpuTime:J

    .line 6664
    move-wide/from16 v0, v30

    move-object/from16 v2, v29

    iput-wide v0, v2, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->realTime:J

    .line 6665
    move/from16 v0, v49

    move-object/from16 v1, v29

    iput v0, v1, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->priority:I

    .line 6666
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    iput-object v5, v0, Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;->methodName:Ljava/lang/String;

    .line 6667
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_b

    .line 6668
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    iget-object v5, v5, Lc8/Asf;->mOnLineMonitorNotifyTimeList:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6639
    .end local v18    # "cputime1":J
    .end local v20    # "cputime2":J
    .end local v29    # "info":Lcom/taobao/onlinemonitor/TraceDetail$MethodInfo;
    .end local v30    # "interval":J
    .end local v49    # "type":I
    .end local v52    # "time1":J
    .end local v54    # "time2":J
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_8

    .line 6674
    .end local v37    # "onLineMonitorNotify":Lc8/jsf;
    :cond_c
    monitor-exit v7

    goto/16 :goto_0

    .end local v27    # "i":I
    .end local v42    # "size":I
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v5

    .line 6678
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v22, v8, v10

    .line 6679
    .local v22, "curTime":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mLastCPUCheckTime:J

    sub-long v30, v22, v8

    .line 6680
    .restart local v30    # "interval":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v0, v5, Lc8/msf;->mCpuCheckIntervalControl:I

    move/from16 v32, v0

    .line 6681
    .local v32, "intervalControl":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsFullInBackGround:Z

    if-nez v5, :cond_0

    .line 6684
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mSysGetCounter:I

    const/4 v7, 0x3

    if-lt v5, v7, :cond_d

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/16 v7, 0x190

    if-ne v5, v7, :cond_e

    .line 6685
    :cond_d
    const/16 v32, 0x0

    .line 6688
    :cond_e
    move/from16 v0, v32

    int-to-long v8, v0

    cmp-long v5, v30, v8

    if-gez v5, :cond_f

    .line 6689
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6690
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    move/from16 v0, v32

    int-to-long v8, v0

    sub-long v8, v8, v30

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 6693
    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6694
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-wide/from16 v0, v22

    iput-wide v0, v5, Lc8/msf;->mLastCPUCheckTime:J

    .line 6695
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 6696
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->getFinalizerReferenceQueueSize()I

    .line 6697
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->getCleanerQueueInfo()V

    .line 6698
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-nez v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-nez v5, :cond_29

    .line 6699
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lc8/msf;->getMemInfo(Z)V

    .line 6705
    :cond_11
    :goto_a
    sget-boolean v5, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v5, :cond_12

    .line 6709
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SysCPU="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mSysCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%,MyPidCPU="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mMyPidCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%,SysAvgCPUP="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mSysAvgCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%,MyAvgPidCPU="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mMyAvgPidCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%,IoWaitTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v8, v8, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mRelIoWaitTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",AvgIOWaitTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mAvgIOWaitTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",OpenFileCount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mOpenFileCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6715
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8fdb\u7a0b:Io\u7b49\u5f85="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitCount:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v9, v9, Lc8/asf;->this$0:Lc8/msf;

    iget v9, v9, Lc8/msf;->mPidIoWaitCountOld:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6b21, Io\u7b49\u5f85\u603b\u65f6\u95f4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidIoWaitSum:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v9, v9, Lc8/asf;->this$0:Lc8/msf;

    iget v9, v9, Lc8/msf;->mPidIoWaitSumOld:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6716
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8fdb\u7a0b:\u8c03\u5ea6\u7b49\u5f85="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidWaitCount:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v9, v9, Lc8/asf;->this$0:Lc8/msf;

    iget v9, v9, Lc8/msf;->mPidOldWaitCount:I

    sub-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u6b21, \u8c03\u5ea6\u603b\u65f6\u95f4="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mPidWaitSum:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v9, v9, Lc8/asf;->this$0:Lc8/msf;

    iget v9, v9, Lc8/msf;->mPidOldWaitSum:F

    sub-float/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6719
    :cond_12
    const/16 v36, 0x0

    .line 6720
    .local v36, "needNotifyNoWait":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIoIsWaitNow:Z

    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mSchedIsWaitNow:Z

    if-eqz v5, :cond_14

    .line 6721
    :cond_13
    const/16 v36, 0x1

    .line 6723
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget v5, v5, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mTotalIoWaitPercent:I

    const/16 v7, 0x1e

    if-ge v5, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mPidIoWaitSum:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mPidIoWaitSumOld:I

    sub-int/2addr v5, v7

    const/16 v7, 0x32

    if-lt v5, v7, :cond_2a

    .line 6724
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u68c0\u6d4b\u5230IO\u6709\u660e\u663e\u963b\u585e!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6725
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mIoIsWaitNow:Z

    .line 6726
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x14

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6730
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mPidWaitSum:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mPidOldWaitSum:F

    sub-float/2addr v5, v7

    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v5, v5, v7

    if-gez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mPidWaitCount:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mPidOldWaitCount:I

    sub-int/2addr v5, v7

    const/16 v7, 0x7d0

    if-ge v5, v7, :cond_16

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mSystemLoadAvg:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    const/high16 v7, 0x40200000    # 2.5f

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mCpuProcessCount:S

    int-to-float v8, v8

    mul-float/2addr v7, v8

    cmpl-float v5, v5, v7

    if-ltz v5, :cond_2b

    .line 6731
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u68c0\u6d4b\u5230\u7ebf\u7a0b\u8c03\u5ea6\u6709\u660e\u663e\u963b\u585e!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6732
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mSchedIsWaitNow:Z

    .line 6733
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0xb

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6738
    :goto_c
    if-eqz v36, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mSchedIsWaitNow:Z

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIoIsWaitNow:Z

    if-nez v5, :cond_17

    .line 6739
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6743
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mSysAvgCPUPercent:I

    const/16 v7, 0x50

    if-ge v5, v7, :cond_18

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mMyAvgPidCPUPercent:I

    const/16 v7, 0x50

    if-lt v5, v7, :cond_19

    .line 6744
    :cond_18
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u68c0\u6d4b\u5230CPU\u5360\u7528\u8fc7\u9ad8!System="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mSysCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%, Pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget v8, v8, Lc8/msf;->mMyPidCPUPercent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6745
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0xa

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6748
    :cond_19
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v38, v8, v10

    .line 6751
    .local v38, "now":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mSystemRunningScore:S

    iput-short v7, v5, Lc8/msf;->mOldSystemRunningScore:S

    .line 6752
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mMyPidScore:S

    iput-short v7, v5, Lc8/msf;->mOldMyPidScore:S

    .line 6753
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluateSystemPerformance()V

    .line 6754
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluatePidPerformance()V

    .line 6756
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-nez v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mPerformanceBadTimes:I

    const/4 v7, 0x4

    if-ge v5, v7, :cond_1c

    .line 6757
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mPerformanceCheckTimes:J

    sub-long v8, v38, v8

    const-wide/16 v10, 0x1388

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1c

    .line 6758
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mDevicesScore:S

    const/16 v7, 0x3c

    if-le v5, v7, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mAvgSystemRunningScore:S

    const/16 v7, 0x32

    if-le v5, v7, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mAvgMyPidScore:S

    const/16 v7, 0x32

    if-gt v5, v7, :cond_2c

    .line 6761
    :cond_1a
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    .line 6771
    :cond_1b
    :goto_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mPerformanceBadTimes:I

    const/4 v7, 0x3

    if-lt v5, v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    iget-boolean v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->isLowPerformance:Z

    if-nez v5, :cond_1c

    .line 6772
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    .line 6774
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->isLowPerformance:Z

    .line 6775
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u68c0\u6d4b\u5230\u8bbe\u5907\u6027\u80fd\u4f4e\u4e0b!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6776
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x23

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6781
    :cond_1c
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mPerformanceCheckTimes:J

    sub-long v8, v38, v8

    const-wide/16 v10, 0x2710

    cmp-long v5, v8, v10

    if-ltz v5, :cond_1e

    .line 6783
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mOldSystemRunningScore:S

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mSystemRunningScore:S

    sub-int/2addr v5, v7

    const/16 v7, 0xa

    if-ge v5, v7, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mOldMyPidScore:S

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mMyPidScore:S

    sub-int/2addr v5, v7

    const/16 v7, 0xa

    if-lt v5, v7, :cond_2f

    .line 6786
    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x1e

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6787
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u68c0\u6d4b\u5230\u6027\u80fd\u5feb\u901f\u4e0b\u964d!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6788
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mPerformanceDecined:Z

    .line 6796
    :cond_1e
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-wide/from16 v0, v38

    iput-wide v0, v5, Lc8/msf;->mPerformanceCheckTimes:J

    .line 6797
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6798
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v0, v5, Lc8/msf;->mCpuCheckIntervalControl:I

    move/from16 v17, v0

    .line 6799
    .local v17, "cpuCheckIntervalControl":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_1f

    .line 6800
    mul-int/lit8 v17, v17, 0x5

    .line 6802
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    move/from16 v0, v17

    int-to-long v8, v0

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6803
    sget-boolean v5, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v5, :cond_20

    .line 6804
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SystemScore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mDevicesScore:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",SystemRunningScore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mSystemRunningScore:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",MyPidScore="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-short v8, v8, Lc8/msf;->mMyPidScore:S

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6810
    :cond_20
    const/16 v35, -0x1

    .line 6811
    .local v35, "memoryNotify":I
    const/16 v34, 0x0

    .line 6812
    .local v34, "memoryAlert":Z
    const/4 v6, 0x0

    .line 6813
    .local v6, "memoryAlertString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsLowMemroy:Z

    if-nez v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0x14

    if-eq v5, v7, :cond_23

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0xf

    if-lt v5, v7, :cond_23

    .line 6816
    :cond_21
    const/16 v35, 0x1

    .line 6817
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-boolean v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isInBackGround:Z

    if-eqz v5, :cond_22

    .line 6818
    const/16 v34, 0x1

    .line 6820
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsLowMemroy:Z

    if-eqz v5, :cond_23

    .line 6821
    const-string/jumbo v6, "LowMemroy"

    .line 6825
    :cond_23
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0x14

    if-ne v5, v7, :cond_24

    .line 6827
    const/16 v35, 0x2

    .line 6829
    :cond_24
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mOldTrimMemoryLevel:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mTrimMemoryLevel:I

    if-eq v5, v7, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    if-eqz v5, :cond_25

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0x14

    if-eq v5, v7, :cond_25

    .line 6832
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mTrimMemoryLevel:I

    iput v7, v5, Lc8/msf;->mOldTrimMemoryLevel:I

    .line 6835
    :cond_25
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    long-to-int v5, v8

    div-int/lit8 v26, v5, 0x14

    .line 6836
    .local v26, "fivePTotal":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->deviceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;

    iget-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$DeviceInfo;->deviceTotalAvailMemory:J

    long-to-int v5, v8

    div-int/lit8 v45, v5, 0xa

    .line 6837
    .local v45, "tenPTotal":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mJavaUsedMemoryPercent:J

    const-wide/16 v10, 0x5f

    cmp-long v5, v8, v10

    if-gez v5, :cond_26

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mAvailMemory:J

    move/from16 v0, v26

    int-to-long v10, v0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mAvailMemory:J

    const-wide/16 v10, 0x32

    cmp-long v5, v8, v10

    if-gtz v5, :cond_33

    .line 6839
    :cond_26
    const/16 v35, 0x5

    .line 6840
    const/16 v34, 0x1

    .line 6841
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u5185\u5b58\u4e25\u91cd\u4e0d\u8db3\uff0c\u5373\u5c06\u53d1\u751fOOM!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6842
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mJavaUsedMemoryPercent:J

    const-wide/16 v10, 0x5f

    cmp-long v5, v8, v10

    if-ltz v5, :cond_31

    .line 6843
    const-string/jumbo v6, "Java95"

    .line 6858
    :cond_27
    :goto_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->memroyStat:Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;

    move/from16 v0, v34

    iput-boolean v0, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$MemroyStat;->memoryAlert:Z

    .line 6860
    if-ltz v35, :cond_3b

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mOldMemoryNotify:I

    move/from16 v0, v35

    if-eq v5, v0, :cond_3b

    .line 6861
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move/from16 v0, v35

    iput v0, v5, Lc8/msf;->mOldMemoryNotify:I

    .line 6862
    if-eqz v6, :cond_39

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_39

    .line 6863
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v5, 0x96

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6864
    .local v14, "activityStacks":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v5, v5, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    if-eqz v5, :cond_37

    .line 6865
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v5, v5, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    move-result v42

    .line 6866
    .restart local v42    # "size":I
    move/from16 v27, v42

    .restart local v27    # "i":I
    :goto_10
    if-ltz v27, :cond_37

    .line 6868
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mActivityLifecycleCallback:Lc8/Grf;

    iget-object v5, v5, Lc8/Grf;->mActivityStackList:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    .line 6869
    .local v44, "tempName":Ljava/lang/String;
    if-eqz v44, :cond_28

    .line 6870
    const/16 v5, 0x40

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 6871
    .local v15, "atIndex":I
    const/4 v5, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v44

    .line 6873
    .end local v15    # "atIndex":I
    :cond_28
    move-object/from16 v0, v44

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v7, 0x3b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    .line 6866
    .end local v44    # "tempName":Ljava/lang/String;
    :goto_11
    add-int/lit8 v27, v27, -0x1

    goto :goto_10

    .line 6700
    .end local v6    # "memoryAlertString":Ljava/lang/String;
    .end local v14    # "activityStacks":Ljava/lang/StringBuilder;
    .end local v17    # "cpuCheckIntervalControl":I
    .end local v26    # "fivePTotal":I
    .end local v27    # "i":I
    .end local v34    # "memoryAlert":Z
    .end local v35    # "memoryNotify":I
    .end local v36    # "needNotifyNoWait":Z
    .end local v38    # "now":J
    .end local v42    # "size":I
    .end local v45    # "tenPTotal":I
    :cond_29
    :try_start_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-eqz v5, :cond_11

    .line 6701
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long/2addr v8, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v10, v5, Lc8/msf;->mUIHiddenTime:J

    sub-long/2addr v8, v10

    const-wide/32 v10, 0xea60

    cmp-long v5, v8, v10

    if-gez v5, :cond_11

    .line 6702
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lc8/msf;->getMemInfo(Z)V

    goto/16 :goto_a

    .line 6728
    .restart local v36    # "needNotifyNoWait":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lc8/msf;->mIoIsWaitNow:Z

    goto/16 :goto_b

    .line 6735
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lc8/msf;->mSchedIsWaitNow:Z

    goto/16 :goto_c

    .line 6762
    .restart local v38    # "now":J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mAvgSystemRunningScore:S

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mAvgMyPidScore:S

    sub-int/2addr v5, v7

    const/16 v7, 0x19

    if-lt v5, v7, :cond_2d

    .line 6764
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    goto/16 :goto_d

    .line 6765
    :cond_2d
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mAvgSystemRunningScore:S

    const/16 v7, 0x28

    if-le v5, v7, :cond_2e

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mAvgMyPidScore:S

    const/16 v7, 0x28

    if-gt v5, v7, :cond_1b

    .line 6768
    :cond_2e
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mPerformanceBadTimes:I

    goto/16 :goto_d

    .line 6789
    :cond_2f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mPerformanceDecined:Z

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mSystemRunningScore:S

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mOldSystemRunningScore:S

    sub-int/2addr v5, v7

    const/16 v7, 0xa

    if-ge v5, v7, :cond_30

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-short v5, v5, Lc8/msf;->mMyPidScore:S

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-short v7, v7, Lc8/msf;->mOldMyPidScore:S

    sub-int/2addr v5, v7

    const/16 v7, 0xa

    if-lt v5, v7, :cond_1e

    .line 6791
    :cond_30
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u68c0\u6d4b\u5230\u6027\u80fd\u5f00\u59cb\u56de\u5347!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6792
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x1f

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6793
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lc8/msf;->mPerformanceDecined:Z

    goto/16 :goto_e

    .line 6844
    .restart local v6    # "memoryAlertString":Ljava/lang/String;
    .restart local v17    # "cpuCheckIntervalControl":I
    .restart local v26    # "fivePTotal":I
    .restart local v34    # "memoryAlert":Z
    .restart local v35    # "memoryNotify":I
    .restart local v45    # "tenPTotal":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0xf

    if-ge v5, v7, :cond_32

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsLowMemroy:Z

    if-eqz v5, :cond_27

    .line 6845
    :cond_32
    const-string/jumbo v6, "Total95"

    goto/16 :goto_f

    .line 6847
    :cond_33
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mJavaUsedMemoryPercent:J

    const-wide/16 v10, 0x55

    cmp-long v5, v8, v10

    if-gez v5, :cond_34

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mAvailMemory:J

    move/from16 v0, v45

    int-to-long v10, v0

    cmp-long v5, v8, v10

    if-gtz v5, :cond_27

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mAvailMemory:J

    const-wide/16 v10, 0x64

    cmp-long v5, v8, v10

    if-gtz v5, :cond_27

    .line 6849
    :cond_34
    const/16 v35, 0x3

    .line 6850
    const/16 v34, 0x1

    .line 6851
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u5185\u5b58\u4f7f\u7528\u8fc7\u9ad8,\u53ef\u7528\u5185\u5b58\u4e0d\u8db3!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6852
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mJavaUsedMemoryPercent:J

    const-wide/16 v10, 0x55

    cmp-long v5, v8, v10

    if-ltz v5, :cond_35

    .line 6853
    const-string/jumbo v6, "Java85"

    goto/16 :goto_f

    .line 6854
    :cond_35
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    const/16 v7, 0xf

    if-ge v5, v7, :cond_36

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsLowMemroy:Z

    if-eqz v5, :cond_27

    .line 6855
    :cond_36
    const-string/jumbo v6, "Total90"

    goto/16 :goto_f

    .line 6879
    .restart local v14    # "activityStacks":Ljava/lang/StringBuilder;
    :cond_37
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 6880
    .restart local v42    # "size":I
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_12
    move/from16 v0, v27

    move/from16 v1, v42

    if-ge v0, v1, :cond_39

    .line 6881
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 6882
    .restart local v4    # "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_38

    .line 6883
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface/range {v4 .. v9}, Lc8/psf;->onMemoryProblem(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6880
    :cond_38
    add-int/lit8 v27, v27, 0x1

    goto :goto_12

    .line 6887
    .end local v4    # "onlineStatistics":Lc8/psf;
    .end local v14    # "activityStacks":Ljava/lang/StringBuilder;
    .end local v27    # "i":I
    .end local v42    # "size":I
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    if-eqz v5, :cond_3a

    .line 6888
    const/4 v5, 0x5

    move/from16 v0, v35

    if-ne v0, v5, :cond_3d

    .line 6889
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "OOM\u9884\u8b66,\u5185\u5b58\u4f7f\u7528\u63a5\u8fd1\u6781\u9650!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6896
    :cond_3a
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6898
    :cond_3b
    sget-boolean v5, Lc8/msf;->sIsDetailDebug:Z

    if-eqz v5, :cond_3c

    .line 6899
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u8bbe\u5907\u5269\u4f59\u5185\u5b58="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mAvailMemory:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",\u8fdb\u7a0b\u4f7f\u7528\u5185\u5b58="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mTotalUsedMemory:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",JavaUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mDalvikPss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ",JavaUsedPercent="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mJavaUsedMemoryPercent:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "%,NativeHeap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v8, Lc8/msf;->mNativeHeapPss:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6911
    :cond_3c
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-nez v5, :cond_0

    .line 6915
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Lc8/msf;->checkToStopPerformance(J)V

    goto/16 :goto_0

    .line 6890
    :cond_3d
    const/4 v5, 0x3

    move/from16 v0, v35

    if-ne v0, v5, :cond_3e

    .line 6891
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u5185\u5b58\u4f7f\u7528\u8fc7\u9ad8,\u53ef\u7528\u5185\u5b58\u4e0d\u8db3!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 6892
    :cond_3e
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mTrimMemoryLevel:I

    if-eqz v5, :cond_3a

    .line 6893
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v7}, Lc8/Asf;->memoryStatus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 6919
    .end local v6    # "memoryAlertString":Ljava/lang/String;
    .end local v17    # "cpuCheckIntervalControl":I
    .end local v22    # "curTime":J
    .end local v26    # "fivePTotal":I
    .end local v30    # "interval":J
    .end local v32    # "intervalControl":I
    .end local v34    # "memoryAlert":Z
    .end local v35    # "memoryNotify":I
    .end local v36    # "needNotifyNoWait":Z
    .end local v38    # "now":J
    .end local v45    # "tenPTotal":I
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mHandler:Landroid/os/Handler;

    if-eqz v5, :cond_0

    .line 6922
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCheckAnrCounter:I

    const/4 v7, 0x2

    if-gt v5, v7, :cond_3f

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mCheckAnrCounter:I

    if-gez v5, :cond_40

    .line 6924
    :cond_3f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, -0x1

    iput v7, v5, Lc8/msf;->mCheckAnrCounter:I

    goto/16 :goto_0

    .line 6927
    :cond_40
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    const-wide/32 v10, 0xf4240

    div-long v50, v8, v10

    .line 6928
    .local v50, "time":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsCheckAnrStat:Z

    if-eqz v5, :cond_46

    .line 6929
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mCheckAnrTime:J

    sub-long v8, v50, v8

    const-wide/16 v10, 0xbb8

    cmp-long v5, v8, v10

    if-lez v5, :cond_45

    .line 6931
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mAnrCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mAnrCount:I

    .line 6932
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v7, Lc8/msf;->mAnrCount:I

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->anrCount:I

    .line 6933
    sget-boolean v5, Lc8/msf;->sIsNormalDebug:Z

    if-eqz v5, :cond_41

    .line 6934
    const-string/jumbo v5, "OnLineMonitor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ANR in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v8, v8, Lc8/asf;->this$0:Lc8/msf;

    iget-object v8, v8, Lc8/msf;->mActivityName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6937
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    if-eqz v5, :cond_44

    .line 6938
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v43

    .line 6939
    .local v43, "stackTraceElement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    sget v5, Lc8/msf;->sApiLevel:I

    const/16 v7, 0x17

    if-le v5, v7, :cond_42

    if-eqz v43, :cond_42

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mMainThread:Ljava/lang/Thread;

    if-eqz v5, :cond_42

    .line 6940
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mMainThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mMainThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    move-object/from16 v0, v43

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6942
    :cond_42
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 6943
    .restart local v42    # "size":I
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_14
    move/from16 v0, v27

    move/from16 v1, v42

    if-ge v0, v1, :cond_44

    .line 6944
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 6945
    .restart local v4    # "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_43

    .line 6946
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mActivityName:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-interface {v4, v5, v7, v0}, Lc8/psf;->onAnr(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/lang/String;Ljava/util/Map;)V

    .line 6943
    :cond_43
    add-int/lit8 v27, v27, 0x1

    goto :goto_14

    .line 6951
    .end local v4    # "onlineStatistics":Lc8/psf;
    .end local v27    # "i":I
    .end local v42    # "size":I
    .end local v43    # "stackTraceElement":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    :cond_44
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x3c

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6962
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-wide/from16 v0, v50

    iput-wide v0, v5, Lc8/msf;->mCheckAnrTime:J

    .line 6963
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lc8/msf;->mIsCheckAnrStat:Z

    .line 6964
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 6965
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 6953
    :cond_46
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsCheckAnrStat:Z

    if-nez v5, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v8, v5, Lc8/msf;->mCheckAnrTime:J

    sub-long v8, v50, v8

    const-wide/16 v10, 0x7d0

    cmp-long v5, v8, v10

    if-ltz v5, :cond_45

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsInBackGround:Z

    if-nez v5, :cond_45

    .line 6955
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move-wide/from16 v0, v50

    iput-wide v0, v5, Lc8/msf;->mCheckAnrTime:J

    .line 6956
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mIsCheckAnrStat:Z

    .line 6957
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mCheckAnrCounter:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mCheckAnrCounter:I

    .line 6958
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 6959
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 6970
    .end local v50    # "time":J
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-boolean v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->isInBackGround:Z

    if-eqz v5, :cond_4e

    .line 6971
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_47

    .line 6972
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->getProgressServiceCount()V

    .line 6974
    :cond_47
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    const/16 v7, 0x190

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->appProgressImportance:I

    .line 6975
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->cpuStat:Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$CpuStat;->cpuAlarmInBg:Z

    .line 6977
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const-string/jumbo v7, "\u8fdb\u5165\u80cc\u666f\u901a\u77e5!"

    invoke-virtual {v5, v7}, Lc8/msf;->showMessage(Ljava/lang/String;)V

    .line 6978
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/16 v7, 0x32

    invoke-virtual {v5, v7}, Lc8/msf;->notifyOnlineRuntimeStat(I)V

    .line 6979
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lc8/msf;->notifyBackForGroundListener(I)V

    .line 6980
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    if-eqz v5, :cond_48

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    iget-boolean v5, v5, Lc8/rsf;->mIsUploadBroadCastProblem:Z

    if-nez v5, :cond_48

    .line 6981
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    sget-object v7, Lc8/osf;->sApplication:Landroid/app/Application;

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Lc8/rsf;->checkBroadCastCount(Landroid/app/Application;Z)I

    move-result v16

    .line 6982
    .local v16, "count":I
    const/16 v5, 0x12c

    move/from16 v0, v16

    if-lt v0, v5, :cond_48

    .line 6983
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    sget-object v7, Lc8/osf;->sApplication:Landroid/app/Application;

    const/4 v8, 0x1

    invoke-virtual {v5, v7, v8}, Lc8/rsf;->checkBroadCastCount(Landroid/app/Application;Z)I

    .line 6984
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mProblemCheck:Lc8/rsf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/rsf;->mIsUploadBroadCastProblem:Z

    .line 6988
    .end local v16    # "count":I
    :cond_48
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v5

    if-lez v5, :cond_4a

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mFileSchedIsNotExists:Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0

    if-nez v5, :cond_4a

    .line 6990
    :try_start_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBlockGuardThreadInfoTid:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v47

    .line 6991
    .local v47, "threadIoInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_49
    :goto_15
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .line 6992
    .local v25, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;

    .line 6993
    .local v46, "threadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    if-eqz v46, :cond_49

    move-object/from16 v0, v46

    iget-boolean v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->multiplex:Z

    if-nez v5, :cond_49

    .line 6994
    move-object/from16 v0, v46

    iget v0, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->tid:I

    move/from16 v48, v0

    .line 6995
    .local v48, "tid":I
    if-lez v48, :cond_49

    .line 6996
    const/4 v5, 0x7

    new-array v0, v5, [F

    move-object/from16 v40, v0

    .line 6997
    .local v40, "outfloats":[F
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    move/from16 v0, v48

    move-object/from16 v1, v40

    invoke-virtual {v5, v0, v1}, Lc8/msf;->getThreadIoWaitAndLoadAvg(I[F)V

    .line 6998
    const/4 v5, 0x5

    aget v5, v40, v5

    float-to-int v5, v5

    move-object/from16 v0, v46

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->ioWaitCount:I

    .line 6999
    const/4 v5, 0x4

    aget v5, v40, v5

    float-to-int v5, v5

    move-object/from16 v0, v46

    iput v5, v0, Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;->ioWaitTime:I
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_15

    .end local v25    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;"
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v40    # "outfloats":[F
    .end local v46    # "threadInfo":Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;
    .end local v47    # "threadIoInfo":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/taobao/onlinemonitor/OnLineMonitor$ThreadIoInfo;>;>;"
    .end local v48    # "tid":I
    :catch_6
    move-exception v5

    .line 7007
    :cond_4a
    :try_start_12
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_0

    if-eqz v5, :cond_4b

    .line 7009
    :try_start_13
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 7010
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->runFinalization()V

    .line 7011
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 7015
    :goto_16
    :try_start_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lc8/Asf;->writePageInfo(Z)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    .line 7017
    :try_start_15
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    .line 7018
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->runFinalization()V

    .line 7019
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 7024
    :cond_4b
    :goto_17
    :try_start_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lc8/msf;->mIsInBackGround:Z

    .line 7025
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_4c

    .line 7026
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadInfoHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 7029
    :cond_4c
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 7030
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    if-nez v5, :cond_4d

    .line 7031
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    new-instance v7, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    invoke-direct {v7}, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;-><init>()V

    iput-object v7, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    .line 7033
    :cond_4d
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->pidJiffyTime:J

    .line 7034
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->totalJiffyTime:J

    .line 7035
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    iput-wide v8, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->systemJiffyTime:J

    .line 7036
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mPidJiffyTime:J

    long-to-int v7, v8

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadStart:I

    .line 7037
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemTotalCpuTime:J

    long-to-int v7, v8

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadEnd:I

    .line 7038
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mProcessCpuTracker:Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    iget-wide v8, v7, Lcom/taobao/onlinemonitor/ProcessCpuTracker;->mSystemRunCpuTime:J

    long-to-int v7, v8

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->threadMax:I

    .line 7039
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    const/4 v7, 0x0

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memStart:I

    .line 7040
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mResourceUsedInfoCalBgApp:Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;

    const/4 v7, 0x0

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$ResourceUsedInfo;->memEnd:I

    .line 7041
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluateSystemPerformance()V

    .line 7042
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluatePidPerformance()V

    .line 7043
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->calculateSystemCheckValue()V

    .line 7044
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, -0x1

    iput v7, v5, Lc8/msf;->mCheckAnrCounter:I

    .line 7045
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v7, 0x5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 7047
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v7, 0xb

    sget v8, Lc8/osf;->sToSleepTime:I

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7049
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v7, v7, Lc8/asf;->this$0:Lc8/msf;

    iget-object v7, v7, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/4 v8, 0x2

    const/16 v9, 0x190

    const/16 v10, 0x1f4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 7012
    :catch_7
    move-exception v24

    .line 7013
    .restart local v24    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v24

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_16

    .line 7020
    .end local v24    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v24

    .line 7021
    .restart local v24    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "OnLineMonitor"

    const-string/jumbo v7, "\u624b\u52a8\u6267\u884c\u5185\u5b58\u56de\u6536\u5f02\u5e38"

    move-object/from16 v0, v24

    invoke-static {v5, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_17

    .line 7052
    .end local v24    # "e":Ljava/lang/Throwable;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluateSystemPerformance()V

    .line 7053
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->evaluatePidPerformance()V

    .line 7054
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->calculateSystemCheckValue()V

    .line 7055
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    iget-object v5, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;->performanceInfo:Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;

    const/16 v7, 0x64

    iput v7, v5, Lcom/taobao/onlinemonitor/OnLineMonitor$PerformanceInfo;->appProgressImportance:I

    goto/16 :goto_0

    .line 7059
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsBootEndActivity:Z

    if-eqz v5, :cond_0

    .line 7062
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mBootActivityLoadTime:I

    if-nez v5, :cond_4f

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v5, v5, Lc8/msf;->mBootLoadTimeTryCount:I

    const/4 v7, 0x5

    if-ge v5, v7, :cond_4f

    .line 7063
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget v7, v5, Lc8/msf;->mBootLoadTimeTryCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v5, Lc8/msf;->mBootLoadTimeTryCount:I

    .line 7064
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v7, 0xd

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7067
    :cond_4f
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->commmitBootFinished()V

    .line 7068
    invoke-static {}, Lc8/osf;->startJitCompilation()V

    .line 7069
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    invoke-virtual {v5}, Lc8/msf;->notifyBootFinished()V

    goto/16 :goto_0

    .line 7072
    :pswitch_9
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-eqz v5, :cond_0

    sget-boolean v5, Lc8/Asf;->sTraceThread:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-boolean v5, v5, Lc8/msf;->mIsFullInBackGround:Z

    if-nez v5, :cond_0

    .line 7073
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lc8/msf;->getCpuInfo(ZZZ)V

    .line 7074
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 7075
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mThreadHandler:Landroid/os/Handler;

    const/16 v7, 0xc

    sget-short v8, Lc8/Asf;->sTraceThreadInterval:S

    int-to-long v8, v8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7080
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mTraceDetail:Lc8/Asf;

    invoke-virtual {v5}, Lc8/Asf;->traceHook()V

    goto/16 :goto_0

    .line 7084
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 7085
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v0, v5, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    move-object/from16 v56, v0

    monitor-enter v56
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_0

    .line 7086
    :try_start_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v42

    .line 7087
    .restart local v42    # "size":I
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_18
    move/from16 v0, v27

    move/from16 v1, v42

    if-ge v0, v1, :cond_51

    .line 7088
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mOnlineStatistics:Ljava/util/ArrayList;

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psf;

    .line 7089
    .restart local v4    # "onlineStatistics":Lc8/psf;
    if-eqz v4, :cond_50

    .line 7090
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v8, v5, Lc8/msf;->mOnLineStat:Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v9, v5, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    sget-boolean v10, Lc8/osf;->sIsCodeBoot:Z

    sget-object v11, Lc8/osf;->sBootExtraType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-wide v12, v5, Lc8/msf;->mBootJiffyTime:J

    move-object v7, v4

    invoke-interface/range {v7 .. v13}, Lc8/psf;->onBootPerformance(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;Ljava/util/List;ZLjava/lang/String;J)V

    .line 7087
    :cond_50
    add-int/lit8 v27, v27, 0x1

    goto :goto_18

    .line 7094
    .end local v4    # "onlineStatistics":Lc8/psf;
    :cond_51
    sget-boolean v5, Lc8/msf;->sIsTraceDetail:Z

    if-nez v5, :cond_52

    .line 7095
    move-object/from16 v0, p0

    iget-object v5, v0, Lc8/Zrf;->this$1:Lc8/asf;

    iget-object v5, v5, Lc8/asf;->this$0:Lc8/msf;

    iget-object v5, v5, Lc8/msf;->mBootResourceUsedInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 7097
    :cond_52
    monitor-exit v56

    goto/16 :goto_0

    .end local v27    # "i":I
    .end local v42    # "size":I
    :catchall_1
    move-exception v5

    monitor-exit v56
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :try_start_18
    throw v5
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    .restart local v6    # "memoryAlertString":Ljava/lang/String;
    .restart local v14    # "activityStacks":Ljava/lang/StringBuilder;
    .restart local v17    # "cpuCheckIntervalControl":I
    .restart local v22    # "curTime":J
    .restart local v26    # "fivePTotal":I
    .restart local v27    # "i":I
    .restart local v30    # "interval":J
    .restart local v32    # "intervalControl":I
    .restart local v34    # "memoryAlert":Z
    .restart local v35    # "memoryNotify":I
    .restart local v36    # "needNotifyNoWait":Z
    .restart local v38    # "now":J
    .restart local v42    # "size":I
    .restart local v45    # "tenPTotal":I
    :catch_9
    move-exception v5

    goto/16 :goto_11

    .end local v6    # "memoryAlertString":Ljava/lang/String;
    .end local v14    # "activityStacks":Ljava/lang/StringBuilder;
    .end local v17    # "cpuCheckIntervalControl":I
    .end local v22    # "curTime":J
    .end local v26    # "fivePTotal":I
    .end local v30    # "interval":J
    .end local v32    # "intervalControl":I
    .end local v34    # "memoryAlert":Z
    .end local v35    # "memoryNotify":I
    .end local v36    # "needNotifyNoWait":Z
    .end local v38    # "now":J
    .end local v45    # "tenPTotal":I
    .restart local v18    # "cputime1":J
    .restart local v37    # "onLineMonitorNotify":Lc8/jsf;
    .restart local v49    # "type":I
    .restart local v52    # "time1":J
    :catch_a
    move-exception v5

    goto/16 :goto_9

    .line 6538
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_a
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method
