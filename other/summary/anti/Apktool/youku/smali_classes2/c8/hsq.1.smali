.class public final Lc8/hsq;
.super Lc8/Omq;
.source "OperatorEagerConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/isq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EagerOuterSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field volatile cancelled:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final mapper:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;"
        }
    .end annotation
.end field

.field private sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

.field final subscribers:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/fsq",
            "<TR;>;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Inq;IILc8/Omq;)V
    .locals 2
    .param p2, "bufferSize"    # I
    .param p3, "maxConcurrent"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;II",
            "Lc8/Omq",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    .local p4, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 88
    iput-object p1, p0, Lc8/hsq;->mapper:Lc8/Inq;

    .line 89
    iput p2, p0, Lc8/hsq;->bufferSize:I

    .line 90
    iput-object p4, p0, Lc8/hsq;->actual:Lc8/Omq;

    .line 91
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/hsq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    invoke-virtual {p0, v0, v1}, Lc8/hsq;->request(J)V

    .line 94
    return-void

    .line 93
    :cond_0
    int-to-long v0, p3

    goto :goto_0
.end method


# virtual methods
.method cleanup()V
    .locals 5

    .prologue
    .line 113
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iget-object v4, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    monitor-enter v4

    .line 114
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 115
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    iget-object v3, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 116
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Pmq;

    .line 119
    .local v2, "s":Lc8/Pmq;
    invoke-interface {v2}, Lc8/Pmq;->unsubscribe()V

    goto :goto_0

    .line 116
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    .end local v2    # "s":Lc8/Pmq;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 121
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lrx/Subscription;>;"
    :cond_0
    return-void
.end method

