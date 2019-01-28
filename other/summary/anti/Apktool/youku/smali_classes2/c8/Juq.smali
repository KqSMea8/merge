.class public final Lc8/Juq;
.super Lc8/Omq;
.source "OperatorTakeLastTimed.java"

# interfaces
.implements Lc8/Inq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Kuq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TakeLastTimedSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc8/Omq",
        "<TT;>;",
        "Lc8/Inq",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field final actual:Lc8/Omq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/Omq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final ageMillis:J

.field final count:I

.field final nl:Lc8/cpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/cpq",
            "<TT;>;"
        }
    .end annotation
.end field

.field final queue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final queueTimes:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final scheduler:Lc8/amq;


# direct methods
.method public constructor <init>(Lc8/Omq;IJLc8/amq;)V
    .locals 1
    .param p2, "count"    # I
    .param p3, "ageMillis"    # J
    .param p5, "scheduler"    # Lc8/amq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/Omq",
            "<-TT;>;IJ",
            "Lc8/amq;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    .local p1, "actual":Lc8/Omq;, "Lrx/Subscriber<-TT;>;"
    invoke-direct {p0}, Lc8/Omq;-><init>()V

    .line 80
    iput-object p1, p0, Lc8/Juq;->actual:Lc8/Omq;

    .line 81
    iput p2, p0, Lc8/Juq;->count:I

    .line 82
    iput-wide p3, p0, Lc8/Juq;->ageMillis:J

    .line 83
    iput-object p5, p0, Lc8/Juq;->scheduler:Lc8/amq;

    .line 84
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lc8/Juq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 85
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    .line 86
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    .line 87
    invoke-static {}, Lc8/cpq;->instance()Lc8/cpq;

    move-result-object v0

    iput-object v0, p0, Lc8/Juq;->nl:Lc8/cpq;

    .line 88
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Juq;->nl:Lc8/cpq;

    invoke-virtual {v0, p1}, Lc8/cpq;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected evictOld(J)V
    .locals 7
    .param p1, "now"    # J

    .prologue
    .line 108
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-wide v4, p0, Lc8/Juq;->ageMillis:J

    sub-long v0, p1, v4

    .line 110
    .local v0, "minTime":J
    :goto_0
    iget-object v3, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 111
    .local v2, "time":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 114
    iget-object v3, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 115
    iget-object v3, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public onCompleted()V
    .locals 3

    .prologue
    .line 128
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Juq;->scheduler:Lc8/amq;

    invoke-virtual {v0}, Lc8/amq;->now()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lc8/Juq;->evictOld(J)V

    .line 130
    iget-object v0, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 132
    iget-object v0, p0, Lc8/Juq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lc8/Juq;->actual:Lc8/Omq;

    invoke-static {v0, v1, v2, p0}, Lc8/ioq;->postCompleteDone(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lc8/Omq;Lc8/Inq;)V

    .line 133
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v0, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 122
    iget-object v0, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 123
    iget-object v0, p0, Lc8/Juq;->actual:Lc8/Omq;

    invoke-virtual {v0, p1}, Lc8/Omq;->onError(Ljava/lang/Throwable;)V

    .line 124
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget v2, p0, Lc8/Juq;->count:I

    if-eqz v2, :cond_1

    .line 93
    iget-object v2, p0, Lc8/Juq;->scheduler:Lc8/amq;

    invoke-virtual {v2}, Lc8/amq;->now()J

    move-result-wide v0

    .line 95
    .local v0, "now":J
    iget-object v2, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    iget v3, p0, Lc8/Juq;->count:I

    if-ne v2, v3, :cond_0

    .line 96
    iget-object v2, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 100
    :cond_0
    invoke-virtual {p0, v0, v1}, Lc8/Juq;->evictOld(J)V

    .line 102
    iget-object v2, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    iget-object v3, p0, Lc8/Juq;->nl:Lc8/cpq;

    invoke-virtual {v3, p1}, Lc8/cpq;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 103
    iget-object v2, p0, Lc8/Juq;->queueTimes:Ljava/util/ArrayDeque;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 105
    .end local v0    # "now":J
    :cond_1
    return-void
.end method

.method requestMore(J)V
    .locals 7
    .param p1, "n"    # J

    .prologue
    .line 141
    .local p0, "this":Lc8/Juq;, "Lrx/internal/operators/OperatorTakeLastTimed$TakeLastTimedSubscriber<TT;>;"
    iget-object v1, p0, Lc8/Juq;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v4, p0, Lc8/Juq;->queue:Ljava/util/ArrayDeque;

    iget-object v5, p0, Lc8/Juq;->actual:Lc8/Omq;

    move-wide v2, p1

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lc8/ioq;->postCompleteRequest(Ljava/util/concurrent/atomic/AtomicLong;JLjava/util/Queue;Lc8/Omq;Lc8/Inq;)Z

    .line 142
    return-void
.end method
