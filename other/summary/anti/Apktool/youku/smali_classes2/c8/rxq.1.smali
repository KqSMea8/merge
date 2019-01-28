.class public Lc8/rxq;
.super Ljava/lang/Object;
.source "SleepingAction.java"

# interfaces
.implements Lc8/hnq;


# instance fields
.field private final execTime:J

.field private final innerScheduler:Lc8/Zlq;

.field private final underlying:Lc8/hnq;


# direct methods
.method public constructor <init>(Lc8/hnq;Lc8/Zlq;J)V
    .locals 1
    .param p1, "underlying"    # Lc8/hnq;
    .param p2, "scheduler"    # Lc8/Zlq;
    .param p3, "execTime"    # J

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lc8/rxq;->underlying:Lc8/hnq;

    .line 29
    iput-object p2, p0, Lc8/rxq;->innerScheduler:Lc8/Zlq;

    .line 30
    iput-wide p3, p0, Lc8/rxq;->execTime:J

    .line 31
    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .prologue
    .line 35
    iget-object v3, p0, Lc8/rxq;->innerScheduler:Lc8/Zlq;

    invoke-virtual {v3}, Lc8/Zlq;->isUnsubscribed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-wide v4, p0, Lc8/rxq;->execTime:J

    iget-object v3, p0, Lc8/rxq;->innerScheduler:Lc8/Zlq;

    invoke-virtual {v3}, Lc8/Zlq;->now()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 40
    .local v0, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_2

    .line 42
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_2
    :goto_1
    iget-object v3, p0, Lc8/rxq;->innerScheduler:Lc8/Zlq;

    invoke-virtual {v3}, Lc8/Zlq;->isUnsubscribed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lc8/rxq;->underlying:Lc8/hnq;

    invoke-interface {v3}, Lc8/hnq;->call()V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v2

    .line 44
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 45
    invoke-static {v2}, Lc8/fnq;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_1
.end method
