.class public final Lcom/uc/webview/export/internal/setup/ar;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/aq;

.field private b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/aq;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 353
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method

.method private static a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 4

    .prologue
    .line 368
    if-nez p0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 370
    :cond_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 371
    :try_start_0
    invoke-static {p0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->e(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    const/16 v0, 0x271e

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v2, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mPercent:I

    .line 372
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    const-string/jumbo v0, "progress"

    invoke-virtual {p0, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final dispatchMessage(Landroid/os/Message;)V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 379
    .line 382
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 383
    new-instance v0, Lcom/uc/webview/export/cyclone/UCElapseTime;

    invoke-direct {v0}, Lcom/uc/webview/export/cyclone/UCElapseTime;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v6, v0

    .line 389
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    .line 390
    instance-of v2, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-eqz v2, :cond_1

    .line 391
    check-cast v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 392
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    const-wide/16 v8, 0x0

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    .line 394
    :try_start_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->f(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_6

    .line 396
    :goto_2
    :try_start_3
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->g(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)J

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v2, "start"

    invoke-virtual {v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/ap;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 405
    :try_start_4
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object p1, v1

    .line 408
    :cond_2
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 411
    if-eqz p1, :cond_4

    .line 412
    :try_start_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v2, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v2, v2, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/ap;

    move-result-object v2

    monitor-enter v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->b(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    const-string/jumbo v3, "pause"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v3, v3, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/ap;

    move-result-object v3

    const-wide v8, 0x7fffffffffffffffL

    invoke-virtual {v3, v8, v9}, Lcom/uc/webview/export/internal/setup/ap;->a(J)Landroid/util/Pair;

    const-string/jumbo v3, "resume"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    :cond_3
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 416
    :cond_4
    if-eqz p1, :cond_5

    :try_start_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-nez v0, :cond_5

    .line 417
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 419
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ar;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    .line 434
    :cond_5
    :goto_3
    :try_start_8
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 435
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3

    :goto_4
    move-object v2, v0

    .line 443
    :goto_5
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 447
    :try_start_9
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->mException:Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v0, :cond_a

    move v3, v4

    .line 448
    :goto_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->h(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Z

    move-result v8

    .line 450
    if-nez v3, :cond_6

    if-eqz v8, :cond_7

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v9, 0x271c

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v0, v9, v10}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 454
    :cond_7
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->i(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v0

    .line 455
    if-eqz v0, :cond_c

    .line 457
    :try_start_a
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 458
    if-eqz v0, :cond_b

    .line 459
    :try_start_b
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 488
    :goto_7
    if-eqz v0, :cond_10

    .line 491
    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v1, v1, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->k(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    :goto_8
    :try_start_c
    invoke-static {}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->c()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 498
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->l(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/util/Vector;

    move-result-object v1

    new-instance v3, Landroid/util/Pair;

    if-nez v2, :cond_11

    const-string/jumbo v0, "null"

    :goto_9
    new-instance v2, Landroid/util/Pair;

    .line 499
    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6}, Lcom/uc/webview/export/cyclone/UCElapseTime;->getMilisCpu()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v3, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 498
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 500
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v1, "cost"

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 504
    :cond_8
    :goto_a
    return-void

    :catch_0
    move-exception v0

    move-object v6, v1

    goto/16 :goto_1

    .line 408
    :catchall_0
    move-exception v0

    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1

    .line 421
    :catch_1
    move-exception v0

    .line 422
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    instance-of v2, v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    if-eqz v2, :cond_9

    check-cast v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    :goto_b
    invoke-virtual {v3, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    .line 424
    :try_start_f
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->d(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    .line 425
    :try_start_10
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v3, 0x271c

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v7}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 426
    monitor-exit v2

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    :try_start_11
    throw v0
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    :catch_2
    move-exception v0

    goto/16 :goto_3

    .line 412
    :catchall_2
    move-exception v0

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v0
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_1

    .line 422
    :cond_9
    new-instance v2, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v2, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v2, v1

    goto/16 :goto_5

    :cond_a
    move v3, v5

    .line 447
    goto/16 :goto_6

    :cond_b
    move-object v1, v0

    .line 467
    :cond_c
    :goto_c
    if-eqz v8, :cond_d

    .line 468
    :try_start_14
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v3, "stop"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 478
    :goto_d
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v3, "die"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->j(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    .line 481
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-static {v0}, Lcom/uc/webview/export/internal/setup/ar;->a(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V

    .line 484
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    if-nez v0, :cond_f

    .line 485
    monitor-exit v7

    move-object v0, v1

    goto/16 :goto_7

    .line 460
    :catch_4
    move-exception v0

    .line 462
    iget-object v3, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    new-instance v9, Lcom/uc/webview/export/internal/setup/UCSetupException;

    invoke-direct {v9, v0}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v9}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->setException(Lcom/uc/webview/export/internal/setup/UCSetupException;)V

    move v3, v4

    .line 463
    goto :goto_c

    .line 470
    :cond_d
    if-eqz v3, :cond_e

    .line 471
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v3, "exception"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    .line 475
    :goto_e
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v3, "gone"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    goto :goto_d

    .line 487
    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    throw v0

    .line 473
    :cond_e
    :try_start_15
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->b:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const-string/jumbo v3, "success"

    invoke-virtual {v0, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    goto :goto_e

    .line 487
    :cond_f
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    goto/16 :goto_5

    .line 493
    :cond_10
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/ar;->a:Lcom/uc/webview/export/internal/setup/aq;

    iget-object v0, v0, Lcom/uc/webview/export/internal/setup/aq;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v1, 0x2718

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v3}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    .line 498
    :cond_11
    :try_start_16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_5

    move-result-object v0

    goto/16 :goto_9

    .line 504
    :catch_5
    move-exception v0

    goto/16 :goto_a

    :catch_6
    move-exception v0

    goto/16 :goto_2

    :cond_12
    move-object v0, v1

    goto/16 :goto_4

    :cond_13
    move-object v0, v1

    goto/16 :goto_0
.end method
