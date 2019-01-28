.class public final Lc8/ztq;
.super Lc8/Omq;
.source "OperatorReplay.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Atq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReplaySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field static final EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;


# instance fields
.field public final buffer:Lc8/xtq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/xtq",
            "<TT;>;"
        }
    .end annotation
.end field

.field coordinateAll:Z

.field coordinationQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field done:Z

.field emitting:Z

.field maxChildRequested:J

.field maxUpstreamRequested:J

.field missed:Z

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile producer:Lc8/Xlq;

.field final producers:Lc8/ayq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/ayq",
            "<",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation
.end field

.field producersCacheVersion:J

.field volatile producersVersion:J

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminated:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 313
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lc8/ztq;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 315
    new-array v0, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    sput-object v0, Lc8/ztq;->TERMINATED:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    return-void
.end method

.method public constructor <init>(Lc8/xtq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/xtq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "buffer":Lc8/xtq;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 353
    iput-object p1, p0, Lc8/ztq;->buffer:Lc8/xtq;

    .line 355
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/ztq;->nl:Lc8/cpq;

    .line 356
    new-instance v0, Lc8/ayq;

    invoke-direct {v0}, Lc8/ayq;-><init>()V

    iput-object v0, p0, Lc8/ztq;->producers:Lc8/ayq;

    .line 357
    sget-object v0, Lc8/ztq;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lc8/ztq;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 358
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/ztq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 361
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lc8/ztq;->request(J)V

    .line 362
    return-void
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorReplay$InnerProducer;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v0, 0x0

    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_0
    iget-boolean v1, p0, Lc8/ztq;->terminated:Z

    if-eqz v1, :cond_1

    .line 406
    :goto_0
    return v0

    .line 398
    :cond_1
    iget-object v1, p0, Lc8/ztq;->producers:Lc8/ayq;

    monitor-enter v1

    .line 399
    :try_start_0
    iget-boolean v2, p0, Lc8/ztq;->terminated:Z

    if-eqz v2, :cond_2

    .line 400
    monitor-exit v1

    goto :goto_0

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 403
    :cond_2
    :try_start_1
    iget-object v0, p0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v0, p1}, Lc8/ayq;->add(Ljava/lang/Object;)Z

    .line 404
    iget-wide v2, p0, Lc8/ztq;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/ztq;->producersVersion:J

    .line 405
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 564
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v4, p0, Lc8/ztq;->producers:Lc8/ayq;

    monitor-enter v4

    .line 565
    :try_start_0
    iget-object v3, p0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v3}, Lc8/ayq;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 566
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    .line 568
    .local v1, "n":I
    new-array v2, v1, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 569
    .local v2, "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v0, v3, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    monitor-exit v4

    return-object v2

    .line 571
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v1    # "n":I
    .end local v2    # "result":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method init()V
    .locals 1

    .prologue
    .line 365
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    new-instance v0, Lc8/ytq;

    invoke-direct {v0, p0}, Lc8/ytq;-><init>(Lc8/ztq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/ztq;->add(Lc8/Pmq;)V

    .line 384
    return-void
.end method

.method makeRequest(JJ)V
    .locals 11
    .param p1, "maxTotalRequests"    # J
    .param p3, "previousTotalRequests"    # J

    .prologue
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    const-wide/16 v8, 0x0

    .line 575
    iget-wide v6, p0, Lc8/ztq;->maxUpstreamRequested:J

    .line 576
    .local v6, "ur":J
    iget-object v2, p0, Lc8/ztq;->producer:Lc8/Xlq;

    .line 578
    .local v2, "p":Lc8/Xlq;
    sub-long v0, p1, p3

    .line 579
    .local v0, "diff":J
    cmp-long v3, v0, v8

    if-eqz v3, :cond_4

    .line 580
    iput-wide p1, p0, Lc8/ztq;->maxChildRequested:J

    .line 581
    if-eqz v2, :cond_2

    .line 582
    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    .line 583
    iput-wide v8, p0, Lc8/ztq;->maxUpstreamRequested:J

    .line 584
    add-long v8, v6, v0

    invoke-interface {v2, v8, v9}, Lc8/Xlq;->request(J)V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    invoke-interface {v2, v0, v1}, Lc8/Xlq;->request(J)V

    goto :goto_0

    .line 590
    :cond_2
    add-long v4, v6, v0

    .line 591
    .local v4, "u":J
    cmp-long v3, v4, v8

    if-gez v3, :cond_3

    .line 592
    const-wide v4, 0x7fffffffffffffffL

    .line 594
    :cond_3
    iput-wide v4, p0, Lc8/ztq;->maxUpstreamRequested:J

    goto :goto_0

    .line 598
    .end local v4    # "u":J
    :cond_4
    cmp-long v3, v6, v8

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 599
    iput-wide v8, p0, Lc8/ztq;->maxUpstreamRequested:J

    .line 601
    invoke-interface {v2, v6, v7}, Lc8/Xlq;->request(J)V

    goto :goto_0
.end method

.method public manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 14
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 482
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "inner":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    invoke-virtual {p0}, Lc8/ztq;->isUnsubscribed()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    monitor-enter p0

    .line 486
    :try_start_0
    iget-boolean v11, p0, Lc8/ztq;->emitting:Z

    if-eqz v11, :cond_4

    .line 487
    if-eqz p1, :cond_3

    .line 488
    iget-object v5, p0, Lc8/ztq;->coordinationQueue:Ljava/util/List;

    .line 489
    .local v5, "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    if-nez v5, :cond_2

    .line 490
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    iput-object v5, p0, Lc8/ztq;->coordinationQueue:Ljava/util/List;

    .line 493
    :cond_2
    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    .end local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    :goto_1
    const/4 v11, 0x1

    iput-boolean v11, p0, Lc8/ztq;->missed:Z

    .line 498
    monitor-exit p0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 495
    :cond_3
    const/4 v11, 0x1

    :try_start_1
    iput-boolean v11, p0, Lc8/ztq;->coordinateAll:Z

    goto :goto_1

    .line 500
    :cond_4
    const/4 v11, 0x1

    iput-boolean v11, p0, Lc8/ztq;->emitting:Z

    .line 501
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    iget-wide v8, p0, Lc8/ztq;->maxChildRequested:J

    .line 506
    .local v8, "ri":J
    if-eqz p1, :cond_6

    .line 507
    iget-object v11, p1, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 519
    .local v6, "maxTotalRequested":J
    :cond_5
    invoke-virtual {p0, v6, v7, v8, v9}, Lc8/ztq;->makeRequest(JJ)V

    .line 523
    :goto_2
    invoke-virtual {p0}, Lc8/ztq;->isUnsubscribed()Z

    move-result v11

    if-nez v11, :cond_0

    .line 529
    monitor-enter p0

    .line 530
    :try_start_2
    iget-boolean v11, p0, Lc8/ztq;->missed:Z

    if-nez v11, :cond_8

    .line 531
    const/4 v11, 0x0

    iput-boolean v11, p0, Lc8/ztq;->emitting:Z

    .line 532
    monitor-exit p0

    goto :goto_0

    .line 539
    :catchall_1
    move-exception v11

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 509
    .end local v6    # "maxTotalRequested":J
    :cond_6
    move-wide v6, v8

    .line 511
    .restart local v6    # "maxTotalRequested":J
    invoke-virtual {p0}, Lc8/ztq;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 512
    .local v0, "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .local v2, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_3
    if-ge v3, v4, :cond_5

    aget-object v10, v2, v3

    .line 513
    .local v10, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_7

    .line 514
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 512
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 534
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_8
    const/4 v11, 0x0

    :try_start_3
    iput-boolean v11, p0, Lc8/ztq;->missed:Z

    .line 535
    iget-object v5, p0, Lc8/ztq;->coordinationQueue:Ljava/util/List;

    .line 536
    .restart local v5    # "q":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;>;"
    const/4 v11, 0x0

    iput-object v11, p0, Lc8/ztq;->coordinationQueue:Ljava/util/List;

    .line 537
    iget-boolean v1, p0, Lc8/ztq;->coordinateAll:Z

    .line 538
    .local v1, "all":Z
    const/4 v11, 0x0

    iput-boolean v11, p0, Lc8/ztq;->coordinateAll:Z

    .line 539
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 541
    iget-wide v8, p0, Lc8/ztq;->maxChildRequested:J

    .line 542
    move-wide v6, v8

    .line 544
    if-eqz v5, :cond_9

    .line 545
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 546
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 547
    goto :goto_4

    .line 550
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_9
    if-eqz v1, :cond_b

    .line 551
    invoke-virtual {p0}, Lc8/ztq;->copyProducers()[Lrx/internal/operators/OperatorReplay$InnerProducer;

    move-result-object v0

    .line 552
    .restart local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    move-object v2, v0

    .restart local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_5
    if-ge v3, v4, :cond_b

    aget-object v10, v2, v3

    .line 553
    .restart local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v10, :cond_a

    .line 554
    iget-object v11, v10, Lrx/internal/operators/OperatorReplay$InnerProducer;->totalRequested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 552
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 559
    .end local v0    # "a":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    .end local v2    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v10    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :cond_b
    invoke-virtual {p0, v6, v7, v8, v9}, Lc8/ztq;->makeRequest(JJ)V

    goto/16 :goto_2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 466
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/ztq;->done:Z

    if-nez v0, :cond_0

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ztq;->done:Z

    .line 469
    :try_start_0
    iget-object v0, p0, Lc8/ztq;->buffer:Lc8/xtq;

    invoke-interface {v0}, Lc8/xtq;->complete()V

    .line 470
    invoke-virtual {p0}, Lc8/ztq;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    invoke-virtual {p0}, Lc8/ztq;->unsubscribe()V

    .line 475
    :cond_0
    return-void

    .line 472
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/ztq;->unsubscribe()V

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 452
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-boolean v0, p0, Lc8/ztq;->done:Z

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/ztq;->done:Z

    .line 455
    :try_start_0
    iget-object v0, p0, Lc8/ztq;->buffer:Lc8/xtq;

    invoke-interface {v0, p1}, Lc8/xtq;->error(Ljava/lang/Throwable;)V

    .line 456
    invoke-virtual {p0}, Lc8/ztq;->replay()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {p0}, Lc8/ztq;->unsubscribe()V

    .line 461
    :cond_0
    return-void

    .line 458
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lc8/ztq;->unsubscribe()V

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lc8/ztq;->done:Z

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lc8/ztq;->buffer:Lc8/xtq;

    invoke-interface {v0, p1}, Lc8/xtq;->next(Ljava/lang/Object;)V

    .line 445
    invoke-virtual {p0}, Lc8/ztq;->replay()V

    .line 447
    :cond_0
    return-void
.end method

.method public remove(Lrx/internal/operators/OperatorReplay$InnerProducer;)V
    .locals 6
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorReplay$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-boolean v0, p0, Lc8/ztq;->terminated:Z

    if-eqz v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 418
    :cond_0
    iget-object v1, p0, Lc8/ztq;->producers:Lc8/ayq;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-boolean v0, p0, Lc8/ztq;->terminated:Z

    if-eqz v0, :cond_1

    .line 420
    monitor-exit v1

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 422
    :cond_1
    :try_start_1
    iget-object v0, p0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v0, p1}, Lc8/ayq;->remove(Ljava/lang/Object;)Z

    .line 423
    iget-object v0, p0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v0}, Lc8/ayq;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 424
    sget-object v0, Lc8/ztq;->EMPTY:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    iput-object v0, p0, Lc8/ztq;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 426
    :cond_2
    iget-wide v2, p0, Lc8/ztq;->producersVersion:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lc8/ztq;->producersVersion:J

    .line 427
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method replay()V
    .locals 12

    .prologue
    .line 610
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v6, p0, Lc8/ztq;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 611
    .local v6, "pc":[Lrx/internal/operators/OperatorReplay$InnerProducer;, "[Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    iget-wide v8, p0, Lc8/ztq;->producersCacheVersion:J

    iget-wide v10, p0, Lc8/ztq;->producersVersion:J

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 612
    iget-object v9, p0, Lc8/ztq;->producers:Lc8/ayq;

    monitor-enter v9

    .line 613
    :try_start_0
    iget-object v6, p0, Lc8/ztq;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 616
    iget-object v8, p0, Lc8/ztq;->producers:Lc8/ayq;

    invoke-virtual {v8}, Lc8/ayq;->values()[Ljava/lang/Object;

    move-result-object v0

    .line 617
    .local v0, "a":[Ljava/lang/Object;
    array-length v5, v0

    .line 618
    .local v5, "n":I
    array-length v8, v6

    if-eq v8, v5, :cond_0

    .line 619
    new-array v6, v5, [Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 620
    iput-object v6, p0, Lc8/ztq;->producersCache:[Lrx/internal/operators/OperatorReplay$InnerProducer;

    .line 622
    :cond_0
    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v0, v8, v6, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    iget-wide v10, p0, Lc8/ztq;->producersVersion:J

    iput-wide v10, p0, Lc8/ztq;->producersCacheVersion:J

    .line 624
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    .end local v0    # "a":[Ljava/lang/Object;
    .end local v5    # "n":I
    :cond_1
    iget-object v2, p0, Lc8/ztq;->buffer:Lc8/xtq;

    .line 627
    .local v2, "b":Lc8/xtq;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    move-object v1, v6

    .local v1, "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    array-length v4, v6

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v1, v3

    .line 628
    .local v7, "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    if-eqz v7, :cond_2

    .line 629
    invoke-interface {v2, v7}, Lc8/xtq;->replay(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 627
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 624
    .end local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .end local v2    # "b":Lc8/xtq;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "rp":Lrx/internal/operators/OperatorReplay$InnerProducer;, "Lrx/internal/operators/OperatorReplay$InnerProducer<TT;>;"
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 632
    .restart local v1    # "arr$":[Lrx/internal/operators/OperatorReplay$InnerProducer;
    .restart local v2    # "b":Lc8/xtq;, "Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;"
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_3
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 3
    .param p1, "p"    # Lc8/Xlq;

    .prologue
    .line 432
    .local p0, "this":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    iget-object v0, p0, Lc8/ztq;->producer:Lc8/Xlq;

    .line 433
    .local v0, "p0":Lc8/Xlq;
    if-eqz v0, :cond_0

    .line 434
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Only a single producer can be set on a Subscriber."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 436
    :cond_0
    iput-object p1, p0, Lc8/ztq;->producer:Lc8/Xlq;

    .line 437
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lc8/ztq;->manageRequests(Lrx/internal/operators/OperatorReplay$InnerProducer;)V

    .line 438
    invoke-virtual {p0}, Lc8/ztq;->replay()V

    .line 439
    return-void
.end method
