.class public final Lc8/Atq;
.super Lc8/Vzq;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$SizeBoundReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;,
        Lrx/internal/operators/OperatorReplay$Node;,
        Lrx/internal/operators/OperatorReplay$UnboundedReplayBuffer;,
        Lc8/xtq;,
        Lrx/internal/operators/OperatorReplay$InnerProducer;,
        Lc8/ztq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vzq",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final DEFAULT_UNBOUNDED_FACTORY:Lc8/Hnq;


# instance fields
.field final bufferFactory:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/xtq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final current:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/ztq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lc8/otq;

    invoke-direct {v0}, Lc8/otq;-><init>()V

    sput-object v0, Lc8/Atq;->DEFAULT_UNBOUNDED_FACTORY:Lc8/Hnq;

    return-void
.end method

.method private constructor <init>(Lc8/Rlq;Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/Hnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/ztq",
            "<TT;>;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/xtq",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lc8/Atq;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    .local p4, "bufferFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    invoke-direct {p0, p1}, Lc8/Vzq;-><init>(Lc8/Rlq;)V

    .line 252
    iput-object p2, p0, Lc8/Atq;->source:Lc8/Vlq;

    .line 253
    iput-object p3, p0, Lc8/Atq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 254
    iput-object p4, p0, Lc8/Atq;->bufferFactory:Lc8/Hnq;

    .line 255
    return-void
.end method

.method public static create(Lc8/Vlq;)Lc8/Vzq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    sget-object v0, Lc8/Atq;->DEFAULT_UNBOUNDED_FACTORY:Lc8/Hnq;

    invoke-static {p0, v0}, Lc8/Atq;->create(Lc8/Vlq;Lc8/Hnq;)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Vlq;I)Lc8/Vzq;
    .locals 1
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;I)",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    .line 146
    invoke-static {p0}, Lc8/Atq;->create(Lc8/Vlq;)Lc8/Vzq;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lc8/utq;

    invoke-direct {v0, p1}, Lc8/utq;-><init>(I)V

    invoke-static {p0, v0}, Lc8/Atq;->create(Lc8/Vlq;Lc8/Hnq;)Lc8/Vzq;

    move-result-object v0

    goto :goto_0
.end method

.method public static create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;)Lc8/Vzq;
    .locals 7
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const v6, 0x7fffffff

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lc8/Atq;->create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;I)Lc8/Vzq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Vlq;JLjava/util/concurrent/TimeUnit;Lc8/amq;I)Lc8/Vzq;
    .locals 3
    .param p1, "maxAge"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;
    .param p5, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/amq;",
            "I)",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 184
    .local v0, "maxAgeInMillis":J
    new-instance v2, Lc8/vtq;

    invoke-direct {v2, p5, v0, v1, p4}, Lc8/vtq;-><init>(IJLc8/amq;)V

    invoke-static {p0, v2}, Lc8/Atq;->create(Lc8/Vlq;Lc8/Hnq;)Lc8/Vzq;

    move-result-object v2

    return-object v2
.end method

.method static create(Lc8/Vlq;Lc8/Hnq;)Lc8/Vzq;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/xtq",
            "<TT;>;>;)",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "bufferFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/internal/operators/OperatorReplay$ReplayBuffer<TT;>;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 202
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;>;"
    new-instance v1, Lc8/wtq;

    invoke-direct {v1, v0, p1}, Lc8/wtq;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Lc8/Hnq;)V

    .line 246
    .local v1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lc8/Atq;

    invoke-direct {v2, v1, p0, v0, p1}, Lc8/Atq;-><init>(Lc8/Rlq;Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicReference;Lc8/Hnq;)V

    return-object v2
.end method

.method public static multicastSelector(Lc8/Hnq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vzq",
            "<TU;>;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TU;>;+",
            "Lc8/Vlq",
            "<TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "connectableFactory":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/observables/ConnectableObservable<TU;>;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TU;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lc8/qtq;

    invoke-direct {v0, p0, p1}, Lc8/qtq;-><init>(Lc8/Hnq;Lc8/Inq;)V

    invoke-static {v0}, Lc8/Vlq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static observeOn(Lc8/Vzq;Lc8/amq;)Lc8/Vzq;
    .locals 3
    .param p1, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vzq",
            "<TT;>;",
            "Lc8/amq;",
            ")",
            "Lc8/Vzq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "co":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    invoke-virtual {p0, p1}, Lc8/Vzq;->observeOn(Lc8/amq;)Lc8/Vlq;

    move-result-object v0

    .line 96
    .local v0, "observable":Lc8/Vlq;, "Lrx/Observable<TT;>;"
    new-instance v1, Lc8/stq;

    invoke-direct {v1, v0}, Lc8/stq;-><init>(Lc8/Vlq;)V

    .line 116
    .local v1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lc8/ttq;

    invoke-direct {v2, v1, p0}, Lc8/ttq;-><init>(Lc8/Rlq;Lc8/Vzq;)V

    return-object v2
.end method


# virtual methods
.method public connect(Lc8/inq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/Atq;, "Lrx/internal/operators/OperatorReplay<TT;>;"
    .local p1, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 264
    :cond_0
    iget-object v3, p0, Lc8/Atq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/ztq;

    .line 266
    .local v1, "ps":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/ztq;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 268
    :cond_1
    new-instance v2, Lc8/ztq;

    iget-object v3, p0, Lc8/Atq;->bufferFactory:Lc8/Hnq;

    invoke-interface {v3}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/xtq;

    invoke-direct {v2, v3}, Lc8/ztq;-><init>(Lc8/xtq;)V

    .line 270
    .local v2, "u":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    invoke-virtual {v2}, Lc8/ztq;->init()V

    .line 272
    iget-object v3, p0, Lc8/Atq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    move-object v1, v2

    .line 281
    .end local v2    # "u":Lc8/ztq;, "Lrx/internal/operators/OperatorReplay$ReplaySubscriber<TT;>;"
    :cond_2
    iget-object v3, v1, Lc8/ztq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Lc8/ztq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 297
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 298
    if-eqz v0, :cond_3

    .line 299
    iget-object v3, p0, Lc8/Atq;->source:Lc8/Vlq;

    invoke-virtual {v3, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 301
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v4

    .line 281
    goto :goto_0
.end method
