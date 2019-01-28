.class public Lc8/nvq;
.super Ljava/lang/Object;
.source "OperatorTimeoutWithSelector.java"

# interfaces
.implements Lc8/gvq;


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
        "Lc8/gvq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$timeoutSelector:Lc8/Inq;


# direct methods
.method constructor <init>(Lc8/Inq;)V
    .locals 0

    .prologue
    .line 76
    .local p0, "this":Lc8/nvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    iput-object p1, p0, Lc8/nvq;->val$timeoutSelector:Lc8/Inq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;
    .locals 3
    .param p2, "seqId"    # Ljava/lang/Long;
    .param p4, "inner"    # Lc8/Zlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/ivq",
            "<TT;>;",
            "Ljava/lang/Long;",
            "TT;",
            "Lc8/Zlq;",
            ")",
            "Lc8/Pmq;"
        }
    .end annotation

    .prologue
    .line 84
    .local p0, "this":Lc8/nvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    .local p1, "timeoutSubscriber":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lc8/nvq;->val$timeoutSelector:Lc8/Inq;

    invoke-interface {v2, p3}, Lc8/Inq;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Vlq;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .local v0, "o":Lc8/Vlq;, "Lrx/Observable<TV;>;"
    new-instance v2, Lc8/mvq;

    invoke-direct {v2, p0, p1, p2}, Lc8/mvq;-><init>(Lc8/nvq;Lc8/ivq;Ljava/lang/Long;)V

    invoke-virtual {v0, v2}, Lc8/Vlq;->unsafeSubscribe(Lc8/Omq;)Lc8/Pmq;

    move-result-object v2

    .end local v0    # "o":Lc8/Vlq;, "Lrx/Observable<TV;>;"
    :goto_0
    return-object v2

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "t":Ljava/lang/Throwable;
    invoke-static {v1, p1}, Lc8/fnq;->throwOrReport(Ljava/lang/Throwable;Lc8/Wlq;)V

    .line 87
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lc8/nvq;, "Lrx/internal/operators/OperatorTimeoutWithSelector.2;"
    check-cast p1, Lc8/ivq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lc8/Zlq;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/nvq;->call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
