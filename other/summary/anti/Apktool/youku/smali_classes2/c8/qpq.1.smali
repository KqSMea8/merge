.class public final Lc8/qpq;
.super Lc8/Omq;
.source "OnSubscribeConcatMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/rpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConcatMapSubscriber"
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
.field volatile active:Z

.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final arbiter:Lc8/Jwq;

.field final delayErrorMode:I

.field volatile done:Z

.field final error:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final inner:Lc8/YBq;

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

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lc8/Omq;Lc8/Inq;II)V
    .locals 4
    .param p3, "prefetch"    # I
    .param p4, "delayErrorMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TR;>;",
            "Lc8/Inq",
            "<-TT;+",
            "Lc8/Vlq",
            "<+TR;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TR;>;"
    .local p2, "mapper":Lc8/Inq;, "Lrx/functions/Func1<-TT;+Lrx/Observable<+TR;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 121
    iput-object p1, p0, Lc8/qpq;->actual:Lc8/Omq;

    .line 122
    iput-object p2, p0, Lc8/qpq;->mapper:Lc8/Inq;

    .line 123
    iput p4, p0, Lc8/qpq;->delayErrorMode:I

    .line 124
    new-instance v1, Lc8/Jwq;

    invoke-direct {v1}, Lc8/Jwq;-><init>()V

    iput-object v1, p0, Lc8/qpq;->arbiter:Lc8/Jwq;

    .line 125
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v1, p0, Lc8/qpq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 126
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    .line 128
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v0, Lc8/hzq;

    invoke-direct {v0, p3}, Lc8/hzq;-><init>(I)V

    .line 133
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_0
    iput-object v0, p0, Lc8/qpq;->queue:Ljava/util/Queue;

    .line 134
    new-instance v1, Lc8/YBq;

    invoke-direct {v1}, Lc8/YBq;-><init>()V

    iput-object v1, p0, Lc8/qpq;->inner:Lc8/YBq;

    .line 135
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lc8/qpq;->request(J)V

    .line 136
    return-void

    .line 131
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    new-instance v0, Lc8/Eyq;

    invoke-direct {v0, p3}, Lc8/Eyq;-><init>(I)V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    goto :goto_0
.end method


# virtual methods
.method drain()V
    .locals 12

    .prologue
    .line 217
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v9, p0, Lc8/qpq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v9

    if-eqz v9, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget v0, p0, Lc8/qpq;->delayErrorMode:I

    .line 224
    .local v0, "delayErrorMode":I
    :cond_2
    :goto_1
    iget-object v9, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v9}, Lc8/Omq;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 228
    iget-boolean v9, p0, Lc8/qpq;->active:Z

    if-nez v9, :cond_8

    .line 229
    const/4 v9, 0x1

    if-ne v0, v9, :cond_3

    .line 230
    iget-object v9, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 231
    iget-object v9, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 232
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 233
    iget-object v9, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v9, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 239
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_3
    iget-boolean v4, p0, Lc8/qpq;->done:Z

    .line 240
    .local v4, "mainDone":Z
    iget-object v9, p0, Lc8/qpq;->queue:Ljava/util/Queue;

    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v8

    .line 241
    .local v8, "v":Ljava/lang/Object;
    if-nez v8, :cond_4

    const/4 v1, 0x1

    .line 243
    .local v1, "empty":Z
    :goto_2
    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    .line 244
    iget-object v9, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v9}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v2

    .line 245
    .restart local v2    # "ex":Ljava/lang/Throwable;
    if-nez v2, :cond_5

    .line 246
    iget-object v9, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v9}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 241
    .end local v1    # "empty":Z
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 248
    .restart local v1    # "empty":Z
    .restart local v2    # "ex":Ljava/lang/Throwable;
    :cond_5
    invoke-static {v2}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 249
    iget-object v9, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v9, v2}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 254
    .end local v2    # "ex":Ljava/lang/Throwable;
    :cond_6
    if-nez v1, :cond_8

    .line 259
    :try_start_0
    iget-object v9, p0, Lc8/qpq;->mapper:Lc8/Inq;

    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v10

    invoke-virtual {v10, v8}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .local v7, "source":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    if-nez v7, :cond_7

    .line 267
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "The source returned by the mapper was null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Lc8/qpq;->drainError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 260
    .end local v7    # "source":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    :catch_0
    move-exception v5

    .line 261
    .local v5, "mapperError":Ljava/lang/Throwable;
    invoke-static {v5}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {p0, v5}, Lc8/qpq;->drainError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 271
    .end local v5    # "mapperError":Ljava/lang/Throwable;
    .restart local v7    # "source":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    :cond_7
    invoke-static {}, Lc8/Vlq;->empty()Lc8/Vlq;

    move-result-object v9

    if-eq v7, v9, :cond_a

    .line 273
    instance-of v9, v7, Lc8/oyq;

    if-eqz v9, :cond_9

    move-object v6, v7

    .line 274
    check-cast v6, Lc8/oyq;

    .line 276
    .local v6, "scalarSource":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<+TR;>;"
    const/4 v9, 0x1

    iput-boolean v9, p0, Lc8/qpq;->active:Z

    .line 278
    iget-object v9, p0, Lc8/qpq;->arbiter:Lc8/Jwq;

    new-instance v10, Lc8/opq;

    invoke-virtual {v6}, Lc8/oyq;->get()Ljava/lang/Object;

    move-result-object v11

    invoke-direct {v10, v11, p0}, Lc8/opq;-><init>(Ljava/lang/Object;Lc8/qpq;)V

    invoke-virtual {v9, v10}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 291
    .end local v6    # "scalarSource":Lc8/oyq;, "Lrx/internal/util/ScalarSynchronousObservable<+TR;>;"
    :goto_3
    const-wide/16 v10, 0x1

    invoke-virtual {p0, v10, v11}, Lc8/qpq;->request(J)V

    .line 298
    .end local v1    # "empty":Z
    .end local v4    # "mainDone":Z
    .end local v7    # "source":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    .end local v8    # "v":Ljava/lang/Object;
    :cond_8
    iget-object v9, p0, Lc8/qpq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v9

    if-nez v9, :cond_2

    goto/16 :goto_0

    .line 280
    .restart local v1    # "empty":Z
    .restart local v4    # "mainDone":Z
    .restart local v7    # "source":Lc8/Vlq;, "Lrx/Observable<+TR;>;"
    .restart local v8    # "v":Ljava/lang/Object;
    :cond_9
    new-instance v3, Lc8/ppq;

    invoke-direct {v3, p0}, Lc8/ppq;-><init>(Lc8/qpq;)V

    .line 281
    .local v3, "innerSubscriber":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    iget-object v9, p0, Lc8/qpq;->inner:Lc8/YBq;

    invoke-virtual {v9, v3}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 283
    invoke-virtual {v3}, Lc8/ppq;->isUnsubscribed()Z

    move-result v9

    if-nez v9, :cond_0

    .line 284
    const/4 v9, 0x1

    iput-boolean v9, p0, Lc8/qpq;->active:Z

    .line 286
    invoke-virtual {v7, v3}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    goto :goto_3

    .line 293
    .end local v3    # "innerSubscriber":Lc8/ppq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapInnerSubscriber<TT;TR;>;"
    :cond_a
    const-wide/16 v10, 0x1

    invoke-virtual {p0, v10, v11}, Lc8/qpq;->request(J)V

    goto/16 :goto_1
