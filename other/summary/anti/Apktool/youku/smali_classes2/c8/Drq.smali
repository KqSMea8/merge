.class public final Lc8/Drq;
.super Ljava/lang/Object;
.source "OperatorDebounceWithTime.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Crq;
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

.field final timeout:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lc8/amq;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduler"    # Lc8/amq;

    .prologue
    .line 48
    .local p0, "this":Lc8/Drq;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide p1, p0, Lc8/Drq;->timeout:J

    .line 50
    iput-object p3, p0, Lc8/Drq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 51
    iput-object p4, p0, Lc8/Drq;->scheduler:Lc8/amq;

    .line 52
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 6
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
    .line 56
    .local p0, "this":Lc8/Drq;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    iget-object v0, p0, Lc8/Drq;->scheduler:Lc8/amq;

    invoke-virtual {v0}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v4

    .line 57
    .local v4, "worker":Lc8/Zlq;
    new-instance v5, Lc8/qAq;

    invoke-direct {v5, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 58
    .local v5, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    new-instance v3, Lc8/YBq;

    invoke-direct {v3}, Lc8/YBq;-><init>()V

    .line 60
    .local v3, "ssub":Lc8/YBq;
    invoke-virtual {v5, v4}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 61
    invoke-virtual {v5, v3}, Lc8/qAq;->add(Lc8/Pmq;)V

    .line 63
    new-instance v0, Lc8/Brq;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lc8/Brq;-><init>(Lc8/Drq;Lc8/Omq;Lc8/YBq;Lc8/Zlq;Lc8/qAq;)V

    return-object v0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    .local p0, "this":Lc8/Drq;, "Lrx/internal/operators/OperatorDebounceWithTime<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Drq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
