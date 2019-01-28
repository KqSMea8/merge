.class public Lc8/bvq;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lc8/fvq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/evq;-><init>(JLjava/util/concurrent/TimeUnit;Lc8/Vlq;Lc8/amq;)V
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
.field final synthetic val$timeUnit:Ljava/util/concurrent/TimeUnit;

.field final synthetic val$timeout:J


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lc8/bvq;, "Lrx/internal/operators/OperatorTimeout.1;"
    iput-wide p1, p0, Lc8/bvq;->val$timeout:J

    iput-object p3, p0, Lc8/bvq;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/ivq;Ljava/lang/Long;Lc8/Zlq;)Lc8/Pmq;
    .locals 4
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
    .line 38
    .local p0, "this":Lc8/bvq;, "Lrx/internal/operators/OperatorTimeout.1;"
    .local p1, "timeoutSubscriber":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    new-instance v0, Lc8/avq;

    invoke-direct {v0, p0, p1, p2}, Lc8/avq;-><init>(Lc8/bvq;Lc8/ivq;Ljava/lang/Long;)V

    iget-wide v2, p0, Lc8/bvq;->val$timeout:J

    iget-object v1, p0, Lc8/bvq;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v2, v3, v1}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .prologue
    .line 34
    .local p0, "this":Lc8/bvq;, "Lrx/internal/operators/OperatorTimeout.1;"
    check-cast p1, Lc8/ivq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p3, Lc8/Zlq;

    .end local p3    # "x2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3}, Lc8/bvq;->call(Lc8/ivq;Ljava/lang/Long;Lc8/Zlq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
