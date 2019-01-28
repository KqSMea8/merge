.class public final Lc8/Apq;
.super Lc8/Omq;
.source "OnSubscribeDetach.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Bpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DetachSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Omq",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final producer:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Xlq;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lc8/Omq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Apq;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/Apq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 64
    return-void
.end method


# virtual methods
.method innerRequest(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    const-wide/16 v4, 0x0

    .line 99
    cmp-long v1, p1, v4

    if-gez v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "n >= 0 required but it was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 102
    :cond_0
    iget-object v1, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Xlq;

    .line 103
    .local v0, "p":Lc8/Xlq;
    if-eqz v0, :cond_2

    .line 104
    invoke-interface {v0, p1, p2}, Lc8/Xlq;->request(J)V

    .line 113
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    iget-object v1, p0, Lc8/Apq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v1, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 107
    iget-object v1, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Lc8/Xlq;
    check-cast v0, Lc8/Xlq;

    .line 108
    .restart local v0    # "p":Lc8/Xlq;
    if-eqz v0, :cond_1

    sget-object v1, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    if-eq v0, v1, :cond_1

    .line 109
    iget-object v1, p0, Lc8/Apq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    .line 110
    .local v2, "r":J
    invoke-interface {v0, v2, v3}, Lc8/Xlq;->request(J)V

    goto :goto_0
.end method

.method innerUnsubscribe()V
    .locals 2

    .prologue
    .line 128
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lc8/Apq;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Lc8/Apq;->unsubscribe()V

    .line 132
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 90
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 91
    iget-object v1, p0, Lc8/Apq;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Omq;

    .line 93
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lc8/Omq;->onCompleted()V

    .line 96
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 77
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 78
    iget-object v1, p0, Lc8/Apq;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Omq;

    .line 80
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lc8/Apq;->actual:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Omq;

    .line 70
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 73
    :cond_0
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 6
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 117
    .local p0, "this":Lc8/Apq;, "Lrx/internal/operators/OnSubscribeDetach$DetachSubscriber<TT;>;"
    iget-object v2, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p0, Lc8/Apq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v0

    .line 119
    .local v0, "r":J
    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    .line 125
    .end local v0    # "r":J
    :cond_0
    return-void

    .line 121
    :cond_1
    iget-object v2, p0, Lc8/Apq;->producer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;->INSTANCE:Lrx/internal/operators/OnSubscribeDetach$TerminatedProducer;

    if-eq v2, v3, :cond_0

    .line 122
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Producer already set!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
