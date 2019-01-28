.class public final Lc8/Hoq;
.super Lc8/Omq;
.source "CompletableOnSubscribeConcat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Ioq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompletableConcatSubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Goq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<",
        "Lc8/Plq;",
        ">;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Nlq;

.field volatile done:Z

.field final inner:Lc8/Goq;

.field final once:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final prefetch:I

.field final queue:Lc8/hzq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/hzq",
            "<",
            "Lc8/Plq;",
            ">;"
        }
    .end annotation
.end field

.field final sr:Lc8/YBq;

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Nlq;I)V
    .locals 2
    .param p1, "actual"    # Lc8/Nlq;
    .param p2, "prefetch"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 62
    iput-object p1, p0, Lc8/Hoq;->actual:Lc8/Nlq;

    .line 63
    iput p2, p0, Lc8/Hoq;->prefetch:I

    .line 64
    new-instance v0, Lc8/hzq;

    invoke-direct {v0, p2}, Lc8/hzq;-><init>(I)V

    iput-object v0, p0, Lc8/Hoq;->queue:Lc8/hzq;

    .line 65
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lc8/Hoq;->sr:Lc8/YBq;

    .line 66
    new-instance v0, Lc8/Goq;

    invoke-direct {v0, p0}, Lc8/Goq;-><init>(Lc8/Hoq;)V

    iput-object v0, p0, Lc8/Hoq;->inner:Lc8/Goq;

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/Hoq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/Hoq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    iget-object v0, p0, Lc8/Hoq;->sr:Lc8/YBq;

    invoke-virtual {p0, v0}, Lc8/Hoq;->add(Lc8/Pmq;)V

    .line 70
    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Lc8/Hoq;->request(J)V

    .line 71
    return-void
.end method


# virtual methods
.method innerComplete()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lc8/Hoq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lc8/Hoq;->next()V

    .line 113
    :cond_0
    iget-boolean v0, p0, Lc8/Hoq;->done:Z

    if-nez v0, :cond_1

    .line 114
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lc8/Hoq;->request(J)V

    .line 116
    :cond_1
    return-void
.end method

.method innerError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 105
    invoke-virtual {p0}, Lc8/Hoq;->unsubscribe()V

    .line 106
    invoke-virtual {p0, p1}, Lc8/Hoq;->onError(Ljava/lang/Throwable;)V

    .line 107
    return-void
.end method

.method next()V
    .locals 5

    .prologue
    .line 119
    iget-boolean v1, p0, Lc8/Hoq;->done:Z

    .line 120
    .local v1, "d":Z
    iget-object v2, p0, Lc8/Hoq;->queue:Lc8/hzq;

    invoke-virtual {v2}, Lc8/hzq;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Plq;

    .line 121
    .local v0, "c":Lc8/Plq;
    if-nez v0, :cond_2

    .line 122
    if-eqz v1, :cond_1

    .line 123
    iget-object v2, p0, Lc8/Hoq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lc8/Hoq;->actual:Lc8/Nlq;

    invoke-interface {v2}, Lc8/Nlq;->onCompleted()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Queue is empty?!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 132
    :cond_2
    iget-object v2, p0, Lc8/Hoq;->inner:Lc8/Goq;

    invoke-virtual {v0, v2}, Lc8/Plq;->unsafeSubscribe(Lc8/Nlq;)V

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lc8/Hoq;->done:Z

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Hoq;->done:Z

    .line 99
    iget-object v0, p0, Lc8/Hoq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lc8/Hoq;->next()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 86
    iget-object v0, p0, Lc8/Hoq;->once:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lc8/Hoq;->actual:Lc8/Nlq;

    invoke-interface {v0, p1}, Lc8/Nlq;->onError(Ljava/lang/Throwable;)V

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Lc8/Plq;)V
    .locals 1
    .param p1, "t"    # Lc8/Plq;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/Hoq;->queue:Lc8/hzq;

    invoke-virtual {v0, p1}, Lc8/hzq;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lc8/Hoq;->onError(Ljava/lang/Throwable;)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lc8/Hoq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lc8/Hoq;->next()V

    goto :goto_0
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Lc8/Plq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Hoq;->onNext(Lc8/Plq;)V

    return-void
.end method
