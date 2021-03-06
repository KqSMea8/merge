.class public final Lrx/subjects/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Lc8/Pmq;
.implements Lc8/Rlq;
.implements Lc8/Wlq;
.implements Lc8/Xlq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/PBq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lc8/Rlq",
        "<TT;>;",
        "Lc8/Wlq",
        "<TT;>;",
        "Lc8/Xlq;",
        "Lc8/Pmq;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field final nl:Lc8/cpq;
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

.field public final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Omq",
            "<-TT;>;>;"
        }
    .end annotation
.end field

.field final terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/hnq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILc8/hnq;)V
    .locals 2
    .param p1, "capacityHint"    # I
    .param p2, "onTerminated"    # Lc8/hnq;

    .prologue
    .line 143
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 144
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v1

    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->nl:Lc8/cpq;

    .line 145
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    .line 146
    if-eqz p2, :cond_0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 149
    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 150
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lc8/pzq;

    invoke-direct {v0, p1}, Lc8/pzq;-><init>(I)V

    .line 158
    .local v0, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    iput-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 159
    return-void

    .line 146
    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 150
    :cond_1
    new-instance v0, Lc8/Hyq;

    invoke-direct {v0, p1}, Lc8/Hyq;-><init>(I)V

    goto :goto_1

    .line 154
    :cond_2
    invoke-static {}, Lc8/vzq;->isUnsafeAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lc8/ozq;

    invoke-direct {v0}, Lc8/ozq;-><init>()V

    .restart local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_2
    goto :goto_1

    .end local v0    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Lc8/Gyq;

    invoke-direct {v0}, Lc8/Gyq;-><init>()V

    goto :goto_2
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 253
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p1, p0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 255
    invoke-virtual {p1, p0}, Lc8/Omq;->setProducer(Lc8/Xlq;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 115
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/subjects/UnicastSubject$State;->call(Lc8/Omq;)V

    return-void
.end method

.method checkTerminated(ZZLc8/Omq;)Z
    .locals 3
    .param p1, "done"    # Z
    .param p2, "empty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lc8/Omq",
            "<-TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p3, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v1, 0x1

    .line 358
    invoke-virtual {p3}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 374
    :goto_0
    return v1

    .line 362
    :cond_0
    if-eqz p1, :cond_2

    .line 363
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 364
    .local v0, "e":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 365
    iget-object v2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 366
    invoke-virtual {p3, v0}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 369
    :cond_1
    if-eqz p2, :cond_2

    .line 370
    invoke-virtual {p3}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 374
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method doTerminate()V
    .locals 3

    .prologue
    .line 381
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 382
    .local v1, "ref":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/functions/Action0;>;"
    if-eqz v1, :cond_0

    .line 383
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/hnq;

    .line 384
    .local v0, "a":Lc8/hnq;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 385
    invoke-interface {v0}, Lc8/hnq;->call()V

    .line 388
    .end local v0    # "a":Lc8/hnq;
    :cond_0
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 346
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 214
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_0

    .line 216
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 218
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 219
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_2

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 223
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    if-eqz v0, :cond_2

    .line 225
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 231
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 222
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 229
    :cond_2
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    goto :goto_1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 193
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v1, :cond_0

    .line 195
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 197
    iput-object p1, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    .line 198
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 199
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_2

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 203
    .local v0, "stillReplay":Z
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_2

    .line 205
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 211
    .end local v0    # "stillReplay":Z
    :cond_0
    :goto_1
    return-void

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 203
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 209
    :cond_2
    iget-object v1, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v3, :cond_1

    .line 164
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_2

    .line 165
    const/4 v2, 0x0

    .line 172
    .local v2, "stillReplay":Z
    monitor-enter p0

    .line 173
    :try_start_0
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v3, :cond_0

    .line 174
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    iget-object v4, p0, Lrx/subjects/UnicastSubject$State;->nl:Lc8/cpq;

    invoke-virtual {v4, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 175
    const/4 v2, 0x1

    .line 177
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 190
    .end local v2    # "stillReplay":Z
    :cond_1
    :goto_0
    return-void

    .line 177
    .restart local v2    # "stillReplay":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 183
    .end local v2    # "stillReplay":Z
    :cond_2
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Omq;

    .line 185
    .local v1, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_2
    invoke-virtual {v1, p1}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "ex":Ljava/lang/Throwable;
    invoke-static {v0, v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method replay()V
    .locals 14

    .prologue
    .line 264
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    monitor-enter p0

    .line 265
    :try_start_0
    iget-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v12, :cond_1

    .line 266
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 267
    monitor-exit p0

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 269
    :cond_1
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    iget-object v5, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 273
    .local v5, "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    :goto_1
    iget-object v12, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc8/Omq;

    .line 274
    .local v8, "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    const/4 v9, 0x0

    .line 275
    .local v9, "unlimited":Z
    if-eqz v8, :cond_5

    .line 276
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 277
    .local v0, "d":Z
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    .line 279
    .local v1, "empty":Z
    invoke-virtual {p0, v0, v1, v8}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZLc8/Omq;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 282
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->get()J

    move-result-wide v6

    .line 283
    .local v6, "r":J
    const-wide v12, 0x7fffffffffffffffL

    cmp-long v12, v6, v12

    if-nez v12, :cond_2

    const/4 v9, 0x1

    .line 284
    :goto_2
    const-wide/16 v2, 0x0

    .line 286
    .local v2, "e":J
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v12, v6, v12

    if-eqz v12, :cond_4

    .line 287
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 288
    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v10

    .line 289
    .local v10, "v":Ljava/lang/Object;
    if-nez v10, :cond_3

    const/4 v1, 0x1

    .line 290
    :goto_4
    invoke-virtual {p0, v0, v1, v8}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZLc8/Omq;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 293
    if-nez v1, :cond_4

    .line 296
    iget-object v12, p0, Lrx/subjects/UnicastSubject$State;->nl:Lc8/cpq;

    invoke-virtual {v12, v10}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 298
    .local v11, "value":Ljava/lang/Object;, "TT;"
    :try_start_1
    invoke-virtual {v8, v11}, Lc8/Omq;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 305
    const-wide/16 v12, 0x1

    sub-long/2addr v6, v12

    .line 306
    const-wide/16 v12, 0x1

    add-long/2addr v2, v12

    .line 307
    goto :goto_3

    .line 270
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .end local v6    # "r":J
    .end local v8    # "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .end local v9    # "unlimited":Z
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :catchall_0
    move-exception v12

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 283
    .restart local v0    # "d":Z
    .restart local v1    # "empty":Z
    .restart local v5    # "q":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Object;>;"
    .restart local v6    # "r":J
    .restart local v8    # "s":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    .restart local v9    # "unlimited":Z
    :cond_2
    const/4 v9, 0x0

    goto :goto_2

    .line 289
    .restart local v2    # "e":J
    .restart local v10    # "v":Ljava/lang/Object;
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 299
    .restart local v11    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v4

    .line 300
    .local v4, "ex":Ljava/lang/Throwable;
    invoke-interface {v5}, Ljava/util/Queue;->clear()V

    .line 301
    invoke-static {v4}, Lc8/fnq;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 302
    invoke-static {v4, v11}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v8, v12}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 308
    .end local v4    # "ex":Ljava/lang/Throwable;
    .end local v10    # "v":Ljava/lang/Object;
    .end local v11    # "value":Ljava/lang/Object;, "TT;"
    :cond_4
    if-nez v9, :cond_5

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-eqz v12, :cond_5

    .line 309
    neg-long v12, v2

    invoke-virtual {p0, v12, v13}, Lrx/subjects/UnicastSubject$State;->addAndGet(J)J

    .line 313
    .end local v0    # "d":Z
    .end local v1    # "empty":Z
    .end local v2    # "e":J
    .end local v6    # "r":J
    :cond_5
    monitor-enter p0

    .line 314
    :try_start_3
    iget-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    if-nez v12, :cond_7

    .line 315
    if-eqz v9, :cond_6

    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 316
    const/4 v12, 0x1

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    .line 318
    :cond_6
    const/4 v12, 0x0

    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 319
    monitor-exit p0

    goto/16 :goto_0

    .line 322
    :catchall_1
    move-exception v12

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v12

    .line 321
    :cond_7
    const/4 v12, 0x0

    :try_start_4
    iput-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 322
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_1
.end method

.method public request(J)V
    .locals 5
    .param p1, "n"    # J

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const-wide/16 v2, 0x0

    .line 235
    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_0
    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    .line 239
    invoke-static {p0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 240
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 242
    :cond_2
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    goto :goto_0
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .local p0, "this":Lrx/subjects/UnicastSubject$State;, "Lrx/subjects/UnicastSubject$State<TT;>;"
    const/4 v0, 0x1

    .line 332
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 334
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 335
    monitor-enter p0

    .line 336
    :try_start_0
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v0, :cond_0

    .line 337
    monitor-exit p0

    .line 342
    :goto_0
    return-void

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 340
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    goto :goto_0

    .line 340
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
