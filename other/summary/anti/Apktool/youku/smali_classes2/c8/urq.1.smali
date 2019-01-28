.class public final Lc8/urq;
.super Ljava/lang/Object;
.source "OperatorBufferWithTime.java"

# interfaces
.implements Lc8/Tlq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/qrq;,
        Lc8/trq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc8/Tlq",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final count:I

.field final scheduler:Lc8/amq;

.field final timeshift:J

.field final timespan:J

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public constructor <init>(JJLjava/util/concurrent/TimeUnit;ILc8/amq;)V
    .locals 1
    .param p1, "timespan"    # J
    .param p3, "timeshift"    # J
    .param p5, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p6, "count"    # I
    .param p7, "scheduler"    # Lc8/amq;

    .prologue
    .line 62
    .local p0, "this":Lc8/urq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lc8/urq;->timespan:J

    .line 64
    iput-wide p3, p0, Lc8/urq;->timeshift:J

    .line 65
    iput-object p5, p0, Lc8/urq;->unit:Ljava/util/concurrent/TimeUnit;

    .line 66
    iput p6, p0, Lc8/urq;->count:I

    .line 67
    iput-object p7, p0, Lc8/urq;->scheduler:Lc8/amq;

    .line 68
    return-void
.end method


# virtual methods
.method public call(Lc8/Omq;)Lc8/Omq;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "this":Lc8/urq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    .local p1, "child":Lc8/Omq;, "Lrx/Subscriber<-Ljava/util/List<TT;>;>;"
    iget-object v4, p0, Lc8/urq;->scheduler:Lc8/amq;

    invoke-virtual {v4}, Lc8/amq;->createWorker()Lc8/Zlq;

    move-result-object v2

    .line 73
    .local v2, "inner":Lc8/Zlq;
    new-instance v3, Lc8/qAq;

    invoke-direct {v3, p1}, Lc8/qAq;-><init>(Lc8/Omq;)V

    .line 75
    .local v3, "serialized":Lc8/qAq;, "Lrx/observers/SerializedSubscriber<Ljava/util/List<TT;>;>;"
    iget-wide v4, p0, Lc8/urq;->timespan:J

    iget-wide v6, p0, Lc8/urq;->timeshift:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 76
    new-instance v0, Lc8/qrq;

    invoke-direct {v0, p0, v3, v2}, Lc8/qrq;-><init>(Lc8/urq;Lc8/Omq;Lc8/Zlq;)V

    .line 77
    .local v0, "bsub":Lc8/qrq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    invoke-virtual {v0, v2}, Lc8/qrq;->add(Lc8/Pmq;)V

    .line 78
    invoke-virtual {p1, v0}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 79
    invoke-virtual {v0}, Lc8/qrq;->scheduleExact()V

    .line 88
    .end local v0    # "bsub":Lc8/qrq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.ExactSubscriber;"
    :goto_0
    return-object v0

    .line 83
    :cond_0
    new-instance v1, Lc8/trq;

    invoke-direct {v1, p0, v3, v2}, Lc8/trq;-><init>(Lc8/urq;Lc8/Omq;Lc8/Zlq;)V

    .line 84
    .local v1, "bsub":Lc8/trq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>.InexactSubscriber;"
    invoke-virtual {v1, v2}, Lc8/trq;->add(Lc8/Pmq;)V

    .line 85
    invoke-virtual {p1, v1}, Lc8/Omq;->add(Lc8/Pmq;)V

    .line 86
    invoke-virtual {v1}, Lc8/trq;->startNewChunk()V

    .line 87
    invoke-virtual {v1}, Lc8/trq;->scheduleChunk()V

    move-object v0, v1

    .line 88
    goto :goto_0
.end method

.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 43
    .local p0, "this":Lc8/urq;, "Lrx/internal/operators/OperatorBufferWithTime<TT;>;"
    check-cast p1, Lc8/Omq;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/urq;->call(Lc8/Omq;)Lc8/Omq;

    move-result-object v0

    return-object v0
.end method
