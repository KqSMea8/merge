.class public final Lc8/sBq;
.super Ljava/lang/Object;
.source "BlockingSingle.java"


# annotations
.annotation build Lc8/bnq;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final single:Lc8/Mmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mmq",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Mmq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lc8/sBq;, "Lrx/singles/BlockingSingle<TT;>;"
    .local p1, "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lc8/sBq;->single:Lc8/Mmq;

    .line 47
    return-void
.end method

.method public static from(Lc8/Mmq;)Lc8/sBq;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Mmq",
            "<+TT;>;)",
            "Lc8/sBq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "single":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    new-instance v0, Lc8/sBq;

    invoke-direct {v0, p0}, Lc8/sBq;-><init>(Lc8/Mmq;)V

    return-object v0
.end method


# virtual methods
.method public toFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lc8/sBq;, "Lrx/singles/BlockingSingle<TT;>;"
    iget-object v0, p0, Lc8/sBq;->single:Lc8/Mmq;

    invoke-virtual {v0}, Lc8/Mmq;->toObservable()Lc8/Vlq;

    move-result-object v0

    invoke-static {v0}, Lc8/woq;->toFuture(Lc8/Vlq;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public value()Ljava/lang/Object;
    .locals 7
    .annotation build Lc8/bnq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lc8/sBq;, "Lrx/singles/BlockingSingle<TT;>;"
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 74
    .local v2, "returnItem":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TT;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 75
    .local v1, "returnException":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Throwable;>;"
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v0, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 76
    .local v0, "latch":Ljava/util/concurrent/CountDownLatch;
    iget-object v5, p0, Lc8/sBq;->single:Lc8/Mmq;

    new-instance v6, Lc8/rBq;

    invoke-direct {v6, p0, v2, v0, v1}, Lc8/rBq;-><init>(Lc8/sBq;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v5, v6}, Lc8/Mmq;->subscribe(Lc8/Nmq;)Lc8/Pmq;

    move-result-object v3

    .line 90
    .local v3, "subscription":Lc8/Pmq;
    invoke-static {v0, v3}, Lc8/zxq;->awaitForComplete(Ljava/util/concurrent/CountDownLatch;Lc8/Pmq;)V

    .line 91
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 92
    .local v4, "throwable":Ljava/lang/Throwable;
    if-eqz v4, :cond_0

    .line 93
    invoke-static {v4}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 95
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method
