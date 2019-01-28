.class public final Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;
.super Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;
.source "OnSubscribeFromAsync.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatestAsyncEmitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x37d61f4a35bdda6fL


# instance fields
.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


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
    .line 420
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0, p1}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;-><init>(Lc8/Omq;)V

    .line 421
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 422
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 423
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lc8/cpq;

    .line 424
    return-void
.end method


# virtual methods
.method drain()V
    .locals 14

    .prologue
    .line 458
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const/4 v6, 0x1

    .line 463
    .local v6, "missed":I
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->actual:Lc8/Omq;

    .line 464
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v8, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    .line 467
    .local v8, "q":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Object;>;"
    :goto_1
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->get()J

    move-result-wide v10

    .line 468
    .local v10, "r":J
    const-wide/16 v2, 0x0

    .line 470
    .local v2, "e":J
    :goto_2
    cmp-long v9, v2, v10

    if-eqz v9, :cond_6

    .line 471
    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 472
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 476
    :cond_2
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 478
    .local v1, "d":Z
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 480
    .local v7, "o":Ljava/lang/Object;
    if-nez v7, :cond_3

    const/4 v4, 0x1

    .line 482
    .local v4, "empty":Z
    :goto_3
    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    .line 483
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 484
    .local v5, "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_4

    .line 485
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 480
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 487
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_4
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_0

    .line 492
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_5
    if-nez v4, :cond_6

    .line 496
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lc8/cpq;

    invoke-virtual {v9, v7}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v0, v9}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 498
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 499
    goto :goto_2

    .line 501
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v7    # "o":Ljava/lang/Object;
    :cond_6
    cmp-long v9, v2, v10

    if-nez v9, :cond_a

    .line 502
    invoke-virtual {v0}, Lc8/Omq;->isUnsubscribed()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 503
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    goto :goto_0

    .line 507
    :cond_7
    iget-boolean v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 509
    .restart local v1    # "d":Z
    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_8

    const/4 v4, 0x1

    .line 511
    .restart local v4    # "empty":Z
    :goto_4
    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 512
    iget-object v5, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 513
    .restart local v5    # "ex":Ljava/lang/Throwable;
    if-eqz v5, :cond_9

    .line 514
    invoke-super {p0, v5}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 509
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    .line 516
    .restart local v4    # "empty":Z
    .restart local v5    # "ex":Ljava/lang/Throwable;
    :cond_9
    invoke-super {p0}, Lrx/internal/operators/OnSubscribeFromAsync$BaseAsyncEmitter;->onCompleted()V

    goto :goto_0

    .line 522
    .end local v1    # "d":Z
    .end local v4    # "empty":Z
    .end local v5    # "ex":Ljava/lang/Throwable;
    :cond_a
    const-wide/16 v12, 0x0

    cmp-long v9, v2, v12

    if-eqz v9, :cond_b

    .line 523
    invoke-static {p0, v2, v3}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 526
    :cond_b
    iget-object v9, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v12, v6

    invoke-virtual {v9, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 527
    if-eqz v6, :cond_0

    goto/16 :goto_1
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 441
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 442
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 443
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 434
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iput-object p1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->error:Ljava/lang/Throwable;

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->done:Z

    .line 436
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 437
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
    .line 428
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 429
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 430
    return-void
.end method

.method onRequested()V
    .locals 0

    .prologue
    .line 447
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    invoke-virtual {p0}, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->drain()V

    .line 448
    return-void
.end method

.method onUnsubscribed()V
    .locals 2

    .prologue
    .line 452
    .local p0, "this":Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;, "Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lrx/internal/operators/OnSubscribeFromAsync$LatestAsyncEmitter;->queue:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->lazySet(Ljava/lang/Object;)V

    .line 455
    :cond_0
    return-void
.end method
