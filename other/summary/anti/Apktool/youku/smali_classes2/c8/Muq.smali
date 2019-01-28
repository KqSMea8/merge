.class public final Lc8/Muq;
.super Ljava/lang/Object;
.source "OperatorTakeTimed.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Luq;
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
.field final scheduler:Lc8/amq;

.field final time:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 37
    .local p0, "this":Lc8/Muq;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lc8/Muq;->time:J

    .line 39
    iput-object p3, p0, Lc8/Muq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lc8/Muq;->scheduler:Lc8/amq;

    .line 41
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 5
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
    .line 45
    .local p0, "this":Lc8/Muq;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v2, p0, Lc8/Muq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v1

    .line 46
    .local v1, "worker":Lc8/Zlq;
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 48
    new-instance v0, Lc8/Luq;

    new-instance v2, Lc8/qAq;

    invoke-direct {v2, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    invoke-direct {v0, v2}, Lc8/Luq;-><init>(Lc8/Omq;)V

    .line 49
    .local v0, "ts":Lc8/Luq;, "Lrx/internal/operators/OperatorTakeTimed$TakeSubscriber<TT;>;"
    iget-wide v2, p0, Lc8/Muq;->time:J

    iget-object v4, p0, Lc8/Muq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Lc8/Zlq;->schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 50
    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lc8/Muq;, "Lrx/internal/operators/OperatorTakeTimed<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Muq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
