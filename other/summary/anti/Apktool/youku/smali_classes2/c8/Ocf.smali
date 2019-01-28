.class public Lc8/Ocf;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "Coordinator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Vcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CoordThreadPoolExecutor"
.end annotation


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 1
    .param p1, "corePoolSize"    # I
    .param p2, "maximumPoolSize"    # I
    .param p3, "keepAliveTime"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p7, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;
    .param p8, "handler"    # Ljava/util/concurrent/RejectedExecutionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            "Ljava/util/concurrent/RejectedExecutionHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 471
    .local p6, "workQueue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    invoke-direct/range {p0 .. p8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 472
    return-void
.end method


# virtual methods
.method protected afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 515
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->afterExecute(Ljava/lang/Runnable;Ljava/lang/Throwable;)V

    .line 516
    instance-of v1, p1, Lc8/Scf;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 517
    check-cast v0, Lc8/Scf;

    .line 518
    .local v0, "standaloneTask":Lc8/Scf;
    iget-object v1, v0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    instance-of v1, v1, Lc8/Tcf;

    if-eqz v1, :cond_0

    .line 521
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 522
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 527
    .end local v0    # "standaloneTask":Lc8/Scf;
    :cond_0
    return-void
.end method

.method protected beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 495
    invoke-super {p0, p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->beforeExecute(Ljava/lang/Thread;Ljava/lang/Runnable;)V

    .line 496
    instance-of v2, p2, Lc8/Scf;

    if-eqz v2, :cond_2

    move-object v0, p2

    .line 497
    check-cast v0, Lc8/Scf;

    .line 498
    .local v0, "standaloneTask":Lc8/Scf;
    iget-object v2, v0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    instance-of v2, v2, Lc8/Tcf;

    if-eqz v2, :cond_1

    .line 499
    iget-object v1, v0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    check-cast v1, Lc8/Tcf;

    .line 500
    .local v1, "taggedRunnable":Lc8/Tcf;
    invoke-virtual {v1}, Lc8/Tcf;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 501
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 502
    iget v2, v1, Lc8/Tcf;->mTraffictag:I

    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 510
    .end local v0    # "standaloneTask":Lc8/Scf;
    .end local v1    # "taggedRunnable":Lc8/Tcf;
    :cond_0
    :goto_0
    return-void

    .line 505
    .restart local v0    # "standaloneTask":Lc8/Scf;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lc8/Scf;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 508
    .end local v0    # "standaloneTask":Lc8/Scf;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public execute(Ljava/lang/Runnable;I)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;
    .param p2, "queuePriority"    # I

    .prologue
    .line 481
    instance-of v1, p1, Lc8/Scf;

    if-eqz v1, :cond_0

    .line 482
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 491
    :goto_0
    return-void

    .line 484
    :cond_0
    new-instance v0, Lc8/Scf;

    invoke-direct {v0, p1}, Lc8/Scf;-><init>(Ljava/lang/Runnable;)V

    .line 485
    .local v0, "s1":Lc8/Scf;
    if-gtz p2, :cond_1

    .line 486
    const/4 p2, 0x1

    .line 488
    :cond_1
    iput p2, v0, Lc8/Scf;->mPriorityQueue:I

    .line 489
    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
