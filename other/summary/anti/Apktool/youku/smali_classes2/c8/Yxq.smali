.class public abstract Lc8/Yxq;
.super Ljava/lang/Object;
.source "ObjectPool.java"

# interfaces
.implements Lc8/lxq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/lxq;"
    }
.end annotation


# instance fields
.field final maxSize:I

.field final minSize:I

.field private final periodicTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final validationInterval:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    const/4 v2, 0x0

    .line 37
    const-wide/16 v0, 0x43

    invoke-direct {p0, v2, v2, v0, v1}, Lc8/Yxq;-><init>(IIJ)V

    .line 38
    return-void
.end method

.method private constructor <init>(IIJ)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "validationInterval"    # J

    .prologue
    .line 52
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lc8/Yxq;->minSize:I

    .line 54
    iput p2, p0, Lc8/Yxq;->maxSize:I

    .line 55
    iput-wide p3, p0, Lc8/Yxq;->validationInterval:J

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/Yxq;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 58
    invoke-direct {p0, p1}, Lc8/Yxq;->initialize(I)V

    .line 60
    invoke-virtual {p0}, Lc8/Yxq;->start()V

    .line 61
    return-void
.end method

.method private initialize(I)V
    .locals 4
    .param p1, "min"    # I

    .prologue
    .line 153
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    new-instance v1, Lc8/Ryq;

    iget v2, p0, Lc8/Yxq;->maxSize:I

    const/16 v3, 0x400

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v1, v2}, Lc8/Ryq;-><init>(I)V

    iput-object v1, p0, Lc8/Yxq;->pool:Ljava/util/Queue;

    .line 159
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_1

    .line 160
    iget-object v1, p0, Lc8/Yxq;->pool:Ljava/util/Queue;

    invoke-virtual {p0}, Lc8/Yxq;->createObject()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 156
    .end local v0    # "i":I
    :cond_0
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lc8/Yxq;->pool:Ljava/util/Queue;

    goto :goto_0

    .line 162
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public borrowObject()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lc8/Yxq;->pool:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .local v0, "object":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lc8/Yxq;->createObject()Ljava/lang/Object;

    move-result-object v0

    .line 75
    :cond_0
    return-object v0
.end method

.method protected abstract createObject()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public returnObject(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-nez p1, :cond_0

    .line 90
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lc8/Yxq;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 97
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    iget-object v1, p0, Lc8/Yxq;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 98
    .local v0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 101
    :cond_0
    return-void
.end method

.method public start()V
    .locals 9

    .prologue
    .line 106
    .local p0, "this":Lc8/Yxq;, "Lrx/internal/util/ObjectPool<TT;>;"
    :goto_0
    iget-object v1, p0, Lc8/Yxq;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_1
    return-void

    .line 109
    :cond_1
    invoke-static {}, Lc8/dxq;->getInstance()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 113
    .local v0, "w":Ljava/util/concurrent/ScheduledExecutorService;
    :try_start_0
    new-instance v1, Lc8/Xxq;

    invoke-direct {v1, p0}, Lc8/Xxq;-><init>(Lc8/Yxq;)V

    iget-wide v2, p0, Lc8/Yxq;->validationInterval:J

    iget-wide v4, p0, Lc8/Yxq;->validationInterval:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 137
    .local v8, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v1, p0, Lc8/Yxq;->periodicTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v8}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 133
    .end local v8    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :catch_0
    move-exception v7

    .line 134
    .local v7, "ex":Ljava/util/concurrent/RejectedExecutionException;
    invoke-static {v7}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
