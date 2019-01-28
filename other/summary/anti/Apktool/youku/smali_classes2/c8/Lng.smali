.class public Lc8/Lng;
.super Ljava/lang/Object;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Kng;
    }
.end annotation


# instance fields
.field private mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc8/Lng;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    return-void
.end method

.method synthetic constructor <init>(Lc8/Jng;)V
    .locals 0
    .param p1, "x0"    # Lc8/Jng;

    .prologue
    .line 15
    invoke-direct {p0}, Lc8/Lng;-><init>()V

    return-void
.end method

.method private checkAndCreateExecutor()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 44
    iget-object v1, p0, Lc8/Lng;->mIsStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    :goto_0
    return-void

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    new-instance v3, Lc8/Jng;

    invoke-direct {v3, p0}, Lc8/Jng;-><init>(Lc8/Lng;)V

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lc8/Lng;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 56
    iget-object v1, p0, Lc8/Lng;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-wide/16 v2, 0x1e

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 57
    iget-object v1, p0, Lc8/Lng;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/log;->exception(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static instance()Lc8/Lng;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lc8/Kng;->access$100()Lc8/Lng;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lc8/Lng;->executeDelay(Ljava/lang/Runnable;J)V

    .line 35
    return-void
.end method

.method public executeDelay(Ljava/lang/Runnable;J)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .prologue
    .line 38
    invoke-direct {p0}, Lc8/Lng;->checkAndCreateExecutor()V

    .line 39
    iget-object v0, p0, Lc8/Lng;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lc8/Lng;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method
