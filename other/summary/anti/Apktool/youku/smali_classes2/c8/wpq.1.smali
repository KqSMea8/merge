.class public final Lc8/wpq;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lc8/Rlq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Rlq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final main:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<TU;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/wpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "main":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "other":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/wpq;->main:Lc8/Vlq;

    .line 37
    iput-object p2, p0, Lc8/wpq;->other:Lc8/Vlq;

    .line 38
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lc8/wpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    .local p1, "t":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v2, Lc8/YBq;

    invoke-direct {v2}, Lc8/YBq;-><init>()V

    .line 44
    .local v2, "serial":Lc8/YBq;
    invoke-virtual {p1, v2}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 46
    invoke-static {p1}, Lc8/wAq;->wrap(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    .line 49
    .local v0, "child":Lc8/Omq;, "Lrx/Subscriber<TT;>;"
    new-instance v1, Lc8/vpq;

    invoke-direct {v1, p0, v0, v2}, Lc8/vpq;-><init>(Lc8/wpq;Lc8/Omq;Lc8/YBq;)V

    .line 78
    .local v1, "otherSubscriber":Lc8/Omq;, "Lrx/Subscriber<TU;>;"
    invoke-virtual {v2, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 80
    iget-object v3, p0, Lc8/wpq;->other:Lc8/Vlq;

    invoke-virtual {v3, v1}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    .line 81
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/wpq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionOther<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/wpq;->call(Lc8/Omq;)V

    return-void
.end method
