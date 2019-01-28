.class public final Lc8/xuq;
.super Lc8/Omq;
.source "OperatorSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/yuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SwitchSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<",
        "Lc8/Vlq",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final TERMINAL_ERROR:Ljava/lang/Throwable;


# instance fields
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final delayError:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field final index:Ljava/util/concurrent/atomic/AtomicLong;

.field innerActive:Z

.field volatile mainDone:Z

.field missed:Z

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field producer:Lc8/Xlq;

.field final queue:Lc8/Fyq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Fyq",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field requested:J

.field final ssub:Lc8/YBq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Throwable;

    const-string/jumbo v1, "Terminal error"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    sput-object v0, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    return-void
.end method

.method constructor <init>(Lc8/Omq;Z)V
    .locals 2
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;Z)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 102
    iput-object p1, p0, Lc8/xuq;->child:Lc8/Omq;

    .line 103
    new-instance v0, Lc8/YBq;

    invoke-direct {v0}, Lc8/YBq;-><init>()V

    iput-object v0, p0, Lc8/xuq;->ssub:Lc8/YBq;

    .line 104
    iput-boolean p2, p0, Lc8/xuq;->delayError:Z

    .line 105
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v0, Lc8/Fyq;

    sget v1, Lc8/fyq;->SIZE:I

    invoke-direct {v0, v1}, Lc8/Fyq;-><init>(I)V

    iput-object v0, p0, Lc8/xuq;->queue:Lc8/Fyq;

    .line 107
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/xuq;->nl:Lc8/cpq;

    .line 108
    return-void
.end method


