.class public final Lc8/bxq;
.super Lc8/Zlq;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/cxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExecutorSchedulerWorker"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lrx/internal/schedulers/ScheduledAction;",
            ">;"
        }
    .end annotation
.end field

.field final service:Ljava/util/concurrent/ScheduledExecutorService;

.field final tasks:Lc8/SBq;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 54
    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 55
    iput-object p1, p0, Lc8/bxq;->executor:Ljava/util/concurrent/Executor;

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 57
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/bxq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    new-instance v0, Lc8/SBq;

    invoke-direct {v0}, Lc8/SBq;-><init>()V

    iput-object v0, p0, Lc8/bxq;->tasks:Lc8/SBq;

    .line 59
    invoke-static {}, Lc8/dxq;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lc8/bxq;->service:Ljava/util/concurrent/ScheduledExecutorService;

    .line 60
    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 94
    :cond_0
    iget-object v1, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v1}, Lc8/SBq;->isUnsubscribed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget-object v1, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 111
    :cond_1
    :goto_0
    return-void

    .line 98
    :cond_2
    iget-object v1, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/schedulers/ScheduledAction;

    .line 99
    .local v0, "sa":Lrx/internal/schedulers/ScheduledAction;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 103
    iget-object v1, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v1}, Lc8/SBq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 104
    invoke-virtual {v0}, Lrx/internal/schedulers/ScheduledAction;->run()V

    .line 110
    :cond_3
    iget-object v1, p0, Lc8/bxq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_4
    iget-object v1, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 3
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 64
    invoke-virtual {p0}, Lc8/bxq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v0

    .line 88
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    iget-object v2, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-direct {v0, p1, v2}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lc8/hnq;Lc8/SBq;)V

    .line 68
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    iget-object v2, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v2, v0}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 69
    iget-object v2, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 70
    iget-object v2, p0, Lc8/bxq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_0

    .line 76
    :try_start_0
    iget-object v2, p0, Lc8/bxq;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v2, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 79
    .local v1, "t":Ljava/util/concurrent/RejectedExecutionException;
    iget-object v2, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v2, v0}, Lc8/SBq;->remove(Lc8/Pmq;)V

    .line 80
    iget-object v2, p0, Lc8/bxq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 82
    invoke-static {v1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 84
    throw v1
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 8
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 115
    const-wide/16 v6, 0x0

    cmp-long v6, p2, v6

    if-gtz v6, :cond_0

    .line 116
    invoke-virtual {p0, p1}, Lc8/bxq;->schedule(Lc8/hnq;)Lc8/Pmq;

    move-result-object v4

    .line 169
    :goto_0
    return-object v4

    .line 118
    :cond_0
    invoke-virtual {p0}, Lc8/bxq;->isUnsubscribed()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v4

    goto :goto_0

    .line 122
    :cond_1
    new-instance v2, Lc8/UBq;

    invoke-direct {v2}, Lc8/UBq;-><init>()V

    .line 123
    .local v2, "first":Lc8/UBq;
    new-instance v3, Lc8/UBq;

    invoke-direct {v3}, Lc8/UBq;-><init>()V

    .line 124
    .local v3, "mas":Lc8/UBq;
    invoke-virtual {v3, v2}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 125
    iget-object v6, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v6, v3}, Lc8/SBq;->add(Lc8/Pmq;)V

    .line 126
    new-instance v6, Lc8/Zwq;

    invoke-direct {v6, p0, v3}, Lc8/Zwq;-><init>(Lc8/bxq;Lc8/UBq;)V

    invoke-static {v6}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v4

    .line 133
    .local v4, "removeMas":Lc8/Pmq;
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    new-instance v6, Lc8/axq;

    invoke-direct {v6, p0, v3, p1, v4}, Lc8/axq;-><init>(Lc8/bxq;Lc8/UBq;Lc8/hnq;Lc8/Pmq;)V

    invoke-direct {v0, v6}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lc8/hnq;)V

    .line 152
    .local v0, "ea":Lrx/internal/schedulers/ScheduledAction;
    invoke-virtual {v2, v0}, Lc8/UBq;->set(Lc8/Pmq;)V

    .line 157
    :try_start_0
    iget-object v6, p0, Lc8/bxq;->service:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v6, v0, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 158
    .local v1, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    invoke-virtual {v0, v1}, Lrx/internal/schedulers/ScheduledAction;->add(Ljava/util/concurrent/Future;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v5

    .line 161
    .local v5, "t":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v5}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 162
    throw v5
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lc8/bxq;->tasks:Lc8/SBq;

    invoke-virtual {v0}, Lc8/SBq;->unsubscribe()V

    .line 180
    iget-object v0, p0, Lc8/bxq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 181
    return-void
.end method
