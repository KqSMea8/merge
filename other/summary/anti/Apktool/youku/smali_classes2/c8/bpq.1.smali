.class public abstract Lc8/bpq;
.super Lc8/Omq;
.source "DeferredScalarSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/apq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final HAS_REQUEST_HAS_VALUE:I = 0x3

.field static final HAS_REQUEST_NO_VALUE:I = 0x1

.field static final NO_REQUEST_HAS_VALUE:I = 0x2

.field static final NO_REQUEST_NO_VALUE:I


# instance fields
.field protected final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field protected hasValue:Z

.field final state:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 60
    iput-object p1, p0, Lc8/bpq;->actual:Lc8/Omq;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 62
    return-void
.end method


# virtual methods
.method protected final complete()V
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/bpq;->actual:Lc8/Omq;

    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 84
    return-void
.end method

.method protected final complete(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 92
    iget-object v0, p0, Lc8/bpq;->actual:Lc8/Omq;

    .line 94
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :cond_0
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 96
    .local v1, "s":I
    if-eq v1, v4, :cond_1

    if-eq v1, v5, :cond_1

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 100
    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 102
    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 104
    :cond_3
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->lazySet(I)V

    goto :goto_0

    .line 107
    :cond_4
    iput-object p1, p0, Lc8/bpq;->value:Ljava/lang/Object;

    .line 108
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method final downstreamRequest(J)V
    .locals 11
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const-wide/16 v8, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 115
    cmp-long v2, p1, v8

    if-gez v2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "n >= 0 required but it was "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    cmp-long v2, p1, v8

    if-eqz v2, :cond_2

    .line 119
    iget-object v0, p0, Lc8/bpq;->actual:Lc8/Omq;

    .line 121
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    :cond_1
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 122
    .local v1, "s":I
    if-eq v1, v4, :cond_2

    if-eq v1, v6, :cond_2

    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    .end local v0    # "a":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .end local v1    # "s":I
    :cond_2
    :goto_0
    return-void

    .line 125
    .restart local v0    # "a":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .restart local v1    # "s":I
    :cond_3
    if-ne v1, v5, :cond_4

    .line 126
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-object v2, p0, Lc8/bpq;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 128
    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 129
    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 134
    :cond_4
    iget-object v2, p0, Lc8/bpq;->state:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 72
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-boolean v0, p0, Lc8/bpq;->hasValue:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lc8/bpq;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lc8/bpq;->complete(Ljava/lang/Object;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lc8/bpq;->complete()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 66
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/bpq;->value:Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Lc8/bpq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 68
    return-void
.end method

.method public final setProducer(Lc8/Xlq;)V
    .locals 2
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 143
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 144
    return-void
.end method

.method final setupDownstream()V
    .locals 2

    .prologue
    .line 157
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    iget-object v0, p0, Lc8/bpq;->actual:Lc8/Omq;

    .line 158
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    invoke-virtual {v0, p0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 159
    new-instance v1, Lc8/apq;

    invoke-direct {v1, p0}, Lc8/apq;-><init>(Lc8/bpq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 160
    return-void
.end method

.method public final subscribeTo(Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lc8/bpq;, "Lrx/internal/operators/DeferredScalarSubscriber<TT;TR;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p0}, Lc8/bpq;->setupDownstream()V

    .line 153
    invoke-virtual {p1, p0}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 154
    return-void
.end method
