.class public final Lc8/mtq;
.super Lc8/Omq;
.source "OperatorPublish.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/ntq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PublishSubscriber"
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
.field static final EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

.field static final TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;


# instance fields
.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/mtq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field emitting:Z

.field missed:Z

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final producers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[",
            "Lrx/internal/operators/OperatorPublish$InnerProducer;",
            ">;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

.field volatile terminalEvent:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 230
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lc8/mtq;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 232
    new-array v0, v1, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    sput-object v0, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/mtq",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 248
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lc8/hzq;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1}, Lc8/hzq;-><init>(I)V

    :goto_0
    iput-object v0, p0, Lc8/mtq;->queue:Ljava/util/Queue;

    .line 252
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/mtq;->nl:Lc8/cpq;

    .line 253
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/mtq;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p1, p0, Lc8/mtq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/mtq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 256
    return-void

    .line 248
    :cond_0
    new-instance v0, Lc8/yyq;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1}, Lc8/yyq;-><init>(I)V

    goto :goto_0
.end method


# virtual methods
.method add(Lrx/internal/operators/OperatorPublish$InnerProducer;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v3, 0x0

    .line 319
    if-nez p1, :cond_0

    .line 320
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 325
    :cond_0
    iget-object v4, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 328
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v4, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v4, :cond_1

    .line 338
    :goto_0
    return v3

    .line 332
    :cond_1
    array-length v1, v0

    .line 333
    .local v1, "len":I
    add-int/lit8 v4, v1, 0x1

    new-array v2, v4, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 334
    .local v2, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    aput-object p1, v2, v1

    .line 337
    iget-object v4, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 338
    const/4 v3, 0x1

    goto :goto_0
.end method

.method checkTerminated(Ljava/lang/Object;Z)Z
    .locals 8
    .param p1, "term"    # Ljava/lang/Object;
    .param p2, "empty"    # Z

    .prologue
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 404
    if-eqz p1, :cond_3

    .line 406
    iget-object v6, p0, Lc8/mtq;->nl:Lc8/cpq;

    invoke-virtual {v6, p1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 408
    if-eqz p2, :cond_3

    .line 411
    iget-object v6, p0, Lc8/mtq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 425
    :try_start_0
    iget-object v6, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .local v0, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 426
    .local v2, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lc8/Omq;

    invoke-virtual {v6}, Lc8/Omq;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 431
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_0
    invoke-virtual {p0}, Lc8/mtq;->unsubscribe()V

    .line 458
    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :goto_1
    return v5

    .line 431
    :catchall_0
    move-exception v5

    invoke-virtual {p0}, Lc8/mtq;->unsubscribe()V

    throw v5

    .line 437
    :cond_1
    iget-object v6, p0, Lc8/mtq;->nl:Lc8/cpq;

    invoke-virtual {v6, p1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    .line 440
    .local v4, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lc8/mtq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6, p0, v7}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    :try_start_1
    iget-object v6, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v7, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .restart local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v3, v0

    .restart local v3    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 446
    .restart local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    iget-object v6, v2, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lc8/Omq;

    invoke-virtual {v6, v4}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 451
    .end local v2    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<*>;"
    :cond_2
    invoke-virtual {p0}, Lc8/mtq;->unsubscribe()V

    goto :goto_1

    .end local v0    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    :catchall_1
    move-exception v5

    invoke-virtual {p0}, Lc8/mtq;->unsubscribe()V

    throw v5

    .line 458
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public dispatch()V
    .locals 26
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 469
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    monitor-enter p0

    .line 470
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/mtq;->emitting:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    .line 471
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->missed:Z

    .line 472
    monitor-exit p0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 476
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->missed:Z

    .line 477
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 486
    const/16 v16, 0x0

    .line 497
    .local v16, "skipFinal":Z
    :cond_2
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 504
    .local v18, "term":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 508
    .local v6, "empty":Z
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lc8/mtq;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-result v22

    if-eqz v22, :cond_3

    .line 509
    const/16 v16, 0x1

    .line 634
    if-nez v16, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    const/16 v22, 0x0

    :try_start_2
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 638
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v22

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v22

    .line 477
    .end local v6    # "empty":Z
    .end local v16    # "skipFinal":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_1
    move-exception v22

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22

    .line 516
    .restart local v6    # "empty":Z
    .restart local v16    # "skipFinal":Z
    .restart local v18    # "term":Ljava/lang/Object;
    :cond_3
    if-nez v6, :cond_11

    .line 520
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 522
    .local v11, "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    array-length v9, v11

    .line 524
    .local v9, "len":I
    const-wide v12, 0x7fffffffffffffffL

    .line 526
    .local v12, "maxRequested":J
    const/16 v19, 0x0

    .line 531
    .local v19, "unsubscribed":I
    move-object v4, v11

    .local v4, "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    array-length v10, v11

    .local v10, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_2
    if-ge v7, v10, :cond_6

    aget-object v8, v4, v7

    .line 532
    .local v8, "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J

    move-result-wide v14

    .line 535
    .local v14, "r":J
    const-wide/16 v22, 0x0

    cmp-long v22, v14, v22

    if-ltz v22, :cond_5

    .line 536
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    .line 531
    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 539
    :cond_5
    const-wide/high16 v22, -0x8000000000000000L

    cmp-long v22, v14, v22

    if-nez v22, :cond_4

    .line 540
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 547
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v14    # "r":J
    :cond_6
    move/from16 v0, v19

    if-ne v9, v0, :cond_a

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 552
    .local v20, "v":Ljava/lang/Object;
    if-nez v20, :cond_7

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lc8/mtq;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v22

    if-eqz v22, :cond_8

    .line 553
    const/16 v16, 0x1

    .line 634
    if-nez v16, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    const/16 v22, 0x0

    :try_start_5
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 638
    monitor-exit p0

    goto/16 :goto_0

    :catchall_2
    move-exception v22

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v22

    .line 552
    :cond_7
    const/16 v22, 0x0

    goto :goto_4

    .line 557
    :cond_8
    const-wide/16 v22, 0x1

    :try_start_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/mtq;->request(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto/16 :goto_1

    .line 634
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v6    # "empty":Z
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v18    # "term":Ljava/lang/Object;
    .end local v19    # "unsubscribed":I
    .end local v20    # "v":Ljava/lang/Object;
    :catchall_3
    move-exception v22

    if-nez v16, :cond_9

    .line 636
    monitor-enter p0

    .line 637
    const/16 v23, 0x0

    :try_start_7
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 638
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :cond_9
    throw v22

    .line 564
    .restart local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .restart local v6    # "empty":Z
    .restart local v7    # "i$":I
    .restart local v9    # "len":I
    .restart local v10    # "len$":I
    .restart local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .restart local v12    # "maxRequested":J
    .restart local v18    # "term":Ljava/lang/Object;
    .restart local v19    # "unsubscribed":I
    :cond_a
    const/4 v5, 0x0

    .line 565
    .local v5, "d":I
    :goto_5
    int-to-long v0, v5

    move-wide/from16 v22, v0

    cmp-long v22, v22, v12

    if-gez v22, :cond_f

    .line 566
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    move-object/from16 v18, v0

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->queue:Ljava/util/Queue;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v20

    .line 568
    .restart local v20    # "v":Ljava/lang/Object;
    if-nez v20, :cond_b

    const/4 v6, 0x1

    .line 570
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lc8/mtq;->checkTerminated(Ljava/lang/Object;Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v22

    if-eqz v22, :cond_c

    .line 571
    const/16 v16, 0x1

    .line 634
    if-nez v16, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    const/16 v22, 0x0

    :try_start_9
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 638
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v22

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v22

    .line 568
    :cond_b
    const/4 v6, 0x0

    goto :goto_6

    .line 575
    :cond_c
    if-nez v6, :cond_f

    .line 579
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/mtq;->nl:Lc8/cpq;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .line 581
    .local v21, "value":Ljava/lang/Object;, "TT;"
    move-object v4, v11

    array-length v10, v11

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v10, :cond_e

    aget-object v8, v4, v7

    .line 586
    .restart local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->get()J
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-lez v22, :cond_d

    .line 588
    :try_start_b
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lc8/Omq;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 596
    const-wide/16 v22, 0x1

    :try_start_c
    move-wide/from16 v0, v22

    invoke-virtual {v8, v0, v1}, Lrx/internal/operators/OperatorPublish$InnerProducer;->produced(J)J

    .line 581
    :cond_d
    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 589
    :catch_0
    move-exception v17

    .line 591
    .local v17, "t":Ljava/lang/Throwable;
    invoke-virtual {v8}, Lrx/internal/operators/OperatorPublish$InnerProducer;->unsubscribe()V

    .line 592
    iget-object v0, v8, Lrx/internal/operators/OperatorPublish$InnerProducer;->child:Lc8/Omq;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_8

    .line 600
    .end local v8    # "ip":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v17    # "t":Ljava/lang/Throwable;
    :cond_e
    add-int/lit8 v5, v5, 0x1

    .line 601
    goto/16 :goto_5

    .line 604
    .end local v20    # "v":Ljava/lang/Object;
    .end local v21    # "value":Ljava/lang/Object;, "TT;"
    :cond_f
    if-lez v5, :cond_10

    .line 605
    int-to-long v0, v5

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/mtq;->request(J)V

    .line 610
    :cond_10
    const-wide/16 v22, 0x0

    cmp-long v22, v12, v22

    if-eqz v22, :cond_11

    if-eqz v6, :cond_2

    .line 617
    .end local v4    # "arr$":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    .end local v5    # "d":I
    .end local v7    # "i$":I
    .end local v9    # "len":I
    .end local v10    # "len$":I
    .end local v11    # "ps":[Lrx/internal/operators/OperatorPublish$InnerProducer;, "[Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    .end local v12    # "maxRequested":J
    .end local v19    # "unsubscribed":I
    :cond_11
    monitor-enter p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 621
    :try_start_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/mtq;->missed:Z

    move/from16 v22, v0

    if-nez v22, :cond_12

    .line 623
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 625
    const/16 v16, 0x1

    .line 626
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 634
    if-nez v16, :cond_0

    .line 636
    monitor-enter p0

    .line 637
    const/16 v22, 0x0

    :try_start_e
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->emitting:Z

    .line 638
    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v22

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v22

    .line 629
    :cond_12
    const/16 v22, 0x0

    :try_start_f
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lc8/mtq;->missed:Z

    .line 630
    monitor-exit p0

    goto/16 :goto_1

    :catchall_6
    move-exception v22

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    throw v22
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 638
    .end local v6    # "empty":Z
    .end local v18    # "term":Ljava/lang/Object;
    :catchall_7
    move-exception v22

    :try_start_11
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    throw v22
.end method

.method init()V
    .locals 1

    .prologue
    .line 260
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    new-instance v0, Lc8/ltq;

    invoke-direct {v0, p0}, Lc8/ltq;-><init>(Lc8/mtq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/mtq;->add(Lc8/Pmq;)V

    .line 269
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 304
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 305
    iget-object v0, p0, Lc8/mtq;->nl:Lc8/cpq;

    invoke-virtual {v0}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    .line 308
    invoke-virtual {p0}, Lc8/mtq;->dispatch()V

    .line 310
    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 293
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    iget-object v0, p0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lc8/mtq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/mtq;->terminalEvent:Ljava/lang/Object;

    .line 297
    invoke-virtual {p0}, Lc8/mtq;->dispatch()V

    .line 299
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
    .line 281
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/mtq;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lc8/mtq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lc8/mtq;->onError(Ljava/lang/Throwable;)V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lc8/mtq;->dispatch()V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 275
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    sget v0, Lc8/fyq;->SIZE:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lc8/mtq;->request(J)V

    .line 276
    return-void
.end method

.method public remove(Lrx/internal/operators/OperatorPublish$InnerProducer;)V
    .locals 8
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/OperatorPublish$InnerProducer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    .local p1, "producer":Lrx/internal/operators/OperatorPublish$InnerProducer;, "Lrx/internal/operators/OperatorPublish$InnerProducer<TT;>;"
    const/4 v7, 0x0

    .line 353
    :cond_0
    iget-object v5, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 355
    .local v0, "c":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    sget-object v5, Lc8/mtq;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-eq v0, v5, :cond_1

    sget-object v5, Lc8/mtq;->TERMINATED:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    if-ne v0, v5, :cond_2

    .line 388
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    const/4 v2, -0x1

    .line 361
    .local v2, "j":I
    array-length v3, v0

    .line 362
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 363
    aget-object v5, v0, v1

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 364
    move v2, v1

    .line 369
    :cond_3
    if-ltz v2, :cond_1

    .line 376
    const/4 v5, 0x1

    if-ne v3, v5, :cond_5

    .line 377
    sget-object v4, Lc8/mtq;->EMPTY:[Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 387
    .local v4, "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :goto_2
    iget-object v5, p0, Lc8/mtq;->producers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 362
    .end local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 380
    :cond_5
    add-int/lit8 v5, v3, -0x1

    new-array v4, v5, [Lrx/internal/operators/OperatorPublish$InnerProducer;

    .line 382
    .restart local v4    # "u":[Lrx/internal/operators/OperatorPublish$InnerProducer;
    invoke-static {v0, v7, v4, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-static {v0, v5, v4, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method
