.class public final Lc8/Qsq;
.super Lc8/Omq;
.source "OperatorObserveOn.java"

# interfaces
.implements Lc8/hnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Rsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObserveOnSubscriber"
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
.field final child:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field final delayError:Z

.field emitted:J

.field error:Ljava/lang/Throwable;

.field volatile finished:Z

.field final limit:I

.field final on:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
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

.field final recursiveScheduler:Lc8/Zlq;

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Lc8/amq;Lc8/Omq;ZI)V
    .locals 4
    .param p1, "scheduler"    # Lc8/amq;
    .param p3, "delayError"    # Z
    .param p4, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/amq;",
            "Lc8/Omq",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 104
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lc8/Qsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 106
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lc8/Qsq;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 120
    iput-object p2, p0, Lc8/Qsq;->child:Lc8/Omq;

    .line 121
    invoke-virtual {p1}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    iput-object v1, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    .line 122
    iput-boolean p3, p0, Lc8/Qsq;->delayError:Z

    .line 123
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    iput-object v1, p0, Lc8/Qsq;->on:Lc8/cpq;

    .line 124
    if-lez p4, :cond_0

    move v0, p4

    .line 126
    .local v0, "calculatedSize":I
    :goto_0
    shr-int/lit8 v1, v0, 0x2

    sub-int v1, v0, v1

    iput v1, p0, Lc8/Qsq;->limit:I

    .line 127
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Lc8/hzq;

    invoke-direct {v1, v0}, Lc8/hzq;-><init>(I)V

    iput-object v1, p0, Lc8/Qsq;->queue:Ljava/util/Queue;

    .line 133
    :goto_1
    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lc8/Qsq;->request(J)V

    .line 134
    return-void

    .line 124
    .end local v0    # "calculatedSize":I
    :cond_0
    sget v0, Lc8/fyq;->SIZE:I

    goto :goto_0

    .line 130
    .restart local v0    # "calculatedSize":I
    :cond_1
    new-instance v1, Lc8/Eyq;

    invoke-direct {v1, v0}, Lc8/Eyq;-><init>(I)V

    iput-object v1, p0, Lc8/Qsq;->queue:Ljava/util/Queue;

    goto :goto_1
.end method


# virtual methods
.method public call()V
    .locals 18

    .prologue
    .line 197
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    const-wide/16 v8, 0x1

    .line 198
    .local v8, "missed":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lc8/Qsq;->emitted:J

    .line 203
    .local v2, "currentEmission":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lc8/Qsq;->queue:Ljava/util/Queue;

    .line 204
    .local v10, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v6, v0, Lc8/Qsq;->child:Lc8/Omq;

    .line 205
    .local v6, "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lc8/Qsq;->on:Lc8/cpq;

    .line 212
    .local v7, "localOn":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TT;>;"
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Qsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v12

    .line 214
    .local v12, "requestAmount":J
    :cond_0
    :goto_1
    cmp-long v14, v12, v2

    if-eqz v14, :cond_4

    .line 215
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lc8/Qsq;->finished:Z

    .line 216
    .local v4, "done":Z
    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    .line 217
    .local v11, "v":Ljava/lang/Object;
    if-nez v11, :cond_2

    const/4 v5, 0x1

    .line 219
    .local v5, "empty":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v10}, Lc8/Qsq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 249
    .end local v4    # "done":Z
    .end local v5    # "empty":Z
    .end local v11    # "v":Ljava/lang/Object;
    :cond_1
    return-void

    .line 217
    .restart local v4    # "done":Z
    .restart local v11    # "v":Ljava/lang/Object;
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 223
    .restart local v5    # "empty":Z
    :cond_3
    if-nez v5, :cond_4

    .line 227
    invoke-virtual {v7, v11}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v6, v14}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 229
    const-wide/16 v14, 0x1

    add-long/2addr v2, v14

    .line 230
    move-object/from16 v0, p0

    iget v14, v0, Lc8/Qsq;->limit:I

    int-to-long v14, v14

    cmp-long v14, v2, v14

    if-nez v14, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Qsq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v14, v2, v3}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v12

    .line 232
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lc8/Qsq;->request(J)V

    .line 233
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 237
    .end local v4    # "done":Z
    .end local v5    # "empty":Z
    .end local v11    # "v":Ljava/lang/Object;
    :cond_4
    cmp-long v14, v12, v2

    if-nez v14, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lc8/Qsq;->finished:Z

    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15, v6, v10}, Lc8/Qsq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 243
    :cond_5
    move-object/from16 v0, p0

    iput-wide v2, v0, Lc8/Qsq;->emitted:J

    .line 244
    move-object/from16 v0, p0

    iget-object v14, v0, Lc8/Qsq;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v8

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v8

    .line 245
    const-wide/16 v14, 0x0

    cmp-long v14, v8, v14

    if-eqz v14, :cond_1

    goto :goto_0