.end method

.method drainError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "mapperError"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-virtual {p0}, Lc8/qpq;->unsubscribe()V

    .line 307
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 309
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    iget-object v1, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 315
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    invoke-virtual {p0, p1}, Lc8/qpq;->pluginError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method innerCompleted(J)V
    .locals 3
    .param p1, "produced"    # J

    .prologue
    .line 205
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lc8/qpq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1, p2}, Lc8/Jwq;->produced(J)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/qpq;->active:Z

    .line 209
    invoke-virtual {p0}, Lc8/qpq;->drain()V

    .line 210
    return-void
.end method

.method innerError(Ljava/lang/Throwable;J)V
    .locals 4
    .param p1, "innerError"    # Ljava/lang/Throwable;
    .param p2, "produced"    # J

    .prologue
    .line 186
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lc8/qpq;->pluginError(Ljava/lang/Throwable;)V

    .line 202
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v1, p0, Lc8/qpq;->delayErrorMode:I

    if-nez v1, :cond_2

    .line 190
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 191
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 194
    :cond_1
    invoke-virtual {p0}, Lc8/qpq;->unsubscribe()V

    goto :goto_0

    .line 196
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v1, p2, v2

    if-eqz v1, :cond_3

    .line 197
    iget-object v1, p0, Lc8/qpq;->arbiter:Lc8/Jwq;

    invoke-virtual {v1, p2, p3}, Lc8/Jwq;->produced(J)V

    .line 199
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lc8/qpq;->active:Z

    .line 200
    invoke-virtual {p0}, Lc8/qpq;->drain()V

    goto :goto_0
.end method

.method innerNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "value":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 183
    return-void
.end method

.method public onCompleted()V
    .locals 1

    .prologue
    .line 168
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qpq;->done:Z

    .line 169
    invoke-virtual {p0}, Lc8/qpq;->drain()V

    .line 170
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "mainError"    # Ljava/lang/Throwable;

    .prologue
    .line 150
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, p1}, Lrx/internal/util/ExceptionsUtils;->addThrowable(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lc8/qpq;->done:Z

    .line 152
    iget v1, p0, Lc8/qpq;->delayErrorMode:I

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p0, Lc8/qpq;->error:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1}, Lrx/internal/util/ExceptionsUtils;->terminate(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    .line 154
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0}, Lrx/internal/util/ExceptionsUtils;->isTerminated(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lc8/qpq;->actual:Lc8/Omq;

    invoke-virtual {v1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 157
    :cond_0
    iget-object v1, p0, Lc8/qpq;->inner:Lc8/YBq;

    invoke-virtual {v1}, Lc8/YBq;->unsubscribe()V

    .line 164
    .end local v0    # "ex":Ljava/lang/Throwable;
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lc8/qpq;->drain()V

    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {p0, p1}, Lc8/qpq;->pluginError(Ljava/lang/Throwable;)V

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
    .line 140
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/qpq;->queue:Ljava/util/Queue;

    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    invoke-virtual {v1, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    invoke-virtual {p0}, Lc8/qpq;->unsubscribe()V

    .line 142
    new-instance v0, Lrx/exceptions/MissingBackpressureException;

    invoke-direct {v0}, Lrx/exceptions/MissingBackpressureException;-><init>()V

    invoke-virtual {p0, v0}, Lc8/qpq;->onError(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lc8/qpq;->drain()V

    goto :goto_0
.end method

.method pluginError(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 213
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 214
    return-void
.end method

.method requestMore(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lc8/qpq;, "Lrx/internal/operators/OnSubscribeConcatMap$ConcatMapSubscriber<TT;TR;>;"
    const-wide/16 v2, 0x0

    .line 173
    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    .line 174
    iget-object v0, p0, Lc8/qpq;->arbiter:Lc8/Jwq;

    invoke-virtual {v0, p1, p2}, Lc8/Jwq;->request(J)V

    .line 179
    :cond_0
    return-void

    .line 176
    :cond_1
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
