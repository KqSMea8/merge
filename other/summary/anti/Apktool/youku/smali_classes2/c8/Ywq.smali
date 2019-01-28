.class public final Lc8/Ywq;
.super Lc8/amq;
.source "EventLoopsScheduler.java"

# interfaces
.implements Lc8/lxq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Xwq;,
        Lc8/Vwq;,
        Lc8/Wwq;
    }
.end annotation


# static fields
.field static final KEY_MAX_THREADS:Ljava/lang/String; = "rx.scheduler.max-computation-threads"

.field static final MAX_THREADS:I

.field static final NONE:Lc8/Wwq;

.field static final SHUTDOWN_WORKER:Lc8/Xwq;


# instance fields
.field final pool:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lc8/Wwq;",
            ">;"
        }
    .end annotation
.end field

.field final threadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 35
    const-string/jumbo v3, "rx.scheduler.max-computation-threads"

    invoke-static {v3, v5}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 36
    .local v1, "maxThreads":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    .line 38
    .local v2, "ncpu":I
    if-lez v1, :cond_0

    if-le v1, v2, :cond_1

    .line 39
    :cond_0
    move v0, v2

    .line 43
    .local v0, "max":I
    :goto_0
    sput v0, Lc8/Ywq;->MAX_THREADS:I

    .line 48
    new-instance v3, Lc8/Xwq;

    sget-object v4, Lrx/internal/util/RxThreadFactory;->NONE:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v3, v4}, Lc8/Xwq;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    sput-object v3, Lc8/Ywq;->SHUTDOWN_WORKER:Lc8/Xwq;

    invoke-virtual {v3}, Lc8/Xwq;->unsubscribe()V

    .line 53
    new-instance v3, Lc8/Wwq;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v5}, Lc8/Wwq;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v3, Lc8/Ywq;->NONE:Lc8/Wwq;

    return-void

    .line 41
    .end local v0    # "max":I
    :cond_1
    move v0, v1

    .restart local v0    # "max":I
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2
    .param p1, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 95
    invoke-direct {p0}, Lc8/amq;-><init>()V

    .line 96
    iput-object p1, p0, Lc8/Ywq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lc8/Ywq;->NONE:Lc8/Wwq;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    invoke-virtual {p0}, Lc8/Ywq;->start()V

    .line 99
    return-void
.end method


# virtual methods
.method public createWorker()Lc8/Zlq;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lc8/Vwq;

    iget-object v0, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wwq;

    invoke-virtual {v0}, Lc8/Wwq;->getEventLoop()Lc8/Xwq;

    move-result-object v0

    invoke-direct {v1, v0}, Lc8/Vwq;-><init>(Lc8/Xwq;)V

    return-object v1
.end method

.method public scheduleDirect(Lc8/hnq;)Lc8/Pmq;
    .locals 4
    .param p1, "action"    # Lc8/hnq;

    .prologue
    .line 135
    iget-object v1, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/Wwq;

    invoke-virtual {v1}, Lc8/Wwq;->getEventLoop()Lc8/Xwq;

    move-result-object v0

    .line 136
    .local v0, "pw":Lc8/Xwq;
    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lc8/Xwq;->scheduleActual(Lc8/hnq;JLjava/util/concurrent/TimeUnit;)Lrx/internal/schedulers/ScheduledAction;

    move-result-object v1

    return-object v1
.end method

.method public shutdown()V
    .locals 3

    .prologue
    .line 117
    :cond_0
    iget-object v1, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc8/Wwq;

    .line 118
    .local v0, "curr":Lc8/Wwq;
    sget-object v1, Lc8/Ywq;->NONE:Lc8/Wwq;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lc8/Ywq;->NONE:Lc8/Wwq;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lc8/Wwq;->shutdown()V

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 108
    new-instance v0, Lc8/Wwq;

    iget-object v1, p0, Lc8/Ywq;->threadFactory:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lc8/Ywq;->MAX_THREADS:I

    invoke-direct {v0, v1, v2}, Lc8/Wwq;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    .line 109
    .local v0, "update":Lc8/Wwq;
    iget-object v1, p0, Lc8/Ywq;->pool:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lc8/Ywq;->NONE:Lc8/Wwq;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    invoke-virtual {v0}, Lc8/Wwq;->shutdown()V

    .line 112
    :cond_0
    return-void
.end method
