.class public Lc8/jvq;
.super Ljava/lang/Object;
.source "OperatorTimeoutBase.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/ivq;,
        Lc8/gvq;,
        Lc8/fvq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final firstTimeoutStub:Lc8/fvq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/fvq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final other:Lc8/Vlq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Vlq",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final scheduler:Lc8/amq;

.field final timeoutStub:Lc8/gvq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/gvq",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lc8/fvq;Lc8/gvq;Lc8/Vlq;Lc8/amq;)V
    .locals 0
    .param p4, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fvq",
            "<TT;>;",
            "Lc8/gvq",
            "<TT;>;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lc8/jvq;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "firstTimeoutStub":Lc8/fvq;, "Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub<TT;>;"
    .local p2, "timeoutStub":Lc8/gvq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub<TT;>;"
    .local p3, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lc8/jvq;->firstTimeoutStub:Lc8/fvq;

    .line 53
    iput-object p2, p0, Lc8/jvq;->timeoutStub:Lc8/gvq;

    .line 54
    iput-object p3, p0, Lc8/jvq;->other:Lc8/Vlq;

    .line 55
    iput-object p4, p0, Lc8/jvq;->scheduler:Lc8/amq;

    .line 56
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lc8/jvq;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    .local p1, "subscriber":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lc8/jvq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v5

    .line 61
    .local v5, "inner":Lc8/Zlq;
    invoke-virtual {p1, v5}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 65
    new-instance v1, Lc8/qAq;

    invoke-direct {v1, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 67
    .local v1, "synchronizedSubscriber":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Lc8/YBq;

    invoke-direct {v3}, Lc8/YBq;-><init>()V

    .line 68
    .local v3, "serial":Lc8/YBq;
    invoke-virtual {v1, v3}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 70
    new-instance v0, Lc8/ivq;

    iget-object v2, p0, Lc8/jvq;->timeoutStub:Lc8/gvq;

    iget-object v4, p0, Lc8/jvq;->other:Lc8/Vlq;

    invoke-direct/range {v0 .. v5}, Lc8/ivq;-><init>(Lc8/qAq;Lc8/gvq;Lc8/YBq;Lc8/Vlq;Lc8/Zlq;)V

    .line 72
    .local v0, "timeoutSubscriber":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    invoke-virtual {v1, v0}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 73
    iget-object v2, v0, Lc8/ivq;->arbiter:Lc8/Jwq;

    invoke-virtual {v1, v2}, Lc8/qAq;->setProducer(Lc8/Xlq;)V

    .line 75
    iget-object v2, p0, Lc8/jvq;->firstTimeoutStub:Lc8/fvq;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v0, v4, v5}, Lc8/fvq;->call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/Pmq;

    invoke-virtual {v3, v2}, Lc8/YBq;->set(Lc8/Pmq;)V

    .line 77
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    .local p0, "this":Lc8/jvq;, "Lrx/internal/operators/OperatorTimeoutBase<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/jvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
