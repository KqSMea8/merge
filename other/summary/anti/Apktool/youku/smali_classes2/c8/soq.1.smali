.class public final Lc8/soq;
.super Lc8/Omq;
.source "BlockingOperatorNext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/toq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NextObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<",
        "Lc8/Qlq",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field private final buf:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lc8/Qlq",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final waiting:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 147
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 148
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lc8/soq;->buf:Ljava/util/concurrent/BlockingQueue;

    .line 149
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/soq;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 0

    .prologue
    .line 154
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 159
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    return-void
.end method

.method public onNext(Lc8/Qlq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Qlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    .local p1, "args":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    iget-object v2, p0, Lc8/soq;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {p1}, Lc8/Qlq;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 165
    :cond_0
    move-object v1, p1

    .line 166
    .local v1, "toOffer":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    :cond_1
    :goto_0
    iget-object v2, p0, Lc8/soq;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 167
    iget-object v2, p0, Lc8/soq;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qlq;

    .line 170
    .local v0, "concurrentItem":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc8/Qlq;->isOnNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    move-object v1, v0

    goto :goto_0

    .line 176
    .end local v0    # "concurrentItem":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    .end local v1    # "toOffer":Lc8/Qlq;, "Lrx/Notification<+TT;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 147
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    check-cast p1, Lc8/Qlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/soq;->onNext(Lc8/Qlq;)V

    return-void
.end method

.method setWaiting(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 183
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    iget-object v0, p0, Lc8/soq;->waiting:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 184
    return-void
.end method

.method public takeNext()Lc8/Qlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Qlq",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lc8/soq;, "Lrx/internal/operators/BlockingOperatorNext$NextObserver<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/soq;->setWaiting(I)V

    .line 180
    iget-object v0, p0, Lc8/soq;->buf:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Qlq;

    return-object v0
.end method
