.class public Lc8/yLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Lc8/bsf;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 423
    iput-object p1, p0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnAccurateBootFinished(Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;I)V
    .locals 33
    .param p1, "onLineStat"    # Lcom/taobao/onlinemonitor/OnLineMonitor$OnLineStat;
    .param p2, "period"    # I

    .prologue
    .line 426
    if-lez p2, :cond_1

    .line 428
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$500(Lc8/KLj;)V

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    if-nez p2, :cond_0

    .line 431
    const-class v23, Lc8/msf;

    .line 432
    .local v23, "onLineClazz":Ljava/lang/Class;
    const-class v22, Lc8/Prf;

    .line 433
    .local v22, "loadTimeClazz":Ljava/lang/Class;
    const/16 v24, 0x0

    .line 435
    .local v24, "onLineInstance":Ljava/lang/Object;
    :try_start_0
    const-string/jumbo v4, "sOnLineMonitor"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v25

    .line 436
    .local v25, "onLineInstanceField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 437
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 439
    const-string/jumbo v4, "mLoadTimeCalculate"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v27

    .line 440
    .local v27, "onLoadTimeInstanceField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 441
    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    .line 443
    .local v26, "onLoadTimeInstance":Ljava/lang/Object;
    const-string/jumbo v4, "mStartActivityTime"

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v31

    .line 444
    .local v31, "startActivityTimeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 445
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4}, Lcom/ali/mobisecenhance/ReflectMap;->Field_set(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 450
    .end local v24    # "onLineInstance":Ljava/lang/Object;
    .end local v25    # "onLineInstanceField":Ljava/lang/reflect/Field;
    .end local v26    # "onLoadTimeInstance":Ljava/lang/Object;
    .end local v27    # "onLoadTimeInstanceField":Ljava/lang/reflect/Field;
    .end local v31    # "startActivityTimeField":Ljava/lang/reflect/Field;
    :goto_1
    invoke-static {}, Lc8/osf;->isCodeBoot()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 452
    .local v16, "bootEndTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 454
    .local v20, "elapsedBootEndTime":J
    :try_start_1
    const-string/jumbo v4, "mProcessCpuTracker"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v29

    .line 455
    .local v29, "processCpuTrackerField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 456
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    .line 458
    .local v30, "processCpuTrackerInstance":Ljava/lang/Object;
    const-class v4, Lcom/taobao/onlinemonitor/ProcessCpuTracker;

    const-string/jumbo v5, "mPidStartTime"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v28

    .line 459
    .local v28, "pidStartTimeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 460
    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v14

    .line 461
    .local v14, "appStartTime":J
    const-wide/16 v4, 0x0

    cmp-long v4, v14, v4

    if-eqz v4, :cond_0

    cmp-long v4, v14, v20

    if-gez v4, :cond_0

    .line 462
    sub-long v4, v20, v14

    sub-long v2, v16, v4

    .line 463
    .local v2, "bootStartTime":J
    const-class v4, Lc8/KLj;

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v6

    .line 464
    .local v6, "appName":Ljava/lang/String;
    const-class v4, Lcom/youku/phone/ActivityWelcome;

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v32

    .line 465
    .local v32, "welName":Ljava/lang/String;
    const-class v4, Lcom/youku/ui/activity/HomePageActivity;

    invoke-static {v4}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v19

    .line 466
    .local v19, "homeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$600(Lc8/KLj;)J

    move-result-wide v4

    const-string/jumbo v7, "before attach"

    invoke-static/range {v2 .. v7}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$600(Lc8/KLj;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$700(Lc8/KLj;)J

    move-result-wide v10

    const-string/jumbo v13, "attach"

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$700(Lc8/KLj;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$800(Lc8/KLj;)J

    move-result-wide v10

    const-string/jumbo v13, "attach-create"

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$800(Lc8/KLj;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$900(Lc8/KLj;)J

    move-result-wide v10

    const-string/jumbo v13, "create"

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    invoke-static {v4}, Lc8/KLj;->access$900(Lc8/KLj;)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v10, v4, Lc8/KLj;->mWelCreateStartTime:J

    const-string/jumbo v13, "before create"

    move-object/from16 v12, v32

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v8, v4, Lc8/KLj;->mWelCreateStartTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v10, v4, Lc8/KLj;->mWelCreateEndTime:J

    const-string/jumbo v13, "create"

    move-object/from16 v12, v32

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v8, v4, Lc8/KLj;->mWelCreateEndTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v10, v4, Lc8/KLj;->mHomeCreateStartTime:J

    const-string/jumbo v13, "before create"

    move-object/from16 v12, v19

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v8, v4, Lc8/KLj;->mHomeCreateStartTime:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v10, v4, Lc8/KLj;->mHomeCreateEndTime:J

    const-string/jumbo v13, "create"

    move-object/from16 v12, v19

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/yLj;->this$0:Lc8/KLj;

    iget-wide v8, v4, Lc8/KLj;->mHomeCreateEndTime:J

    const-string/jumbo v13, "after create"

    move-wide/from16 v10, v16

    move-object/from16 v12, v19

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V

    .line 484
    const-string/jumbo v13, "cold boot"

    move-wide v8, v14

    move-wide/from16 v10, v20

    move-object v12, v6

    invoke-static/range {v8 .. v13}, Lcom/youku/android/BootMonitorManager;->submitState(JJLjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 487
    .end local v2    # "bootStartTime":J
    .end local v6    # "appName":Ljava/lang/String;
    .end local v14    # "appStartTime":J
    .end local v19    # "homeName":Ljava/lang/String;
    .end local v28    # "pidStartTimeField":Ljava/lang/reflect/Field;
    .end local v29    # "processCpuTrackerField":Ljava/lang/reflect/Field;
    .end local v30    # "processCpuTrackerInstance":Ljava/lang/Object;
    .end local v32    # "welName":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 488
    .local v18, "e":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 446
    .end local v16    # "bootEndTime":J
    .end local v18    # "e":Ljava/lang/Throwable;
    .end local v20    # "elapsedBootEndTime":J
    :catch_1
    move-exception v18

    .line 447
    .restart local v18    # "e":Ljava/lang/Throwable;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method
