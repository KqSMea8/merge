.class public final Lc8/cwq;
.super Lc8/Omq;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ExactSubscriber"
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

.field emitting:Z

.field final guard:Ljava/lang/Object;

.field queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile state:Lc8/gwq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gwq",
            "<TT;>;"
        }
    .end annotation
.end field

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
    .line 118
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p2, "child":Lc8/Omq;, "Lrx/Subscriber<-Lrx/Observable<TT;>;>;"
    iput-object p1, p0, Lc8/cwq;->this$0:Lc8/hwq;

    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 119
    new-instance v0, Lc8/qAq;

    invoke-direct {v0, p2}, Lc8/qAq;-><init>(Lc8/Omq;)V

    iput-object v0, p0, Lc8/cwq;->child:Lc8/Omq;

    .line 120
    iput-object p3, p0, Lc8/cwq;->worker:Lc8/Zlq;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    .line 122
    invoke-static {}, Lc8/gwq;->empty()Lc8/gwq;

    move-result-object v0

    iput-object v0, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 123
    new-instance v0, Lc8/awq;

    invoke-direct {v0, p0, p1}, Lc8/awq;-><init>(Lc8/cwq;Lc8/hwq;)V

    invoke-static {v0}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v0

    invoke-virtual {p2, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 132
    return-void
.end method


# virtual methods
.method complete()V
    .locals 2

    .prologue
    .line 265
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    iget-object v0, v1, Lc8/gwq;->consumer:Lc8/Wlq;

    .line 266
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    invoke-virtual {v1}, Lc8/gwq;->clear()Lc8/gwq;

    move-result-object v1

    iput-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    invoke-interface {v0}, Lc8/Wlq;->onCompleted()V

    .line 270
    :cond_0
    iget-object v1, p0, Lc8/cwq;->child:Lc8/Omq;

    invoke-virtual {v1}, Lc8/Omq;->onCompleted()V

    .line 271
    invoke-virtual {p0}, Lc8/cwq;->unsubscribe()V

    .line 272
    return-void
.end method

.method drain(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "queue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    if-nez p1, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 184
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "o":Ljava/lang/Object;
    sget-object v5, Lc8/hwq;->NEXT_SUBJECT:Ljava/lang/Object;

    if-ne v1, v5, :cond_3

    .line 186
    invoke-virtual {p0}, Lc8/cwq;->replaceSubject()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 187
    goto :goto_0

    .line 190
    :cond_3
    sget-object v5, Lc8/hwq;->NL:Lc8/cpq;

    invoke-virtual {v5, v1}, Lc8/cpq;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 191
    sget-object v4, Lc8/hwq;->NL:Lc8/cpq;

    invoke-virtual {v4, v1}, Lc8/cpq;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {p0, v4}, Lc8/cwq;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 194
    :cond_4
    sget-object v5, Lc8/hwq;->NL:Lc8/cpq;

    invoke-virtual {v5, v1}, Lc8/cpq;->isCompleted(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 195
    invoke-virtual {p0}, Lc8/cwq;->complete()V

    goto :goto_0

    .line 199
    :cond_5
    move-object v2, v1

    .line 200
    .local v2, "t":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v2}, Lc8/cwq;->emitValue(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 201
    goto :goto_0
.end method

.method emitValue(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 225
    .local v0, "s":Lc8/gwq;, "Lrx/internal/operators/OperatorWindowWithTime$State<TT;>;"
    iget-object v1, v0, Lc8/gwq;->consumer:Lc8/Wlq;

    if-nez v1, :cond_1

    .line 226
    invoke-virtual {p0}, Lc8/cwq;->replaceSubject()Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    const/4 v1, 0x0

    .line 239
    :goto_0
    return v1

    .line 229
    :cond_0
    iget-object v0, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 231
    :cond_1
    iget-object v1, v0, Lc8/gwq;->consumer:Lc8/Wlq;

    invoke-interface {v1, p1}, Lc8/Wlq;->onNext(Ljava/lang/Object;)V

    .line 232
    iget v1, v0, Lc8/gwq;->count:I

    iget-object v2, p0, Lc8/cwq;->this$0:Lc8/hwq;

    iget v2, v2, Lc8/hwq;->size:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 233
    iget-object v1, v0, Lc8/gwq;->consumer:Lc8/Wlq;

    invoke-interface {v1}, Lc8/Wlq;->onCompleted()V

    .line 234
    invoke-virtual {v0}, Lc8/gwq;->clear()Lc8/gwq;

    move-result-object v0

    .line 238
    :goto_1
    iput-object v0, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 239
    const/4 v1, 0x1

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {v0}, Lc8/gwq;->next()Lc8/gwq;

    move-result-object v0

    goto :goto_1
.end method

.method error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    iget-object v0, v1, Lc8/gwq;->consumer:Lc8/Wlq;

    .line 257
    .local v0, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    iget-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    invoke-virtual {v1}, Lc8/gwq;->clear()Lc8/gwq;

    move-result-object v1

    iput-object v1, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 258
    if-eqz v0, :cond_0

    .line 259
    invoke-interface {v0, p1}, Lc8/Wlq;->onError(Ljava/lang/Throwable;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lc8/cwq;->child:Lc8/Omq;

    invoke-virtual {v1, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 262
    invoke-virtual {p0}, Lc8/cwq;->unsubscribe()V

    .line 263
    return-void
.end method

.method nextWindow()V
    .locals 5

    .prologue
    .line 308
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 309
    :try_start_0
    iget-boolean v2, p0, Lc8/cwq;->emitting:Z

    if-eqz v2, :cond_2

    .line 310
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 311
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 313
    :cond_0
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    sget-object v4, Lc8/hwq;->NEXT_SUBJECT:Ljava/lang/Object;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    monitor-exit v3

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 317
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    const/4 v1, 0x0

    .line 320
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0}, Lc8/cwq;->replaceSubject()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 340
    if-nez v1, :cond_1

    .line 341
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 317
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 325
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 326
    :try_start_5
    iget-object v0, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 327
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 328
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 329
    const/4 v1, 0x1

    .line 330
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 340
    if-nez v1, :cond_1

    .line 341
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 332
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 333
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 335
    :try_start_8
    invoke-virtual {p0, v0}, Lc8/cwq;->drain(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 340
    if-nez v1, :cond_1

    .line 341
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 343
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 333
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 340
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 341
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 342
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lc8/cwq;->emitting:Z

    .line 343
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onCompleted()V
    .locals 5

    .prologue
    .line 276
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 277
    :try_start_0
    iget-boolean v2, p0, Lc8/cwq;->emitting:Z

    if-eqz v2, :cond_1

    .line 278
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 279
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 281
    :cond_0
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    sget-object v4, Lc8/hwq;->NL:Lc8/cpq;

    invoke-virtual {v4}, Lc8/cpq;->completed()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    monitor-exit v3

    .line 295
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v1, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 285
    .local v1, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 286
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 287
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 289
    :try_start_1
    invoke-virtual {p0, v1}, Lc8/cwq;->drain(Ljava/util/List;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    invoke-virtual {p0}, Lc8/cwq;->complete()V

    goto :goto_0

    .line 287
    .end local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 290
    .restart local v1    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v0}, Lc8/cwq;->error(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 244
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v1, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-boolean v0, p0, Lc8/cwq;->emitting:Z

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lc8/hwq;->NL:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 248
    monitor-exit v1

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/cwq;->emitting:Z

    .line 252
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-virtual {p0, p1}, Lc8/cwq;->error(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 142
    :try_start_0
    iget-boolean v2, p0, Lc8/cwq;->emitting:Z

    if-eqz v2, :cond_2

    .line 143
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    if-nez v2, :cond_0

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 146
    :cond_0
    iget-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    monitor-exit v3

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 149
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 150
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    const/4 v1, 0x0

    .line 153
    .local v1, "skipFinal":Z
    :try_start_1
    invoke-virtual {p0, p1}, Lc8/cwq;->emitValue(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 173
    if-nez v1, :cond_1

    .line 174
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 150
    .end local v1    # "skipFinal":Z
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 159
    .restart local v1    # "skipFinal":Z
    :cond_3
    :try_start_4
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 160
    :try_start_5
    iget-object v0, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 161
    .local v0, "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez v0, :cond_4

    .line 162
    const/4 v2, 0x0

    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 163
    const/4 v1, 0x1

    .line 164
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 173
    if-nez v1, :cond_1

    .line 174
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 166
    :cond_4
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lc8/cwq;->queue:Ljava/util/List;

    .line 167
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 168
    :try_start_8
    invoke-virtual {p0, v0}, Lc8/cwq;->drain(Ljava/util/List;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-result v2

    if-nez v2, :cond_3

    .line 173
    if-nez v1, :cond_1

    .line 174
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v2, 0x0

    :try_start_9
    iput-boolean v2, p0, Lc8/cwq;->emitting:Z

    .line 176
    monitor-exit v3

    goto :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2

    .line 167
    .end local v0    # "localQueue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :catchall_4
    move-exception v2

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 173
    :catchall_5
    move-exception v2

    if-nez v1, :cond_5

    .line 174
    iget-object v3, p0, Lc8/cwq;->guard:Ljava/lang/Object;

    monitor-enter v3

    .line 175
    const/4 v4, 0x0

    :try_start_c
    iput-boolean v4, p0, Lc8/cwq;->emitting:Z

    .line 176
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_5
    throw v2

    :catchall_6
    move-exception v2

    :try_start_d
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    throw v2
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 136
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lc8/cwq;->request(J)V

    .line 137
    return-void
.end method

.method replaceSubject()Z
    .locals 3

    .prologue
    .line 208
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v2, p0, Lc8/cwq;->state:Lc8/gwq;

    iget-object v1, v2, Lc8/gwq;->consumer:Lc8/Wlq;

    .line 209
    .local v1, "s":Lc8/Wlq;, "Lrx/Observer<TT;>;"
    if-eqz v1, :cond_0

    .line 210
    invoke-interface {v1}, Lc8/Wlq;->onCompleted()V

    .line 213
    :cond_0
    iget-object v2, p0, Lc8/cwq;->child:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lc8/cwq;->state:Lc8/gwq;

    invoke-virtual {v2}, Lc8/gwq;->clear()Lc8/gwq;

    move-result-object v2

    iput-object v2, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 215
    invoke-virtual {p0}, Lc8/cwq;->unsubscribe()V

    .line 216
    const/4 v2, 0x0

    .line 221
    :goto_0
    return v2

    .line 218
    :cond_1
    invoke-static {}, Lc8/PBq;->create()Lc8/PBq;

    move-result-object v0

    .line 219
    .local v0, "bus":Lc8/PBq;, "Lrx/subjects/UnicastSubject<TT;>;"
    iget-object v2, p0, Lc8/cwq;->state:Lc8/gwq;

    invoke-virtual {v2, v0, v0}, Lc8/gwq;->create(Lc8/Wlq;Lc8/Vlq;)Lc8/gwq;

    move-result-object v2

    iput-object v2, p0, Lc8/cwq;->state:Lc8/gwq;

    .line 220
    iget-object v2, p0, Lc8/cwq;->child:Lc8/Omq;

    invoke-virtual {v2, v0}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 221
    const/4 v2, 0x1

    goto :goto_0
.end method

.method scheduleExact()V
    .locals 7

    .prologue
    .line 298
    .local p0, "this":Lc8/cwq;, "Lrx/internal/operators/OperatorWindowWithTime<TT;>.ExactSubscriber;"
    iget-object v0, p0, Lc8/cwq;->worker:Lc8/Zlq;

    new-instance v1, Lc8/bwq;

    invoke-direct {v1, p0}, Lc8/bwq;-><init>(Lc8/cwq;)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lc8/cwq;->this$0:Lc8/hwq;

    iget-wide v4, v4, Lc8/hwq;->timespan:J

    iget-object v6, p0, Lc8/cwq;->this$0:Lc8/hwq;

    iget-object v6, v6, Lc8/hwq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lc8/Zlq;->schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 306
    return-void
.end method
