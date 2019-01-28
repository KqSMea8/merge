.class public final Lc8/gpq;
.super Ljava/lang/Object;
.source "OnSubscribeAmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/hpq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Selection"
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
.field final ambSubscribers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lc8/fpq",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final choice:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/fpq",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 341
    .local p0, "this":Lc8/gpq;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lc8/gpq;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    .line 343
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public unsubscribeLosers()V
    .locals 2

    .prologue
    .line 346
    .local p0, "this":Lc8/gpq;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    iget-object v1, p0, Lc8/gpq;->choice:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/fpq;

    .line 347
    .local v0, "winner":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lc8/gpq;->unsubscribeOthers(Lc8/fpq;)V

    .line 350
    :cond_0
    return-void
.end method

.method public unsubscribeOthers(Lc8/fpq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fpq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p0, "this":Lc8/gpq;, "Lrx/internal/operators/OnSubscribeAmb$Selection<TT;>;"
    .local p1, "notThis":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    iget-object v2, p0, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/fpq;

    .line 354
    .local v1, "other":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    if-eq v1, p1, :cond_0

    .line 355
    invoke-virtual {v1}, Lc8/fpq;->unsubscribe()V

    goto :goto_0

    .line 358
    .end local v1    # "other":Lc8/fpq;, "Lrx/internal/operators/OnSubscribeAmb$AmbSubscriber<TT;>;"
    :cond_1
    iget-object v2, p0, Lc8/gpq;->ambSubscribers:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 359
    return-void
.end method
