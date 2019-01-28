.class public final Lc8/osq;
.super Lc8/Omq;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/qsq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/nsq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-",
            "Lc8/Xzq",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lc8/psq",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TK;>;"
        }
    .end annotation
.end field

.field final producer:Lc8/msq;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/Xzq",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field public final s:Lc8/Jwq;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation
.end field

.field final valueSelector:Lc8/Inq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Inq",
            "<-TT;+TV;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc8/osq;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc8/Omq;Lc8/Inq;Lc8/Inq;IZLc8/Inq;)V
    .locals 4
    .param p4, "bufferSize"    # I
    .param p5, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Xzq",
            "<TK;TV;>;>;",
            "Lc8/Inq",
            "<-TT;+TK;>;",
            "Lc8/Inq",
            "<-TT;+TV;>;IZ",
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "keySelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TK;>;"
    .local p3, "valueSelector":Lc8/Inq;, "Lrx/functions/Func1<-TT;+TV;>;"
    .local p6, "mapFactory":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 141
    iput-object p1, p0, Lc8/osq;->actual:Lc8/Omq;

    .line 142
    iput-object p2, p0, Lc8/osq;->keySelector:Lc8/Inq;

    .line 143
    iput-object p3, p0, Lc8/osq;->valueSelector:Lc8/Inq;

    .line 144
    iput p4, p0, Lc8/osq;->bufferSize:I

    .line 145
    iput-boolean p5, p0, Lc8/osq;->delayError:Z

    .line 146
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/osq;->queue:Ljava/util/Queue;

    .line 147
    new-instance v0, Lc8/Jwq;

    invoke-direct {v0}, Lc8/Jwq;-><init>()V

    iput-object v0, p0, Lc8/osq;->s:Lc8/Jwq;

    .line 148
    iget-object v0, p0, Lc8/osq;->s:Lc8/Jwq;

    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Lc8/Jwq;->request(J)V

    .line 149
    new-instance v0, Lc8/msq;

    invoke-direct {v0, p0}, Lc8/msq;-><init>(Lc8/osq;)V

    iput-object v0, p0, Lc8/osq;->producer:Lc8/msq;

    .line 150
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc8/osq;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/osq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/osq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    if-nez p6, :cond_0

    .line 155
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc8/osq;->groups:Ljava/util/Map;

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    .line 161
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    .line 159
    new-instance v0, Lc8/nsq;

    iget-object v1, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    invoke-direct {v0, v1}, Lc8/nsq;-><init>(Ljava/util/Queue;)V

    invoke-direct {p0, p6, v0}, Lc8/osq;->createMap(Lc8/Inq;Lc8/inq;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lc8/osq;->groups:Ljava/util/Map;

    goto :goto_0
.end method

.method private createMap(Lc8/Inq;Lc8/inq;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Inq",
            "<",
            "Lc8/inq",
            "<TK;>;",
            "Ljava/util/Map",
            "<TK;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lc8/inq",
            "<TK;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lc8/psq",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 179
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "mapFactory":Lc8/Inq;, "Lrx/functions/Func1<Lrx/functions/Action1<TK;>;Ljava/util/Map<TK;Ljava/lang/Object;>;>;"
    .local p2, "evictionAction":Lc8/inq;, "Lrx/functions/Action1<TK;>;"
    invoke-interface {p1, p2}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .prologue
    .line 294
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v0, p0, Lc8/osq;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lc8/osq;->unsubscribe()V

    .line 299
    :cond_0
    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 303
    .local v0, "mapKey":Ljava/lang/Object;
    :goto_0
    iget-object v1, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 304
    iget-object v1, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {p0}, Lc8/osq;->unsubscribe()V

    .line 308
    :cond_0
    return-void

    .line 302
    .end local v0    # "mapKey":Ljava/lang/Object;
    :cond_1
    sget-object v0, Lc8/osq;->NULL_KEY:Ljava/lang/Object;

    goto :goto_0
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
            "Lc8/Xzq",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p3, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p4, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    const/4 v1, 0x1

    .line 380
    if-eqz p1, :cond_1

    .line 381
    iget-object v0, p0, Lc8/osq;->error:Ljava/lang/Throwable;

    .line 382
    .local v0, "err":Ljava/lang/Throwable;
    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0, p3, p4, v0}, Lc8/osq;->errorAll(Lc8/Omq;Ljava/util/Queue;Ljava/lang/Throwable;)V

    .line 391
    .end local v0    # "err":Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 386
    .restart local v0    # "err":Ljava/lang/Throwable;
    :cond_0
    if-eqz p2, :cond_1

    .line 387
    iget-object v2, p0, Lc8/osq;->actual:Lc8/Omq;

    invoke-virtual {v2}, Lc8/Omq;->onCompleted()V

    goto :goto_0

    .line 391
    .end local v0    # "err":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method drain()V
    .locals 12

    .prologue
    .line 311
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v10, p0, Lc8/osq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v10

    if-eqz v10, :cond_1

    .line 361
    :cond_0
    return-void

    .line 315
    :cond_1
    const/4 v5, 0x1

    .line 317
    .local v5, "missed":I
    iget-object v6, p0, Lc8/osq;->queue:Ljava/util/Queue;

    .line 318
    .local v6, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lc8/osq;->actual:Lc8/Omq;

    .line 322
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :goto_0
    iget-boolean v10, p0, Lc8/osq;->done:Z

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    invoke-virtual {p0, v10, v11, v0, v6}, Lc8/osq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 326
    iget-object v10, p0, Lc8/osq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    .line 327
    .local v8, "r":J
    const-wide/16 v2, 0x0

    .line 329
    .local v2, "e":J
    :goto_1
    cmp-long v10, v2, v8

    if-eqz v10, :cond_3

    .line 330
    iget-boolean v1, p0, Lc8/osq;->done:Z

    .line 332
    .local v1, "d":Z
    invoke-interface {v6}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/Xzq;

    .line 334
    .local v7, "t":Lc8/Xzq;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    if-nez v7, :cond_2

    const/4 v4, 0x1

    .line 336
    .local v4, "empty":Z
    :goto_2
    invoke-virtual {p0, v1, v4, v0, v6}, Lc8/osq;->checkTerminated(ZZLc8/Omq;Ljava/util/Queue;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 340
    if-nez v4, :cond_3

    .line 344
    invoke-virtual {v0, v7}, Lc8/Omq;->onNext(Ljava/lang/Object;)V

    .line 346
    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    .line 347
    goto :goto_1

    .line 334
    .end local v4    # "empty":Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 349
    .end local v1    # "d":Z
    .end local v7    # "t":Lc8/Xzq;, "Lrx/observables/GroupedObservable<TK;TV;>;"
    :cond_3
    const-wide/16 v10, 0x0

    cmp-long v10, v2, v10

    if-eqz v10, :cond_5

    .line 350
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v10, v8, v10

    if-eqz v10, :cond_4

    .line 351
    iget-object v10, p0, Lc8/osq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v10, v2, v3}, Lc8/ioq;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 353
    :cond_4
    iget-object v10, p0, Lc8/osq;->s:Lc8/Jwq;

    invoke-virtual {v10, v2, v3}, Lc8/Jwq;->request(J)V

    .line 356
    :cond_5
    iget-object v10, p0, Lc8/osq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v11, v5

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v5

    .line 357
    if-eqz v5, :cond_0

    goto :goto_0
.end method

.method errorAll(Lc8/Omq;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 4
    .param p3, "ex"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Lc8/Xzq",
            "<TK;TV;>;>;",
            "Ljava/util/Queue",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    .local p2, "q":Ljava/util/Queue;, "Ljava/util/Queue<*>;"
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 365
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 366
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;>;"
    iget-object v3, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 367
    iget-object v3, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    if-eqz v3, :cond_0

    .line 368
    iget-object v3, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->clear()V

    .line 371
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/psq;

    .line 372
    .local v0, "e":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0, p3}, Lc8/psq;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 375
    .end local v0    # "e":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_1
    invoke-virtual {p1, p3}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 376
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 265
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v2, p0, Lc8/osq;->done:Z

    if-eqz v2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v2, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/psq;

    .line 270
    .local v0, "e":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    invoke-virtual {v0}, Lc8/psq;->onComplete()V

    goto :goto_1

    .line 272
    .end local v0    # "e":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    :cond_1
    iget-object v2, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 273
    iget-object v2, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 277
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lc8/osq;->done:Z

    .line 278
    iget-object v2, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 279
    invoke-virtual {p0}, Lc8/osq;->drain()V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 253
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-boolean v0, p0, Lc8/osq;->done:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-static {p1}, Lc8/WAq;->onError(Ljava/lang/Throwable;)V

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    iput-object p1, p0, Lc8/osq;->error:Ljava/lang/Throwable;

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/osq;->done:Z

    .line 259
    iget-object v0, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 260
    invoke-virtual {p0}, Lc8/osq;->drain()V

    goto :goto_0
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v10, p0, Lc8/osq;->done:Z

    if-eqz v10, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v8, p0, Lc8/osq;->queue:Ljava/util/Queue;

    .line 194
    .local v8, "q":Ljava/util/Queue;, "Ljava/util/Queue<Lrx/observables/GroupedObservable<TK;TV;>;>;"
    iget-object v0, p0, Lc8/osq;->actual:Lc8/Omq;

    .line 198
    .local v0, "a":Lc8/Omq;, "Lrx/Subscriber<-Lrx/observables/GroupedObservable<TK;TV;>;>;"
    :try_start_0
    iget-object v10, p0, Lc8/osq;->keySelector:Lc8/Inq;

    invoke-interface {v10, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 205
    .local v5, "key":Ljava/lang/Object;, "TK;"
    const/4 v7, 0x1

    .line 206
    .local v7, "notNew":Z
    if-eqz v5, :cond_4

    move-object v6, v5

    .line 207
    .local v6, "mapKey":Ljava/lang/Object;
    :goto_1
    iget-object v10, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc8/psq;

    .line 208
    .local v4, "group":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    if-nez v4, :cond_2

    .line 211
    iget-object v10, p0, Lc8/osq;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v10

    if-nez v10, :cond_0

    .line 212
    iget v10, p0, Lc8/osq;->bufferSize:I

    iget-boolean v11, p0, Lc8/osq;->delayError:Z

    invoke-static {v5, v10, p0, v11}, Lc8/psq;->createWith(Ljava/lang/Object;ILc8/osq;Z)Lc8/psq;

    move-result-object v4

    .line 213
    iget-object v10, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v10, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v10, p0, Lc8/osq;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 217
    const/4 v7, 0x0

    .line 218
    invoke-interface {v8, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0}, Lc8/osq;->drain()V

    .line 227
    :cond_2
    :try_start_1
    iget-object v10, p0, Lc8/osq;->valueSelector:Lc8/Inq;

    invoke-interface {v10, p1}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 234
    .local v9, "v":Ljava/lang/Object;, "TV;"
    invoke-virtual {v4, v9}, Lc8/psq;->onNext(Ljava/lang/Object;)V

    .line 236
    iget-object v10, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    if-eqz v10, :cond_5

    .line 238
    :cond_3
    :goto_2
    iget-object v10, p0, Lc8/osq;->evictedKeys:Ljava/util/Queue;

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .local v1, "evictedKey":Ljava/lang/Object;, "TK;"
    if-eqz v1, :cond_5

    .line 239
    iget-object v10, p0, Lc8/osq;->groups:Ljava/util/Map;

    invoke-interface {v10, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/psq;

    .line 240
    .local v3, "g":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    if-eqz v3, :cond_3

    .line 241
    invoke-virtual {v3}, Lc8/psq;->onComplete()V

    goto :goto_2

    .line 199
    .end local v1    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v3    # "g":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .end local v4    # "group":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "mapKey":Ljava/lang/Object;
    .end local v7    # "notNew":Z
    .end local v9    # "v":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v2

    .line 200
    .local v2, "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lc8/osq;->unsubscribe()V

    .line 201
    invoke-virtual {p0, v0, v8, v2}, Lc8/osq;->errorAll(Lc8/Omq;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 206
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "notNew":Z
    :cond_4
    sget-object v6, Lc8/osq;->NULL_KEY:Ljava/lang/Object;

    goto :goto_1

    .line 228
    .restart local v4    # "group":Lc8/psq;, "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<TK;TV;>;"
    .restart local v6    # "mapKey":Ljava/lang/Object;
    :catch_1
    move-exception v2

    .line 229
    .restart local v2    # "ex":Ljava/lang/Throwable;
    invoke-virtual {p0}, Lc8/osq;->unsubscribe()V

    .line 230
    invoke-virtual {p0, v0, v8, v2}, Lc8/osq;->errorAll(Lc8/Omq;Ljava/util/Queue;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    .end local v2    # "ex":Ljava/lang/Throwable;
    .restart local v9    # "v":Ljava/lang/Object;, "TV;"
    :cond_5
    if-eqz v7, :cond_0

    .line 247
    iget-object v10, p0, Lc8/osq;->s:Lc8/Jwq;

    const-wide/16 v12, 0x1

    invoke-virtual {v10, v12, v13}, Lc8/Jwq;->request(J)V

    goto/16 :goto_0
.end method

.method public requestMore(J)V
    .locals 3
    .param p1, "n"    # J

    .prologue
    .line 283
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 284
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

    .line 287
    :cond_0
    iget-object v0, p0, Lc8/osq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lc8/ioq;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 288
    invoke-virtual {p0}, Lc8/osq;->drain()V

    .line 289
    return-void
.end method

.method public setProducer(Lc8/Xlq;)V
    .locals 1
    .param p1, "s"    # Lc8/Xlq;

    .prologue
    .line 184
    .local p0, "this":Lc8/osq;, "Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber<TT;TK;TV;>;"
    iget-object v0, p0, Lc8/osq;->s:Lc8/Jwq;

    invoke-virtual {v0, p1}, Lc8/Jwq;->setProducer(Lc8/Xlq;)V

    .line 185
    return-void
.end method
