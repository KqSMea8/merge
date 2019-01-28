.class public abstract Lc8/GBq;
.super Lc8/Vlq;
.source "Subject.java"

# interfaces
.implements Lc8/Wlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Vlq",
        "<TR;>;",
        "Lc8/Wlq",
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
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lc8/GBq;, "Lrx/subjects/Subject<TT;TR;>;"
    .local p1, "onSubscribe":Lc8/Rlq;, "Lrx/Observable$OnSubscribe<TR;>;"
    invoke-direct {p0, p1}, Lc8/Vlq;-><init>(Lc8/Rlq;)V

    .line 28
    return-void
.end method


# virtual methods
.method public abstract hasObservers()Z
.end method

.method public final toSerialized()Lc8/FBq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc8/FBq",
            "<TT;TR;>;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lc8/GBq;, "Lrx/subjects/Subject<TT;TR;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lc8/FBq;

    if-ne v0, v1, :cond_0

    .line 56
    check-cast p0, Lc8/FBq;

    .line 58
    .end local p0    # "this":Lc8/GBq;, "Lrx/subjects/Subject<TT;TR;>;"
    :goto_0
    return-object p0

    .restart local p0    # "this":Lc8/GBq;, "Lrx/subjects/Subject<TT;TR;>;"
    :cond_0
    new-instance v0, Lc8/FBq;

    invoke-direct {v0, p0}, Lc8/FBq;-><init>(Lc8/GBq;)V

    move-object p0, v0

    goto :goto_0
.end method
