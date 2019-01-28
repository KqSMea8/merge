.class public final Lc8/evq;
.super Lc8/jvq;
.source "OperatorTimeout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/jvq",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)V
    .locals 3
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Lc8/Vlq",
            "<+TT;>;",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Lc8/evq;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    .local p4, "other":Lc8/Vlq;, "Lrx/Observable<+TT;>;"
    new-instance v0, Lc8/bvq;

    invoke-direct {v0, p1, p2, p3}, Lc8/bvq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    new-instance v1, Lc8/dvq;

    invoke-direct {v1, p1, p2, p3}, Lc8/dvq;-><init>(JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {p0, v0, v1, p4, p5}, Lc8/jvq;-><init>(Lc8/fvq;Lc8/gvq;Lc8/Vlq;Lc8/amq;)V

    .line 57
    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lc8/Omq;)Lc8/Omq;
    .locals 1
    .param p1, "x0"    # Lc8/Omq;

    .prologue
    .line 31
    .local p0, "this":Lc8/evq;, "Lrx/internal/operators/OperatorTimeout<TT;>;"
    invoke-super {p0, p1}, Lc8/jvq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
