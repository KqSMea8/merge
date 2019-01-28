.class public final Lc8/Jtq;
.super Ljava/lang/Object;
.source "OperatorSampleWithTime.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Itq;
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
    .line 41
    .local p0, "this":Lc8/Jtq;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lc8/Jtq;->time:J

    .line 43
    iput-object p3, p0, Lc8/Jtq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 44
    iput-object p4, p0, Lc8/Jtq;->scheduler:Lc8/amq;

    .line 45
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
    .line 49
    .local p0, "this":Lc8/Jtq;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    new-instance v7, Lc8/qAq;

    invoke-direct {v7, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 50
    .local v7, "s":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<TT;>;"
    iget-object v2, p0, Lc8/Jtq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v0

    .line 51
    .local v0, "worker":Lc8/Zlq;
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 53
    new-instance v1, Lc8/Itq;

    invoke-direct {v1, v7}, Lc8/Itq;-><init>(Lc8/Omq;)V

    .line 54
    .local v1, "sampler":Lc8/Itq;, "Lrx/internal/operators/OperatorSampleWithTime$SamplerSubscriber<TT;>;"
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 55
    iget-wide v2, p0, Lc8/Jtq;->time:J

    iget-wide v4, p0, Lc8/Jtq;->time:J

    iget-object v6, p0, Lc8/Jtq;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v0 .. v6}, Lc8/Zlq;->schedulePeriodically(Lc8/hnq;JJLjava/util/concurrent/TimeUnit;)Lc8/Pmq;

    .line 57
    return-object v1
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    .local p0, "this":Lc8/Jtq;, "Lrx/internal/operators/OperatorSampleWithTime<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/Jtq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
