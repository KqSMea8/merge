.class public final Lc8/ypq;
.super Ljava/lang/Object;
.source "OnSubscribeDelaySubscriptionWithSelector.java"

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
.field final source:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final subscriptionDelay:Lc8/Hnq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc8/Vlq;Lc8/Hnq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/Hnq",
            "<+",
            "Lc8/Vlq",
            "<TU;>;>;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lc8/ypq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    .local p1, "source":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    .local p2, "subscriptionDelay":Lc8/Hnq;, "Lrx/functions/Func0<+Lrx/Observable<TU;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lc8/ypq;->source:Lc8/Vlq;

    .line 37
    iput-object p2, p0, Lc8/ypq;->subscriptionDelay:Lc8/Hnq;

    .line 38
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lc8/ypq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    :try_start_0
    iget-object v1, p0, Lc8/ypq;->subscriptionDelay:Lc8/Hnq;

    invoke-interface {v1}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Vlq;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lc8/Vlq;->take(I)Lc8/Vlq;

    move-result-object v1

    new-instance v2, Lc8/xpq;

    invoke-direct {v2, p0, p1}, Lc8/xpq;-><init>(Lc8/ypq;Lc8/Omq;)V

    invoke-virtual {v1, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 31
    .local p0, "this":Lc8/ypq;, "Lrx/internal/operators/OnSubscribeDelaySubscriptionWithSelector<TT;TU;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/ypq;->call(Lc8/Omq;)V

    return-void
.end method
