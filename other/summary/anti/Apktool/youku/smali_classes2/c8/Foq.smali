.class public final Lc8/Foq;
.super Lc8/Vlq;
.source "CachedObservable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/CachedObservable$ReplayProducer;,
        Lrx/internal/operators/CachedObservable$CachedSubscribe;,
        Lc8/Eoq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final state:Lc8/Eoq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Eoq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lc8/Rlq;Lc8/Eoq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;",
            "Lc8/Eoq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lc8/Foq;, "Lrx/internal/operators/CachedObservable<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    .local p2, "state":Lc8/Eoq;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    invoke-direct {p0, p1}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 71
    iput-object p2, p0, Lc8/Foq;->state:Lc8/Eoq;

    .line 72
    return-void
.end method

.method public static from(Lc8/Vlq;)Lc8/Foq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;)",
            "Lc8/Foq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lc8/Foq;->from(Lc8/Vlq;I)Lc8/Foq;

    move-result-object v0

    return-object v0
.end method

.method public static from(Lc8/Vlq;I)Lc8/Foq;
    .locals 4
    .param p1, "capacityHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc8/Vlq",
            "<+TT;>;I)",
            "Lc8/Foq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    if-gtz p1, :cond_0

    .line 56
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "capacityHint > 0 required"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_0
    new-instance v1, Lc8/Eoq;

    invoke-direct {v1, p0, p1}, Lc8/Eoq;-><init>(Lc8/Vlq;I)V

    .line 59
    .local v1, "state":Lc8/Eoq;, "Lrx/internal/operators/CachedObservable$CacheState<TT;>;"
    new-instance v0, Lrx/internal/operators/CachedObservable$CachedSubscribe;

    invoke-direct {v0, v1}, Lrx/internal/operators/CachedObservable$CachedSubscribe;-><init>(Lc8/Eoq;)V

    .line 60
    .local v0, "onSubscribe":Lrx/internal/operators/CachedObservable$CachedSubscribe;, "Lrx/internal/operators/CachedObservable$CachedSubscribe<TT;>;"
    new-instance v2, Lc8/Foq;

    invoke-direct {v2, v0, v1}, Lc8/Foq;-><init>(Lc8/Rlq;Lc8/Eoq;)V

    return-object v2
.end method


# virtual methods
.method hasObservers()Z
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lc8/Foq;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lc8/Foq;->state:Lc8/Eoq;

    iget-object v0, v0, Lc8/Eoq;->producers:[Lrx/internal/operators/CachedObservable$ReplayProducer;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConnected()Z
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lc8/Foq;, "Lrx/internal/operators/CachedObservable<TT;>;"
    iget-object v0, p0, Lc8/Foq;->state:Lc8/Eoq;

    iget-boolean v0, v0, Lc8/Eoq;->isConnected:Z

    return v0
.end method
