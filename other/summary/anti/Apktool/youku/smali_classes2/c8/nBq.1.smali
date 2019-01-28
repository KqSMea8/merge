.class public Lc8/nBq;
.super Lc8/amq;
.source "TestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/lBq;,
        Lc8/iBq;,
        Lc8/mBq;
    }
.end annotation


# static fields
.field static counter:J


# instance fields
.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lc8/mBq;",
            ">;"
        }
    .end annotation
.end field

.field time:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 34
    new-instance v0, Ljava/util/PriorityQueue;

    const/16 v1, 0xb

    new-instance v2, Lc8/iBq;

    invoke-direct {v2}, Lc8/iBq;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v0, p0, Lc8/nBq;->queue:Ljava/util/Queue;

    .line 133
    return-void
.end method

.method private triggerActions(J)V
    .locals 7
    .param p1, "targetTimeInNanos"    # J

    .prologue
    .line 111
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/nBq;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 112
    iget-object v1, p0, Lc8/nBq;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/mBq;

    .line 113
    .local v0, "current":Lc8/mBq;
    iget-wide v2, v0, Lc8/mBq;->time:J

    cmp-long v1, v2, p1

    if-gtz v1, :cond_2

    .line 117
    iget-wide v2, v0, Lc8/mBq;->time:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-wide v2, p0, Lc8/nBq;->time:J

    :goto_1
    iput-wide v2, p0, Lc8/nBq;->time:J

    .line 118
    iget-object v1, p0, Lc8/nBq;->queue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    .line 121
    iget-object v1, v0, Lc8/mBq;->scheduler:Lc8/Zlq;

    invoke-virtual {v1}, Lc8/Zlq;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, v0, Lc8/mBq;->action:Lc8/hnq;

    invoke-interface {v1}, Lc8/hnq;->call()V

    goto :goto_0

    .line 117
    :cond_1
    iget-wide v2, v0, Lc8/mBq;->time:J

    goto :goto_1

    .line 125
    .end local v0    # "current":Lc8/mBq;
    :cond_2
    iput-wide p1, p0, Lc8/nBq;->time:J

    .line 126
    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .locals 5
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 86
    iget-wide v0, p0, Lc8/nBq;->time:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lc8/nBq;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    .line 87
    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "delayTime"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 98
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 99
    .local v0, "targetTime":J
    invoke-direct {p0, v0, v1}, Lc8/nBq;->triggerActions(J)V

    .line 100
    return-void
.end method

.method public createWorker()Lc8/Zlq;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lc8/lBq;

    invoke-direct {v0, p0}, Lc8/lBq;-><init>(Lc8/nBq;)V

    return-object v0
.end method

.method public now()J
    .locals 4

    .prologue
    .line 74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lc8/nBq;->time:J

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public triggerActions()V
    .locals 2

    .prologue
    .line 107
    iget-wide v0, p0, Lc8/nBq;->time:J

    invoke-direct {p0, v0, v1}, Lc8/nBq;->triggerActions(J)V

    .line 108
    return-void
.end method
