.class public Lc8/yEb;
.super Ljava/lang/Object;
.source "ReuseItemPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lc8/xEb;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static poolSize:J

.field private static totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

.field private static totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final MAX_ITEM_COUNT:I

.field private hashCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

.field private items:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<TT;>;"
        }
    .end annotation
.end field

.field private objectSize:Ljava/lang/Integer;

.field private pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lc8/yEb;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lc8/yEb;->totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    const-wide/16 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/16 v0, 0x14

    iput v0, p0, Lc8/yEb;->MAX_ITEM_COUNT:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/yEb;->objectSize:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/yEb;->invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lc8/yEb;->pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lc8/yEb;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc8/yEb;->hashCodes:Ljava/util/Set;

    .line 59
    return-void
.end method

.method public static reset(J)V
    .locals 4
    .param p0, "poolSize"    # J

    .prologue
    .line 49
    sput-wide p0, Lc8/yEb;->poolSize:J

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lc8/yEb;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    return-void
.end method


# virtual methods
.method public offer(Lc8/xEb;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    .local p1, "t":Lc8/xEb;, "TT;"
    invoke-interface {p1}, Lc8/xEb;->clean()V

    .line 75
    iget-object v1, p0, Lc8/yEb;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 76
    iget-object v2, p0, Lc8/yEb;->hashCodes:Ljava/util/Set;

    monitor-enter v2

    .line 77
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 78
    .local v0, "hoseCode":I
    iget-object v1, p0, Lc8/yEb;->hashCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 79
    iget-object v1, p0, Lc8/yEb;->hashCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, p0, Lc8/yEb;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 82
    :cond_0
    monitor-exit v2

    .line 84
    .end local v0    # "hoseCode":I
    :cond_1
    return-void

    .line 82
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public poll()Lc8/xEb;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, "this":Lc8/yEb;, "Lcom/alibaba/appmonitor/pool/ReuseItemPool<TT;>;"
    sget-object v1, Lc8/yEb;->totalInvokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 63
    iget-object v1, p0, Lc8/yEb;->invokeTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 64
    iget-object v1, p0, Lc8/yEb;->items:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/xEb;

    .line 65
    .local v0, "item":Lc8/xEb;, "TT;"
    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lc8/yEb;->hashCodes:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lc8/yEb;->pollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 68
    sget-object v1, Lc8/yEb;->totalPollSuccessTimes:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    .line 70
    :cond_0
    return-object v0
.end method
