.class public final Lc8/xwq;
.super Ljava/lang/Object;
.source "SingleOnSubscribeDelaySubscriptionOther.java"

# interfaces
.implements Lc8/Kmq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Kmq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final main:Lc8/Mmq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Mmq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Mmq;Lc8/Vlq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Mmq",
            "<+TT;>;",
            "Lc8/Vlq",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lc8/xwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "main":Lc8/Mmq;, "Lrx/Single<+TT;>;"
    .local p2, "other":Lc8/Vlq;, "Lrx/Observable<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lc8/xwq;->main:Lc8/Mmq;

    .line 35
    iput-object p2, p0, Lc8/xwq;->other:Lc8/Vlq;

    .line 36
    return-void
.end method


# virtual methods
.method public call(Lc8/Nmq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Nmq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, "this":Lc8/xwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    .local p1, "subscriber":Lc8/Nmq;, "Lrx/SingleSubscriber<-TT;>;"
    new-instance v0, Lc8/vwq;

    invoke-direct {v0, p0, p1}, Lc8/vwq;-><init>(Lc8/xwq;Lc8/Nmq;)V

    .line 53
    .local v0, "child":Lc8/Nmq;, "Lrx/SingleSubscriber<TT;>;"
    new-instance v2, Lc8/YBq;

    invoke-direct {v2}, Lc8/YBq;-><init>()V

    .line 54
    .local v2, "serial":Lc8/YBq;
    invoke-virtual {p1, v2}, Lc8/Nmq;->add(Lc8/Pmq;)V

    .line 56
    new-instance v1, Lc8/wwq;

    invoke-direct {v1, p0, v0, v2}, Lc8/wwq;-><init>(Lc8/xwq;Lc8/Nmq;Lc8/YBq;)V

    .line 85
    .local v1, "otherSubscriber":Lc8/Omq;, "Lrx/Subscriber<Ljava/lang/Object;>;"
    invoke-virtual {v2, v1}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 87
    iget-object v3, p0, Lc8/xwq;->other:Lc8/Vlq;

    invoke-virtual {v3, v1}, Lc8/Vlq;->subscribe(Lc8/Omq;)Lc8/Pmq;

    .line 88
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 29
    .local p0, "this":Lc8/xwq;, "Lrx/internal/operators/SingleOnSubscribeDelaySubscriptionOther<TT;>;"
    check-cast p1, Lc8/Nmq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/xwq;->call(Lc8/Nmq;)V

    return-void
.end method
