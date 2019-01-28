.class public final Lc8/txq;
.super Lc8/Zlq;
.source "TrampolineScheduler.java"

# interfaces
.implements Lc8/Pmq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/vxq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InnerCurrentThreadScheduler"
.end annotation


# instance fields
.field final counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final innerSubscription:Lc8/RBq;

.field final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue",
            "<",
            "Lc8/uxq;",
            ">;"
        }
    .end annotation
.end field

.field private final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lc8/Zlq;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/txq;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    iput-object v0, p0, Lc8/txq;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 47
    new-instance v0, Lc8/RBq;

    invoke-direct {v0}, Lc8/RBq;-><init>()V

    iput-object v0, p0, Lc8/txq;->innerSubscription:Lc8/RBq;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc8/txq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private enqueue(Lc8/hnq;J)Lc8/Pmq;
    .locals 4
    .param p1, "action"    # Lc8/hnq;
    .param p2, "execTime"    # J

    .prologue
    .line 63
    iget-object v2, p0, Lc8/txq;->innerSubscription:Lc8/RBq;

    invoke-virtual {v2}, Lc8/RBq;->isUnsubscribed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 64
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    .line 79
    :goto_0
    return-object v2

    .line 66
    :cond_0
    new-instance v1, Lc8/uxq;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lc8/txq;->counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-direct {v1, p1, v2, v3}, Lc8/uxq;-><init>(Lc8/hnq;Ljava/lang/Long;I)V

    .line 67
    .local v1, "timedAction":Lc8/uxq;
    iget-object v2, p0, Lc8/txq;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v2, p0, Lc8/txq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    if-nez v2, :cond_3

    .line 71
    :cond_1
    iget-object v2, p0, Lc8/txq;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/PriorityBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/uxq;

    .line 72
    .local v0, "polled":Lc8/uxq;
    if-eqz v0, :cond_2

    .line 73
    iget-object v2, v0, Lc8/uxq;->action:Lc8/hnq;

    invoke-interface {v2}, Lc8/hnq;->call()V

    .line 75
    :cond_2
    iget-object v2, p0, Lc8/txq;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-gtz v2, :cond_1

    .line 76
    invoke-static {}, Lc8/bCq;->unsubscribed()Lc8/Pmq;

    move-result-object v2

    goto :goto_0

    .line 79
    .end local v0    # "polled":Lc8/uxq;
    :cond_3
    new-instance v2, Lc8/sxq;

    invoke-direct {v2, p0, v1}, Lc8/sxq;-><init>(Lc8/txq;Lc8/uxq;)V

    invoke-static {v2}, Lc8/bCq;->create(Lc8/hnq;)Lc8/Pmq;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lc8/txq;->innerSubscription:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lc8/hnq;)Lc8/Pmq;
    .locals 2
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 52
    invoke-virtual {p0}, Lc8/txq;->now()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lc8/txq;->enqueue(Lc8/hnq;J)Lc8/Pmq;

    move-result-object v0

    return-object v0
.end method

.method public schedule(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lc8/Pmq;
    .locals 6
    .param p1, "action"    # Lc8/hnq;
    .param p2, "delayTime"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .prologue
    .line 57
    invoke-virtual {p0}, Lc8/txq;->now()J

    move-result-wide v2

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long v0, v2, v4

    .line 59
    .local v0, "execTime":J
    new-instance v2, Lc8/rxq;

    invoke-direct {v2, p1, p0, v0, v1}, Lc8/rxq;-><init>(Lc8/hnq;Lc8/Zlq;J)V

    invoke-direct {p0, v2, v0, v1}, Lc8/txq;->enqueue(Lc8/hnq;J)Lc8/Pmq;

    move-result-object v2

    return-object v2
.end method

.method public unsubscribe()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lc8/txq;->innerSubscription:Lc8/RBq;

    invoke-virtual {v0}, Lc8/RBq;->unsubscribe()V

    .line 93
    return-void
.end method