.method public drain()V
    .locals 24
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v21

    if-eqz v21, :cond_0

    .line 271
    :goto_0
    return-void

    .line 170
    :cond_0
    const/4 v14, 0x1

    .line 172
    .local v14, "missed":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    move-object/from16 v17, v0

    .line 173
    .local v17, "requested":Ljava/util/concurrent/atomic/AtomicLong;
    move-object/from16 v0, p0

    iget-object v4, v0, Lc8/hsq;->actual:Lc8/Omq;

    .line 174
    .local v4, "actualSubscriber":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v15

    .line 178
    .local v15, "nl":Lc8/cpq;, "Lrx/internal/operators/NotificationLite<TR;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/hsq;->cancelled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lc8/hsq;->cleanup()V

    goto :goto_0

    .line 185
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lc8/hsq;->done:Z

    move/from16 v16, v0

    .line 186
    .local v16, "outerDone":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 187
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc8/fsq;

    .line 188
    .local v13, "innerSubscriber":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    if-nez v13, :cond_3

    const/4 v5, 0x1

    .line 191
    .local v5, "empty":Z
    :goto_1
    if-eqz v16, :cond_5

    .line 192
    move-object/from16 v0, p0

    iget-object v8, v0, Lc8/hsq;->error:Ljava/lang/Throwable;

    .line 193
    .local v8, "error":Ljava/lang/Throwable;
    if-eqz v8, :cond_4

    .line 194
    invoke-virtual/range {p0 .. p0}, Lc8/hsq;->cleanup()V

    .line 195
    invoke-virtual {v4, v8}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 188
    .end local v5    # "empty":Z
    .end local v8    # "error":Ljava/lang/Throwable;
    .end local v13    # "innerSubscriber":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 189
    .restart local v13    # "innerSubscriber":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 198
    .restart local v5    # "empty":Z
    .restart local v8    # "error":Ljava/lang/Throwable;
    :cond_4
    if-eqz v5, :cond_5

    .line 199
    invoke-virtual {v4}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 204
    .end local v8    # "error":Ljava/lang/Throwable;
    :cond_5
    if-nez v5, :cond_b

    .line 205
    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    .line 206
    .local v18, "requestedAmount":J
    const-wide/16 v6, 0x0

    .line 208
    .local v6, "emittedAmount":J
    iget-object v12, v13, Lc8/fsq;->queue:Ljava/util/Queue;

    .line 209
    .local v12, "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    const/4 v10, 0x0

    .line 213
    .local v10, "innerDone":Z
    :goto_2
    iget-boolean v0, v13, Lc8/fsq;->done:Z

    move/from16 v16, v0

    .line 214
    invoke-interface {v12}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v20

    .line 215
    .local v20, "v":Ljava/lang/Object;
    if-nez v20, :cond_6

    const/4 v5, 0x1

    .line 217
    :goto_3
    if-eqz v16, :cond_c

    .line 218
    iget-object v11, v13, Lc8/fsq;->error:Ljava/lang/Throwable;

    .line 219
    .local v11, "innerError":Ljava/lang/Throwable;
    if-eqz v11, :cond_7

    .line 220
    invoke-virtual/range {p0 .. p0}, Lc8/hsq;->cleanup()V

    .line 221
    invoke-virtual {v4, v11}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 215
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 224
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    :cond_7
    if-eqz v5, :cond_c

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    move-object/from16 v22, v0

    monitor-enter v22

    .line 226
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 227
    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 228
    invoke-virtual {v13}, Lc8/fsq;->unsubscribe()V

    .line 229
    const/4 v10, 0x1

    .line 230
    const-wide/16 v22, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lc8/hsq;->request(J)V

    .line 255
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_8
    const-wide/16 v22, 0x0

    cmp-long v21, v6, v22

    if-eqz v21, :cond_a

    .line 256
    const-wide v22, 0x7fffffffffffffffL

    cmp-long v21, v18, v22

    if-eqz v21, :cond_9

    .line 257
    move-object/from16 v0, v17

    invoke-static {v0, v6, v7}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 259
    :cond_9
    if-nez v10, :cond_a

    .line 260
    invoke-virtual {v13, v6, v7}, Lc8/fsq;->requestMore(J)V

    .line 264
    :cond_a
    if-nez v10, :cond_1

    .line 269
    .end local v6    # "emittedAmount":J
    .end local v10    # "innerDone":Z
    .end local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v18    # "requestedAmount":J
    .end local v20    # "v":Ljava/lang/Object;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lc8/hsq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v21, v0

    neg-int v0, v14

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v14

    .line 270
    if-nez v14, :cond_1

    goto/16 :goto_0

    .line 227
    .restart local v6    # "emittedAmount":J
    .restart local v10    # "innerDone":Z
    .restart local v11    # "innerError":Ljava/lang/Throwable;
    .restart local v12    # "innerQueue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v18    # "requestedAmount":J
    .restart local v20    # "v":Ljava/lang/Object;
    :catchall_1
    move-exception v21

    :try_start_3
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v21

    .line 235
    .end local v11    # "innerError":Ljava/lang/Throwable;
    :cond_c
    if-nez v5, :cond_8

    .line 239
    cmp-long v21, v18, v6

    if-eqz v21, :cond_8

    .line 243
    invoke-interface {v12}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 246
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 252
    const-wide/16 v22, 0x1

    add-long v6, v6, v22

    .line 253
    goto/16 :goto_2

    .line 247
    :catch_0
    move-exception v9

    .line 248
    .local v9, "ex":Ljava/lang/Throwable;
    move-object/from16 v0, v20

    invoke-static {v9, v4, v0}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method init()V
    .locals 2

    .prologue
    .line 97
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    new-instance v0, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-direct {v0, p0}, Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;-><init>(Lc8/hsq;)V

    iput-object v0, p0, Lc8/hsq;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    .line 98
    new-instance v0, Lc8/gsq;

    invoke-direct {v0, p0}, Lc8/gsq;-><init>(Lc8/hsq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc8/hsq;->add(Lc8/Pmq;)V

    .line 107
    iget-object v0, p0, Lc8/hsq;->actual:Lc8/Omq;

    invoke-virtual {v0, p0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 108
    iget-object v0, p0, Lc8/hsq;->actual:Lc8/Omq;

    iget-object v1, p0, Lc8/hsq;->sharedProducer:Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterProducer;

    invoke-virtual {v0, v1}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 109
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 162
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hsq;->done:Z

    .line 163
    invoke-virtual {p0}, Lc8/hsq;->drain()V

    .line 164
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 155
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    iput-object p1, p0, Lc8/hsq;->error:Ljava/lang/Throwable;

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/hsq;->done:Z

    .line 157
    invoke-virtual {p0}, Lc8/hsq;->drain()V

    .line 158
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lc8/hsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerOuterSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v3, p0, Lc8/hsq;->mapper:Lc8/Inq;

    invoke-interface {v3, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .local v2, "observable":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    iget-boolean v3, p0, Lc8/hsq;->cancelled:Z

    if-eqz v3, :cond_1

    .line 151
    .end local v2    # "observable":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    :cond_0
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lc8/hsq;->actual:Lc8/Omq;

    invoke-static {v0, v3, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "observable":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    :cond_1
    new-instance v1, Lc8/fsq;

    iget v3, p0, Lc8/hsq;->bufferSize:I

    invoke-direct {v1, p0, v3}, Lc8/fsq;-><init>(Lc8/hsq;I)V

    .line 140
    .local v1, "inner":Lc8/fsq;, "Lrx/internal/operators/OperatorEagerConcatMap$EagerInnerSubscriber<TR;>;"
    iget-object v4, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    monitor-enter v4

    .line 141
    :try_start_1
    iget-boolean v3, p0, Lc8/hsq;->cancelled:Z

    if-eqz v3, :cond_2

    .line 142
    monitor-exit v4

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 144
    :cond_2
    :try_start_2
    iget-object v3, p0, Lc8/hsq;->subscribers:Ljava/util/Queue;

    invoke-interface {v3, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    iget-boolean v3, p0, Lc8/hsq;->cancelled:Z

    if-nez v3, :cond_0

    .line 149
    invoke-virtual {v2, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 150
    invoke-virtual {p0}, Lc8/hsq;->drain()V

    goto :goto_0
.end method
