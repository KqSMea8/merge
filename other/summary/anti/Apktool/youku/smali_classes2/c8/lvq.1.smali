.class public Lc8/lvq;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lc8/fvq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ovq;-><init>(Lc8/Hnq;Lc8/Inq;Lc8/Vlq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc8/fvq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$firstTimeoutSelector:Lc8/Hnq;


# direct methods
.method constructor <init>(Lc8/Hnq;)V
    .locals 0

    .prologue
    .line 40
    .local p0, "this":Lc8/lvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    iput-object p1, p0, Lc8/lvq;->val$firstTimeoutSelector:Lc8/Hnq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/ivq;Ljava/lang/Long;Lc8/Zlq;)Lc8/Pmq;
    .locals 3
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p3, "inner"    # Lc8/Zlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ivq",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Lc8/Zlq;",
            ")",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lc8/lvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    .local p1, "timeoutSubscriber":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    iget-object v2, p0, Lc8/lvq;->val$firstTimeoutSelector:Lc8/Hnq;

    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    iget-object v2, p0, Lc8/lvq;->val$firstTimeoutSelector:Lc8/Hnq;

    invoke-interface {v2}, Lc8/Hnq;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .local v0, "o":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    new-instance v2, Lc8/kvq;

    invoke-direct {v2, p0, p1, p2}, Lc8/kvq;-><init>(Lc8/lvq;Lc8/ivq;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v2

    .line 73
    .end local v0    # "o":Lc8/Vlq;, "Lrx/Observable<TU;>;"
    :goto_0
    return-object v2

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 52
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    goto :goto_0

    .line 73
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_0
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 40
    .local p0, "this":Lc8/lvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.1;"
    check-cast p1, Lc8/ivq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lc8/Zlq;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lc8/lvq;->call(Lc8/ivq;Ljava/lang/Long;Lc8/Zlq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