# virtual methods
.method protected checkTerminated(ZZLjava/lang/Throwable;Lc8/Fyq;Lc8/Omq;Z)Z
    .locals 2
    .param p1, "localMainDone"    # Z
    .param p2, "localInnerActive"    # Z
    .param p3, "localError"    # Ljava/lang/Throwable;
    .param p6, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/lang/Throwable;",
            "Lc8/Fyq",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lc8/Omq",
            "<-TT;>;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p4, "localQueue":Lc8/Fyq;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .local p5, "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v0, 0x1

    .line 359
    iget-boolean v1, p0, Lc8/xuq;->delayError:Z

    if-eqz v1, :cond_1

    .line 360
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 361
    if-eqz p3, :cond_0

    .line 362
    invoke-virtual {p5, p3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 379
    :goto_0
    return v0

    .line 364
    :cond_0
    invoke-virtual {p5}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 369
    :cond_1
    if-eqz p3, :cond_2

    .line 370
    invoke-virtual {p4}, Lc8/Fyq;->clear()V

    .line 371
    invoke-virtual {p5, p3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    if-eqz p6, :cond_3

    .line 375
    invoke-virtual {p5}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 379
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method childRequested(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .line 258
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 260
    .local v0, "p":Lc8/Xlq;
    iget-wide v2, p0, Lc8/xuq;->requested:J

    invoke-static {v2, v3, p1, p2}, Lc8/ioq;->addCap(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lc8/xuq;->requested:J

    .line 261
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1, p2}, Lc8/Xlq;->request(J)V

    .line 265
    :cond_0
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    .line 266
    return-void

    .line 261
    .end local v0    # "p":Lc8/Xlq;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method clearProducer()V
    .locals 1

    .prologue
    .line 133
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 134
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 135
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method complete(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 229
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 231
    monitor-exit p0

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/xuq;->innerActive:Z

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 235
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method drain()V
    .locals 25

    .prologue
    .line 272
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 273
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/xuq;->emitting:Z

    if-eqz v4, :cond_1

    .line 274
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/xuq;->missed:Z

    .line 275
    monitor-exit p0

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/xuq;->emitting:Z

    .line 278
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/xuq;->innerActive:Z

    .line 279
    .local v6, "localInnerActive":Z
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/xuq;->requested:J

    move-wide/from16 v22, v0

    .line 280
    .local v22, "localRequested":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .line 281
    .local v7, "localError":Ljava/lang/Throwable;
    if-eqz v7, :cond_2

    sget-object v4, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/xuq;->delayError:Z

    if-nez v4, :cond_2

    .line 282
    sget-object v4, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .line 284
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/xuq;->queue:Lc8/Fyq;

    .line 287
    .local v8, "localQueue":Lc8/Fyq;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v19, v0

    .line 288
    .local v19, "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v9, v0, Lc8/xuq;->child:Lc8/Omq;

    .line 289
    .local v9, "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lc8/xuq;->mainDone:Z

    .line 293
    .local v5, "localMainDone":Z
    :goto_1
    const-wide/16 v20, 0x0

    .line 295
    .local v20, "localEmission":J
    :cond_3
    :goto_2
    cmp-long v4, v20, v22

    if-eqz v4, :cond_4

    .line 296
    invoke-virtual {v9}, Lc8/Omq;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 300
    invoke-virtual {v8}, Lc8/Fyq;->isEmpty()Z

    move-result v10

    .local v10, "empty":Z
    move-object/from16 v4, p0

    .line 302
    invoke-virtual/range {v4 .. v10}, Lc8/xuq;->checkTerminated(ZZLjava/lang/Throwable;Lc8/Fyq;Lc8/Omq;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 307
    if-nez v10, :cond_4

    .line 312
    invoke-virtual {v8}, Lc8/Fyq;->poll()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lc8/uuq;

    .line 313
    .local v18, "inner":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/xuq;->nl:Lc8/cpq;

    invoke-virtual {v8}, Lc8/Fyq;->poll()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 315
    .local v24, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    invoke-static/range {v18 .. v18}, Lc8/uuq;->access$000(Lc8/uuq;)J

    move-result-wide v14

    cmp-long v4, v12, v14

    if-nez v4, :cond_3

    .line 316
    move-object/from16 v0, v24

    invoke-virtual {v9, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 317
    const-wide/16 v12, 0x1

    add-long v20, v20, v12

    goto :goto_2

    .line 284
    .end local v5    # "localMainDone":Z
    .end local v6    # "localInnerActive":Z
    .end local v7    # "localError":Ljava/lang/Throwable;
    .end local v8    # "localQueue":Lc8/Fyq;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .end local v9    # "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .end local v10    # "empty":Z
    .end local v18    # "inner":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    .end local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .end local v20    # "localEmission":J
    .end local v22    # "localRequested":J
    .end local v24    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 321
    .restart local v5    # "localMainDone":Z
    .restart local v6    # "localInnerActive":Z
    .restart local v7    # "localError":Ljava/lang/Throwable;
    .restart local v8    # "localQueue":Lc8/Fyq;, "Lrx/internal/util/atomic/SpscLinkedArrayQueue<Ljava/lang/Object;>;"
    .restart local v9    # "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .restart local v19    # "localIndex":Ljava/util/concurrent/atomic/AtomicLong;
    .restart local v20    # "localEmission":J
    .restart local v22    # "localRequested":J
    :cond_4
    cmp-long v4, v20, v22

    if-nez v4, :cond_5

    .line 322
    invoke-virtual {v9}, Lc8/Omq;->isUnsubscribed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lc8/xuq;->mainDone:Z

    invoke-virtual {v8}, Lc8/Fyq;->isEmpty()Z

    move-result v17

    move-object/from16 v11, p0

    move v13, v6

    move-object v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    invoke-virtual/range {v11 .. v17}, Lc8/xuq;->checkTerminated(ZZLjava/lang/Throwable;Lc8/Fyq;Lc8/Omq;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 333
    :cond_5
    monitor-enter p0

    .line 335
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lc8/xuq;->requested:J

    move-wide/from16 v22, v0

    .line 336
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v4, v22, v12

    if-eqz v4, :cond_6

    .line 337
    sub-long v22, v22, v20

    .line 338
    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lc8/xuq;->requested:J

    .line 341
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/xuq;->missed:Z

    if-nez v4, :cond_7

    .line 342
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/xuq;->emitting:Z

    .line 343
    monitor-exit p0

    goto/16 :goto_0

    .line 353
    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 345
    :cond_7
    const/4 v4, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lc8/xuq;->missed:Z

    .line 347
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lc8/xuq;->mainDone:Z

    .line 348
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lc8/xuq;->innerActive:Z

    .line 349
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .line 350
    if-eqz v7, :cond_8

    sget-object v4, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-eq v7, v4, :cond_8

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/xuq;->delayError:Z

    if-nez v4, :cond_8

    .line 351
    sget-object v4, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    move-object/from16 v0, p0

    iput-object v4, v0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .line 353
    :cond_8
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1
.end method

.method emit(Ljava/lang/Object;Lc8/uuq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lc8/uuq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "inner":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    monitor-enter p0

    .line 201
    :try_start_0
    iget-object v0, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {p2}, Lc8/uuq;->access$000(Lc8/uuq;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 202
    monitor-exit p0

    .line 208
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lc8/xuq;->queue:Lc8/Fyq;

    iget-object v1, p0, Lc8/xuq;->nl:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lc8/Fyq;->offer(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    goto :goto_0

    .line 206
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method error(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "id"    # J

    .prologue
    .line 212
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v1, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v1, v2, p2

    if-nez v1, :cond_0

    .line 214
    invoke-virtual {p0, p1}, Lc8/xuq;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 215
    .local v0, "success":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/xuq;->innerActive:Z

    .line 216
    const/4 v1, 0x0

    iput-object v1, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 220
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    .line 226
    :goto_1
    return-void

    .line 218
    .end local v0    # "success":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "success":Z
    goto :goto_0

    .line 220
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 224
    .restart local v0    # "success":Z
    :cond_1
    invoke-virtual {p0, p1}, Lc8/xuq;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method init()V
    .locals 2

    .prologue
    .line 111
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    iget-object v0, p0, Lc8/xuq;->child:Lc8/Omq;

    iget-object v1, p0, Lc8/xuq;->ssub:Lc8/YBq;

    invoke-virtual {v0, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 112
    iget-object v0, p0, Lc8/xuq;->child:Lc8/Omq;

    new-instance v1, Lc8/vuq;

    invoke-direct {v1, p0}, Lc8/vuq;-><init>(Lc8/xuq;)V

    invoke-static {v1}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 118
    iget-object v0, p0, Lc8/xuq;->child:Lc8/Omq;

    new-instance v1, Lc8/wuq;

    invoke-direct {v1, p0}, Lc8/wuq;-><init>(Lc8/xuq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 130
    return-void
.end method

.method innerProducer(Lc8/Xlq;J)V
    .locals 4
    .param p1, "p"    # Lc8/Xlq;
    .param p2, "id"    # J

    .prologue
    .line 245
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v2, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_0

    .line 247
    monitor-exit p0

    .line 254
    :goto_0
    return-void

    .line 249
    :cond_0
    iget-wide v0, p0, Lc8/xuq;->requested:J

    .line 250
    .local v0, "n":J
    iput-object p1, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 251
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-interface {p1, v0, v1}, Lc8/Xlq;->request(J)V

    goto :goto_0

    .line 251
    .end local v0    # "n":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 195
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xuq;->mainDone:Z

    .line 196
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    .line 197
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 164
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    monitor-enter p0

    .line 165
    :try_start_0
    invoke-virtual {p0, p1}, Lc8/xuq;->updateError(Ljava/lang/Throwable;)Z

    move-result v0

    .line 166
    .local v0, "success":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/xuq;->mainDone:Z

    .line 169
    invoke-virtual {p0}, Lc8/xuq;->drain()V

    .line 173
    :goto_0
    return-void

    .line 166
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 171
    .restart local v0    # "success":Z
    :cond_0
    invoke-virtual {p0, p1}, Lc8/xuq;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNext(Lc8/Vlq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    .local p1, "t":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    iget-object v4, p0, Lc8/xuq;->index:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 142
    .local v0, "id":J
    iget-object v4, p0, Lc8/xuq;->ssub:Lc8/YBq;

    invoke-virtual {v4}, Lc8/YBq;->get()Lc8/Pmq;

    move-result-object v3

    .line 143
    .local v3, "s":Lc8/Pmq;
    if-eqz v3, :cond_0

    .line 144
    invoke-interface {v3}, Lc8/Pmq;->unsubscribe()V

    .line 149
    :cond_0
    monitor-enter p0

    .line 150
    :try_start_0
    new-instance v2, Lc8/uuq;

    invoke-direct {v2, v0, v1, p0}, Lc8/uuq;-><init>(JLc8/xuq;)V

    .line 152
    .local v2, "inner":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    const/4 v4, 0x1

    iput-boolean v4, p0, Lc8/xuq;->innerActive:Z

    .line 153
    const/4 v4, 0x0

    iput-object v4, p0, Lc8/xuq;->producer:Lc8/Xlq;

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iget-object v4, p0, Lc8/xuq;->ssub:Lc8/YBq;

    invoke-virtual {v4, v2}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 157
    invoke-virtual {p1, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 158
    return-void

    .line 154
    .end local v2    # "inner":Lc8/uuq;, "Lrx/internal/operators/OperatorSwitch$InnerSubscriber<TT;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    check-cast p1, Lc8/Vlq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/xuq;->onNext(Lc8/Vlq;)V

    return-void
.end method

.method pluginError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 240
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 241
    return-void
.end method

.method updateError(Ljava/lang/Throwable;)Z
    .locals 6
    .param p1, "next"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lc8/xuq;, "Lrx/internal/operators/OperatorSwitch$SwitchSubscriber<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    iget-object v0, p0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .line 177
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lc8/xuq;->TERMINAL_ERROR:Ljava/lang/Throwable;

    if-ne v0, v4, :cond_0

    .line 190
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return v2

    .line 180
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    if-nez v0, :cond_1

    .line 181
    iput-object p1, p0, Lc8/xuq;->error:Ljava/lang/Throwable;

    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    move v2, v3

    .line 190
    goto :goto_0

    .line 183
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    instance-of v4, v0, Lrx/exceptions/CompositeException;

    if-eqz v4, :cond_2

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    check-cast v0, Lrx/exceptions/CompositeException;

    .end local v0    # "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Lrx/exceptions/CompositeException;->getExceptions()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 185
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v2, Lrx/exceptions/CompositeException;

    invoke-direct {v2, v1}, Lrx/exceptions/CompositeException;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lc8/xuq;->error:Ljava/lang/Throwable;

    goto :goto_1

    .line 188
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    new-instance v4, Lrx/exceptions/CompositeException;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Throwable;

    aput-object v0, v5, v2

    aput-object p1, v5, v3

    invoke-direct {v4, v5}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    iput-object v4, p0, Lc8/xuq;->error:Ljava/lang/Throwable;

    goto :goto_1
.end method
