.class public final Lc8/ntq;
.super Lc8/Vzq;
.source "OperatorPublish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorPublish$InnerProducer;,
        Lc8/mtq;
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

.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Rlq;Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicReference;)V
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
            "Lc8/mtq",
            "<TT;>;>;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "this":Lc8/ntq;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p3, "current":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    invoke-direct {p0, p1}, Lc8/Vzq;-><init>(Lc8/Rlq;)V

    .line 168
    iput-object p2, p0, Lc8/ntq;->source:Lc8/Vlq;

    .line 169
    iput-object p3, p0, Lc8/ntq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    .line 170
    return-void
.end method

.method public static create(Lc8/Vlq;Lc8/Inq;)Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lc8/ntq;->create(Lc8/Vlq;Lc8/Inq;Z)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Vlq;Lc8/Inq;Z)Lc8/Vlq;
    .locals 1
    .param p2, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Inq",
            "<-",
            "Lc8/Vlq",
            "<TT;>;+",
            "Lc8/Vlq",
            "<TR;>;>;Z)",
            "Lc8/Vlq",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p1, "selector":Lc8/Inq;, "Lrx/functions/Func1<-Lrx/Observable<TT;>;+Lrx/Observable<TR;>;>;"
    new-instance v0, Lc8/ktq;

    invoke-direct {v0, p2, p1, p0}, Lc8/ktq;-><init>(ZLc8/Inq;Lc8/Vlq;)V

    invoke-static {v0}, Lc8/ntq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lc8/Vlq;)Lc8/Vzq;
    .locals 3
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
    .line 48
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 49
    .local v0, "curr":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;>;"
    new-instance v1, Lc8/itq;

    invoke-direct {v1, v0}, Lc8/itq;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 116
    .local v1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    new-instance v2, Lc8/ntq;

    invoke-direct {v2, v1, p0, v0}, Lc8/ntq;-><init>(Lc8/Rlq;Lc8/Vlq;Ljava/util/concurrent/atomic/AtomicReference;)V

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
    .local p0, "this":Lc8/ntq;, "Lrx/internal/operators/OperatorPublish<TT;>;"
    .local p1, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 179
    :cond_0
    iget-object v4, p0, Lc8/ntq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/mtq;

    .line 181
    .local v1, "ps":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/mtq;->isUnsubscribed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 183
    :cond_1
    new-instance v2, Lc8/mtq;

    iget-object v4, p0, Lc8/ntq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v4}, Lc8/mtq;-><init>(Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 185
    .local v2, "u":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    invoke-virtual {v2}, Lc8/mtq;->init()V

    .line 187
    iget-object v4, p0, Lc8/ntq;->current:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    move-object v1, v2

    .line 196
    .end local v2    # "u":Lc8/mtq;, "Lrx/internal/operators/OperatorPublish$PublishSubscriber<TT;>;"
    :cond_2
    iget-object v4, v1, Lc8/mtq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lc8/mtq;->shouldConnect:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 212
    .local v0, "doConnect":Z
    :goto_0
    invoke-interface {p1, v1}, Lc8/inq;->call(Ljava/lang/Object;)V

    .line 213
    if-eqz v0, :cond_3

    .line 214
    iget-object v3, p0, Lc8/ntq;->source:Lc8/Vlq;

    invoke-virtual {v3, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 216
    :cond_3
    return-void

    .end local v0    # "doConnect":Z
    :cond_4
    move v0, v3

    .line 196
    goto :goto_0
.end method