.end method

.method checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "isEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc8/Omq",
            "<-TT;>;",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p3, "a":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v1, 0x1

    .line 252
    invoke-virtual {p3}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 294
    :goto_0
    return v1

    .line 257
    :cond_0
    if-eqz p1, :cond_1

    .line 258
    iget-boolean v2, p0, Lc8/Qsq;->delayError:Z

    if-eqz v2, :cond_3

    .line 259
    if-eqz p2, :cond_1

    .line 260
    iget-object v0, p0, Lc8/Qsq;->error:Ljava/lang/Throwable;

    .line 262
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 263
    :try_start_0
    invoke-virtual {p3, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_1
    iget-object v1, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->unsubscribe()V

    .line 294
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 265
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    invoke-virtual {p3}, Lc8/Omq;->onCompleted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v2}, Lc8/Zlq;->unsubscribe()V

    throw v1

    .line 272
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    iget-object v0, p0, Lc8/Qsq;->error:Ljava/lang/Throwable;

    .line 273
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 274
    invoke-interface {p4}, Ljava/util/Queue;->clear()V

    .line 276
    :try_start_2
    invoke-virtual {p3, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 278
    iget-object v2, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v2}, Lc8/Zlq;->unsubscribe()V

    goto :goto_0

    :catchall_1
    move-exception v1

    iget-object v2, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v2}, Lc8/Zlq;->unsubscribe()V

    throw v1

    .line 282
    :cond_4
    if-eqz p2, :cond_1

    .line 284
    :try_start_3
    invoke-virtual {p3}, Lc8/Omq;->onCompleted()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 286
    iget-object v2, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v2}, Lc8/Zlq;->unsubscribe()V

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v2}, Lc8/Zlq;->unsubscribe()V

    throw v1
.end method

.method init()V
    .locals 2

    .prologue
    .line 139
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Qsq;->child:Lc8/Omq;

    .line 141
    .local v0, "localChild":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v1, Lc8/Psq;

    invoke-direct {v1, p0}, Lc8/Psq;-><init>(Lc8/Qsq;)V

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 152
    iget-object v1, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v0, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 153
    invoke-virtual {v0, p0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 154
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 170
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lc8/Qsq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Qsq;->finished:Z

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Qsq;->finished:Z

    .line 174
    invoke-virtual {p0}, Lc8/Qsq;->schedule()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 179
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    invoke-virtual {p0}, Lc8/Qsq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Qsq;->finished:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 186
    :goto_0
    return-void

    .line 183
    :cond_1
    iput-object p1, p0, Lc8/Qsq;->error:Ljava/lang/Throwable;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/Qsq;->finished:Z

    .line 185
    invoke-virtual {p0}, Lc8/Qsq;->schedule()V

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
    .line 158
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Lc8/Qsq;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Qsq;->finished:Z

    if-eqz v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lc8/Qsq;->queue:Ljava/util/Queue;

    iget-object v1, p0, Lc8/Qsq;->on:Lc8/cpq;

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lc8/Qsq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Lc8/Qsq;->schedule()V

    goto :goto_0
.end method

.method protected schedule()V
    .locals 4

    .prologue
    .line 189
    .local p0, "this":Lc8/Qsq;, "Lrx/internal/operators/OperatorObserveOn$ObserveOnSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Qsq;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lc8/Qsq;->recursiveScheduler:Lc8/Zlq;

    invoke-virtual {v0, p0}, Lc8/Zlq;->schedule(Lc8/hnq;)Lc8/Pmq;

    .line 192
    :cond_0
    return-void
.end method
