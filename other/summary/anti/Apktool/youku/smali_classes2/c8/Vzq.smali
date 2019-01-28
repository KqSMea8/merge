.class public abstract Lc8/Vzq;
.super Lc8/Vlq;
.source "ConnectableObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lc8/Rlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Rlq",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TT;>;"
    invoke-direct {p0, p1}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 40
    return-void
.end method


# virtual methods
.method public autoConnect()Lc8/Vlq;
    .locals 1
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc8/Vzq;->autoConnect(I)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(I)Lc8/Vlq;
    .locals 1
    .param p1, "numberOfSubscribers"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    invoke-static {}, Lc8/Gnq;->empty()Lc8/Fnq;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lc8/Vzq;->autoConnect(ILc8/inq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method

.method public autoConnect(ILc8/inq;)Lc8/Vlq;
    .locals 1
    .param p1, "numberOfSubscribers"    # I
    .annotation build Lc8/anq;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    .local p2, "connection":Lc8/inq;, "Lrx/functions/Action1<-Lrx/Subscription;>;"
    if-gtz p1, :cond_0

    .line 129
    invoke-virtual {p0, p2}, Lc8/Vzq;->connect(Lc8/inq;)V

    .line 132
    .end local p0    # "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    :cond_0
    new-instance v0, Lc8/ipq;

    invoke-direct {v0, p0, p1, p2}, Lc8/ipq;-><init>(Lc8/Vzq;ILc8/inq;)V

    invoke-static {v0}, Lc8/Vzq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object p0

    goto :goto_0
.end method

.method public final connect()Lc8/Pmq;
    .locals 2

    .prologue
    .line 52
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    const/4 v1, 0x1

    new-array v0, v1, [Lc8/Pmq;

    .line 53
    .local v0, "out":[Lc8/Pmq;
    new-instance v1, Lc8/Uzq;

    invoke-direct {v1, p0, v0}, Lc8/Uzq;-><init>(Lc8/Vzq;[Lc8/Pmq;)V

    invoke-virtual {p0, v1}, Lc8/Vzq;->connect(Lc8/inq;)V

    .line 59
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public abstract connect(Lc8/inq;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/inq",
            "<-",
            "Lc8/Pmq;",
            ">;)V"
        }
    .end annotation
.end method

.method public refCount()Lc8/Vlq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/Vlq",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lc8/Vzq;, "Lrx/observables/ConnectableObservable<TT;>;"
    new-instance v0, Lc8/Iqq;

    invoke-direct {v0, p0}, Lc8/Iqq;-><init>(Lc8/Vzq;)V

    invoke-static {v0}, Lc8/Vzq;->create(Lc8/Rlq;)Lc8/Vlq;

    move-result-object v0

    return-object v0
.end method
