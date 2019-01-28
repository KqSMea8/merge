.class public final Lc8/fwq;
.super Lc8/Omq;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InexactSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final chunks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lc8/Zvq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field final guard:Ljava/lang/Object;

.field final synthetic this$0:Lc8/hwq;

.field final worker:Lc8/Zlq;


# direct methods
.method public constructor <init>(Lc8/hwq;Lc8/Omq;Lc8/Zlq;)V
    .locals 1
    .param p3, "worker"    # Lc8/Zlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;>;",
            "Lc8/Zlq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 371
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lc8/fwq;->this$0:Lc8/hwq;

    .line 372
    invoke-direct {p0, p2}, Lc8/Omq;-><init>(Lc8/Omq;)V

    .line 373
    iput-object p2, p0, Lc8/fwq;->child:Lc8/Omq;

    .line 374
    iput-object p3, p0, Lc8/fwq;->worker:Lc8/Zlq;

    .line 375
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    .line 376
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/fwq;->chunks:Ljava/util/List;

    .line 377
    return-void
.end method


# virtual methods
.method createCountedSerializedSubject()Lc8/Zvq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Zvq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-static {}, Lc8/PBq;->create()Lc8/PBq;

    move-result-object v0

    .line 497
    .local v0, "bus":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    new-instance v1, Lc8/Zvq;

    invoke-direct {v1, v0, v0}, Lc8/Zvq;-><init>(Lc8/Wlq;Lc8/Vlq;)V

    return-object v1
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 428
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 429
    :try_start_0
    iget-boolean v3, p0, Lc8/fwq;->done:Z

    if-eqz v3, :cond_0

    .line 430
    monitor-exit v4

    .line 440
    :goto_0
    return-void

    .line 432
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/fwq;->done:Z

    .line 433
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 434
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 435
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zvq;

    .line 437
    .local v0, "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lc8/Zvq;->consumer:Lc8/Wlq;

    invoke-interface {v3}, Lc8/Wlq;->onCompleted()V

    goto :goto_1

    .line 435
    .end local v0    # "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 439
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lc8/fwq;->child:Lc8/Omq;

    invoke-virtual {v3}, Lc8/Omq;->onCompleted()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 411
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v4, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 412
    :try_start_0
    iget-boolean v3, p0, Lc8/fwq;->done:Z

    if-eqz v3, :cond_0

    .line 413
    monitor-exit v4

    .line 423
    :goto_0
    return-void

    .line 415
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lc8/fwq;->done:Z

    .line 416
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 417
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v3, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 418
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zvq;

    .line 420
    .local v0, "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, v0, Lc8/Zvq;->consumer:Lc8/Wlq;

    invoke-interface {v3, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 418
    .end local v0    # "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 422
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_1
    iget-object v3, p0, Lc8/fwq;->child:Lc8/Omq;

    invoke-virtual {v3, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v5, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    monitor-enter v5

    .line 388
    :try_start_0
    iget-boolean v4, p0, Lc8/fwq;->done:Z

    if-eqz v4, :cond_1

    .line 389
    monitor-exit v5

    .line 406
    :cond_0
    return-void

    .line 391
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    iget-object v4, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 394
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zvq;

    .line 395
    .local v0, "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget v4, v0, Lc8/Zvq;->count:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v0, Lc8/Zvq;->count:I

    iget-object v6, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget v6, v6, Lc8/hwq;->size:I

    if-ne v4, v6, :cond_2

    .line 396
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 399
    .end local v0    # "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_3
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zvq;

    .line 401
    .restart local v0    # "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v4, v0, Lc8/Zvq;->consumer:Lc8/Wlq;

    invoke-interface {v4, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 402
    iget v4, v0, Lc8/Zvq;->count:I

    iget-object v5, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget v5, v5, Lc8/hwq;->size:I

    if-ne v4, v5, :cond_4

    .line 403
    iget-object v4, v0, Lc8/Zvq;->consumer:Lc8/Wlq;

    invoke-interface {v4}, Lc8/Wlq;->onCompleted()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 381
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/fwq;->request(J)V

    .line 382
    return-void
.end method

.method scheduleChunk()V
    .locals 7

    .prologue
    .line 442
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    iget-object v0, p0, Lc8/fwq;->worker:Lc8/Zlq;

    new-instance v1, Lc8/dwq;

    invoke-direct {v1, p0}, Lc8/dwq;-><init>(Lc8/fwq;)V

    iget-object v2, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget-wide v2, v2, Lc8/hwq;->timeshift:J

    iget-object v4, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget-wide v4, v4, Lc8/hwq;->timeshift:J

    iget-object v6, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget-object v6, v6, Lc8/hwq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lc8/Zlq;->schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 450
    return-void
.end method

.method startNewChunk()V
    .locals 7

    .prologue
    .line 452
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {p0}, Lc8/fwq;->createCountedSerializedSubject()Lc8/Zvq;

    move-result-object v0

    .line 453
    .local v0, "chunk":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    iget-object v3, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 454
    :try_start_0
    iget-boolean v2, p0, Lc8/fwq;->done:Z

    if-eqz v2, :cond_0

    .line 455
    monitor-exit v3

    .line 474
    :goto_0
    return-void

    .line 457
    :cond_0
    iget-object v2, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 460
    :try_start_1
    iget-object v2, p0, Lc8/fwq;->child:Lc8/Omq;

    iget-object v3, v0, Lc8/Zvq;->producer:Lc8/Vlq;

    invoke-virtual {v2, v3}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 466
    iget-object v2, p0, Lc8/fwq;->worker:Lc8/Zlq;

    new-instance v3, Lc8/ewq;

    invoke-direct {v3, p0, v0}, Lc8/ewq;-><init>(Lc8/fwq;Lc8/Zvq;)V

    iget-object v4, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget-wide v4, v4, Lc8/hwq;->timespan:J

    iget-object v6, p0, Lc8/fwq;->this$0:Lc8/hwq;

    iget-object v6, v6, Lc8/hwq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    goto :goto_0

    .line 458
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lc8/fwq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method terminateChunk(Lc8/Zvq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Zvq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lc8/fwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.InexactSubscriber;"
    .local p1, "chunk":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    const/4 v2, 0x0

    .line 477
    .local v2, "terminate":Z
    iget-object v4, p0, Lc8/fwq;->guard:Ljava/lang/Object;

    monitor-enter v4

    .line 478
    :try_start_0
    iget-boolean v3, p0, Lc8/fwq;->done:Z

    if-eqz v3, :cond_1

    .line 479
    monitor-exit v4

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v3, p0, Lc8/fwq;->chunks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Zvq;

    .line 484
    .local v0, "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    if-ne v0, p1, :cond_2

    .line 485
    const/4 v2, 0x1

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 490
    .end local v0    # "cs":Lc8/Zvq;, "Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;"
    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    if-eqz v2, :cond_0

    .line 492
    iget-object v3, p1, Lc8/Zvq;->consumer:Lc8/Wlq;

    invoke-interface {v3}, Lc8/Wlq;->onCompleted()V

    goto :goto_0

    .line 490
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lrx/internal/operators/OperatorWindowWithTime$CountedSerializedSubject<TT;>;>;"
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
