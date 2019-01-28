.class public Lc8/dvq;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lc8/gvq;


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
        "Lc8/gvq",
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
    .line 45
    .local p0, "this":Lc8/dvq;, "Lrx/internal/operators/OperatorTimeout.2;"
    iput-wide p1, p0, Lc8/dvq;->val$timeout:J

    iput-object p3, p0, Lc8/dvq;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;
    .locals 4
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
    .line 49
    .local p0, "this":Lc8/dvq;, "Lrx/internal/operators/OperatorTimeout.2;"
    .local p1, "timeoutSubscriber":Lc8/ivq;, "Lrx/internal/operators/OperatorTimeoutBase$TimeoutSubscriber<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lc8/cvq;

    invoke-direct {v0, p0, p1, p2}, Lc8/cvq;-><init>(Lc8/dvq;Lc8/ivq;Ljava/lang/Long;)V

    iget-wide v2, p0, Lc8/dvq;->val$timeout:J

    iget-object v1, p0, Lc8/dvq;->val$timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p4, v0, v2, v3, v1}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;
    .param p4, "x3"    # Ljava/lang/Object;

    .prologue
    .line 45
    .local p0, "this":Lc8/dvq;, "Lrx/internal/operators/OperatorTimeout.2;"
    check-cast p1, Lc8/ivq;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "x1":Ljava/lang/Object;
    check-cast p4, Lc8/Zlq;

    .end local p4    # "x3":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2, p3, p4}, Lc8/dvq;->call(Lc8/ivq;Ljava/lang/Long;Ljava/lang/Object;Lc8/Zlq;)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method
