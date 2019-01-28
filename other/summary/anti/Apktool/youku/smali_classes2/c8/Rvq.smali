.class public final Lc8/Rvq;
.super Lc8/Omq;
.source "OperatorWindowWithSize.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Tvq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WindowOverlap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/hnq;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final cancel:Lc8/Pmq;

.field volatile done:Z

.field final drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

.field error:Ljava/lang/Throwable;

.field index:I

.field produced:I

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/GBq",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field public final requested:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final size:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field public final skip:I
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final windows:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lc8/GBq",
            "<TT;TT;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Omq;II)V
    .locals 4
    .param p2, "size"    # I
    .param p3, "skip"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 314
    iput-object p1, p0, Lc8/Rvq;->actual:Lc8/Omq;

    .line 315
    iput p2, p0, Lc8/Rvq;->size:I

    .line 316
    iput p3, p0, Lc8/Rvq;->skip:I

    .line 317
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc8/Rvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 318
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v1, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    .line 319
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lc8/Rvq;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 320
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lc8/Rvq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 321
    invoke-static {p0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    iput-object v1, p0, Lc8/Rvq;->cancel:Lc8/Pmq;

    .line 322
    iget-object v1, p0, Lc8/Rvq;->cancel:Lc8/Pmq;

    invoke-virtual {p0, v1}, Lc8/Rvq;->add(Lc8/Pmq;)V

    .line 323
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lc8/Rvq;->request(J)V

    .line 324
    add-int/lit8 v1, p3, -0x1

    add-int/2addr v1, p2

    div-int v0, v1, p3

    .line 325
    .local v0, "maxWindows":I
    new-instance v1, Lc8/Fyq;

    invoke-direct {v1, v0}, Lc8/Fyq;-><init>(I)V

    iput-object v1, p0, Lc8/Rvq;->queue:Ljava/util/Queue;

    .line 326
    return-void
.end method

.method public static synthetic access$300(Lc8/Rvq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Rvq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lc8/Rvq;->request(J)V

    return-void
.end method

.method public static synthetic access$400(Lc8/Rvq;J)V
    .locals 1
    .param p0, "x0"    # Lc8/Rvq;
    .param p1, "x1"    # J
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lc8/Rvq;->request(J)V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 1

    .prologue
    .line 398
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v0, p0, Lc8/Rvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lc8/Rvq;->unsubscribe()V

    .line 401
    :cond_0
    return-void
.end method

.method checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "d"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc8/Omq",
            "<-",
            "Lc8/GBq",
            "<TT;TT;>;>;",
            "Ljava/util/Queue",
            "<",
            "Lc8/GBq",
            "<TT;TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p3, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v1, 0x1

    .line 455
    invoke-virtual {p3}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 471
    :goto_0
    return v1

    .line 459
    :cond_0
    if-eqz p1, :cond_2

    .line 460
    iget-object v0, p0, Lc8/Rvq;->error:Ljava/lang/Throwable;

    .line 461
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 462
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 463
    invoke-virtual {p3, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    :cond_1
    if-eqz p2, :cond_2

    .line 467
    invoke-virtual {p3}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 471
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method createProducer()Lc8/Xlq;
    .locals 1

    .prologue
    .line 393
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    new-instance v0, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap$WindowOverlapProducer;-><init>(Lc8/Rvq;)V

    return-object v0
.end method

.method public drain()V
    .locals 14
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 404
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lc8/Rvq;->drainWip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 405
    .local v2, "dw":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v11

    if-eqz v11, :cond_1

    .line 452
    :cond_0
    return-void

    .line 409
    :cond_1
    iget-object v0, p0, Lc8/Rvq;->actual:Lc8/Omq;

    .line 410
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/subjects/Subject<TT;TT;>;>;"
    iget-object v7, p0, Lc8/Rvq;->queue:Ljava/util/Queue;

    .line 412
    .local v7, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/subjects/Subject<TT;TT;>;>;"
    const/4 v6, 0x1

    .line 416
    .local v6, "missed":I
    :goto_0
    iget-object v11, p0, Lc8/Rvq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 417
    .local v8, "r":J
    const-wide/16 v4, 0x0

    .line 419
    .local v4, "e":J
    :goto_1
    cmp-long v11, v4, v8

    if-eqz v11, :cond_3

    .line 420
    iget-boolean v1, p0, Lc8/Rvq;->done:Z

    .line 421
    .local v1, "d":Z
    invoke-interface {v7}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc8/GBq;

    .line 422
    .local v10, "v":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-nez v10, :cond_2

    const/4 v3, 0x1

    .line 424
    .local v3, "empty":Z
    :goto_2
    invoke-virtual {p0, v1, v3, v0, v7}, Lc8/Rvq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 428
    if-nez v3, :cond_3

    .line 432
    invoke-virtual {v0, v10}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 434
    const-wide/16 v12, 0x1

    add-long/2addr v4, v12

    .line 435
    goto :goto_1

    .line 422
    .end local v3    # "empty":Z
    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    .line 437
    .end local v1    # "d":Z
    .end local v10    # "v":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_3
    cmp-long v11, v4, v8

    if-nez v11, :cond_4

    .line 438
    iget-boolean v11, p0, Lc8/Rvq;->done:Z

    invoke-interface {v7}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    invoke-virtual {p0, v11, v12, v0, v7}, Lc8/Rvq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 443
    :cond_4
    const-wide/16 v12, 0x0

    cmp-long v11, v4, v12

    if-eqz v11, :cond_5

    const-wide v12, 0x7fffffffffffffffL

    cmp-long v11, v8, v12

    if-eqz v11, :cond_5

    .line 444
    iget-object v11, p0, Lc8/Rvq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v12, v4

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 447
    :cond_5
    neg-int v11, v6

    invoke-virtual {v2, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v6

    .line 448
    if-eqz v6, :cond_0

    goto :goto_0
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 383
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/GBq;

    .line 384
    .local v1, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1}, Lc8/GBq;->onCompleted()V

    goto :goto_0

    .line 386
    .end local v1    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_0
    iget-object v2, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 388
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Rvq;->done:Z

    .line 389
    invoke-virtual {p0}, Lc8/Rvq;->drain()V

    .line 390
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 371
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    iget-object v2, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/GBq;

    .line 372
    .local v1, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v1, p1}, Lc8/GBq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    .end local v1    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_0
    iget-object v2, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->clear()V

    .line 376
    iput-object p1, p0, Lc8/Rvq;->error:Ljava/lang/Throwable;

    .line 377
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/Rvq;->done:Z

    .line 378
    invoke-virtual {p0}, Lc8/Rvq;->drain()V

    .line 379
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, "this":Lc8/Rvq;, "Lrx/internal/operators/OperatorWindowWithSize$WindowOverlap<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lc8/Rvq;->index:I

    .line 332
    .local v0, "i":I
    iget-object v3, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    .line 334
    .local v3, "q":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lrx/subjects/Subject<TT;TT;>;>;"
    if-nez v0, :cond_0

    iget-object v5, p0, Lc8/Rvq;->actual:Lc8/Omq;

    invoke-virtual {v5}, Lc8/Omq;->isUnsubscribed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    iget-object v5, p0, Lc8/Rvq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 337
    const/16 v5, 0x10

    invoke-static {v5, p0}, Lc8/PBq;->create(ILc8/hnq;)Lc8/PBq;

    move-result-object v4

    .line 338
    .local v4, "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 340
    iget-object v5, p0, Lc8/Rvq;->queue:Ljava/util/Queue;

    invoke-interface {v5, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lc8/Rvq;->drain()V

    .line 344
    .end local v4    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_0
    iget-object v5, p0, Lc8/Rvq;->windows:Ljava/util/ArrayDeque;

    invoke-virtual {v5}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/GBq;

    .line 345
    .restart local v4    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    invoke-virtual {v4, p1}, Lc8/GBq;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    .line 348
    .end local v4    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_1
    iget v5, p0, Lc8/Rvq;->produced:I

    add-int/lit8 v2, v5, 0x1

    .line 350
    .local v2, "p":I
    iget v5, p0, Lc8/Rvq;->size:I

    if-ne v2, v5, :cond_3

    .line 351
    iget v5, p0, Lc8/Rvq;->skip:I

    sub-int v5, v2, v5

    iput v5, p0, Lc8/Rvq;->produced:I

    .line 353
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/GBq;

    .line 354
    .restart local v4    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {v4}, Lc8/GBq;->onCompleted()V

    .line 361
    .end local v4    # "w":Lc8/GBq;, "Lrx/subjects/Subject<TT;TT;>;"
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 362
    iget v5, p0, Lc8/Rvq;->skip:I

    if-ne v0, v5, :cond_4

    .line 363
    const/4 v5, 0x0

    iput v5, p0, Lc8/Rvq;->index:I

    .line 367
    :goto_2
    return-void

    .line 358
    :cond_3
    iput v2, p0, Lc8/Rvq;->produced:I

    goto :goto_1

    .line 365
    :cond_4
    iput v0, p0, Lc8/Rvq;->index:I

    goto :goto_2
.end method
