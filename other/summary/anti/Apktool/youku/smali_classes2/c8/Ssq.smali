.class public final Lc8/Ssq;
.super Lc8/Omq;
.source "OperatorOnBackpressureBuffer.java"

# interfaces
.implements Lc8/yxq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Usq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BufferSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/yxq;"
    }
.end annotation


# instance fields
.field private final capacity:Ljava/util/concurrent/atomic/AtomicLong;

.field private final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final manager:Lrx/internal/util/BackpressureDrainManager;

.field private final on:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final onOverflow:Lc8/hnq;

.field private final overflowStrategy:Lc8/Fkq;

.field private final queue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final saturated:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lc8/Omq;Ljava/lang/Long;Lc8/hnq;Lc8/Fkq;)V
    .locals 4
    .param p2, "capacity"    # Ljava/lang/Long;
    .param p3, "onOverflow"    # Lc8/hnq;
    .param p4, "overflowStrategy"    # Lc8/Fkq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;",
            "Ljava/lang/Long;",
            "Lc8/hnq;",
            "Lc8/Fkq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/Ssq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/Ssq;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/Ssq;->on:Lc8/cpq;

    .line 120
    iput-object p1, p0, Lc8/Ssq;->child:Lc8/Omq;

    .line 121
    if-eqz p2, :cond_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    .line 122
    iput-object p3, p0, Lc8/Ssq;->onOverflow:Lc8/hnq;

    .line 123
    new-instance v0, Lrx/internal/util/BackpressureDrainManager;

    invoke-direct {v0, p0}, Lrx/internal/util/BackpressureDrainManager;-><init>(Lc8/yxq;)V

    iput-object v0, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    .line 124
    iput-object p4, p0, Lc8/Ssq;->overflowStrategy:Lc8/Fkq;

    .line 125
    return-void

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private assertCapacity()Z
    .locals 10

    .prologue
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 181
    iget-object v6, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-nez v6, :cond_0

    .line 216
    :goto_0
    return v4

    .line 187
    :cond_0
    iget-object v6, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 188
    .local v0, "currCapacity":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_4

    .line 189
    const/4 v3, 0x0

    .line 192
    .local v3, "hasCapacity":Z
    :try_start_0
    iget-object v6, p0, Lc8/Ssq;->overflowStrategy:Lc8/Fkq;

    invoke-interface {v6}, Lc8/Fkq;->mayAttemptDrop()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lc8/Ssq;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Lrx/exceptions/MissingBackpressureException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    if-eqz v6, :cond_3

    move v3, v4

    .line 199
    :cond_1
    :goto_1
    iget-object v6, p0, Lc8/Ssq;->onOverflow:Lc8/hnq;

    if-eqz v6, :cond_2

    .line 201
    :try_start_1
    iget-object v6, p0, Lc8/Ssq;->onOverflow:Lc8/hnq;

    invoke-interface {v6}, Lc8/hnq;->call()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :cond_2
    if-nez v3, :cond_4

    move v4, v5

    .line 211
    goto :goto_0

    :cond_3
    move v3, v5

    .line 192
    goto :goto_1

    .line 193
    :catch_0
    move-exception v2

    .line 194
    .local v2, "e":Lrx/exceptions/MissingBackpressureException;
    iget-object v6, p0, Lc8/Ssq;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    invoke-virtual {p0}, Lc8/Ssq;->unsubscribe()V

    .line 196
    iget-object v6, p0, Lc8/Ssq;->child:Lc8/Omq;

    invoke-virtual {v6, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 202
    .end local v2    # "e":Lrx/exceptions/MissingBackpressureException;
    :catch_1
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 204
    iget-object v4, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v4, v2}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    move v4, v5

    .line 207
    goto :goto_0

    .line 215
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "hasCapacity":Z
    :cond_4
    iget-object v6, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x1

    sub-long v8, v0, v8

    invoke-virtual {v6, v0, v1, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 157
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Ssq;->on:Lc8/cpq;

    iget-object v1, p0, Lc8/Ssq;->child:Lc8/Omq;

    invoke-virtual {v0, v1, p1}, Lc8/cpq;->accept(Lc8/Wlq;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public complete(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lc8/Ssq;->child:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lc8/Ssq;->child:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method protected manager()Lc8/Xlq;
    .locals 1

    .prologue
    .line 219
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    return-object v0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 134
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Ssq;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain()V

    .line 137
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 141
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Ssq;->saturated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0, p1}, Lrx/internal/util/BackpressureDrainManager;->terminateAndDrain(Ljava/lang/Throwable;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lc8/Ssq;->assertCapacity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lc8/Ssq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v1, p0, Lc8/Ssq;->on:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 152
    iget-object v0, p0, Lc8/Ssq;->manager:Lrx/internal/util/BackpressureDrainManager;

    invoke-virtual {v0}, Lrx/internal/util/BackpressureDrainManager;->drain()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 129
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/Ssq;->request(J)V

    .line 130
    return-void
.end method

.method public peek()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 169
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Ssq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 173
    .local p0, "this":Lc8/Ssq;, "Lrx/internal/operators/OperatorOnBackpressureBuffer$BufferSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Ssq;->queue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 174
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lc8/Ssq;->capacity:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 177
    :cond_0
    return-object v0
.end method
